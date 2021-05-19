// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// AES Canright SBox #4
//
// For details, see the technical report: Canright, "A very compact Rijndael S-box"
// available at https://hdl.handle.net/10945/25608

module aes_sbox_canright (
  input  logic [7:0]        data_i,
  output logic [7:0]        data_o,
  output logic [3:0]        test1,
  output logic [3:0]        test2,
  output logic [3:0]        test3,
  output logic [1:0]        test4,
  output logic [1:0]        test5,
  output logic [1:0]        test6
);

  // Matrix-vector multiplication in GF(2^8): c = A * b
  function automatic logic [7:0] aes_mvm(
    logic [7:0] vec_b,
    logic [7:0] mat_a [8]
  );
    logic [7:0] vec_c;
    vec_c = '0;
    for (int i=0; i<8; i++) begin
      for (int j=0; j<8; j++) begin
        vec_c[i] = vec_c[i] ^ (mat_a[j][i] & vec_b[7-j]);
      end
    end
    return vec_c;
  endfunction

  // Multiplication in GF(2^2), using normal basis [Omega^2, Omega]
  // (see Figure 14 in the technical report)
  function automatic logic [1:0] aes_mul_gf2p2(logic [1:0] g, logic [1:0] d);
    logic [1:0] f;
    logic       a, b, c;
    a    = g[1] & d[1];
    b    = (^g) & (^d);
    c    = g[0] & d[0];
    f[1] = a ^ b;
    f[0] = c ^ b;
    return f;
  endfunction

  // Scale by Omega^2 = N in GF(2^2), using normal basis [Omega^2, Omega]
  // (see Figure 16 in the technical report)
  function automatic logic [1:0] aes_scale_omega2_gf2p2(logic [1:0] g);
    logic [1:0] d;
    d[1] = g[0];
    d[0] = g[1] ^ g[0];
    return d;
  endfunction

  // Scale by Omega = N^2 in GF(2^2), using normal basis [Omega^2, Omega]
  // (see Figure 15 in the technical report)
  function automatic logic [1:0] aes_scale_omega_gf2p2(logic [1:0] g);
    logic [1:0] d;
    d[1] = g[1] ^ g[0];
    d[0] = g[1];
    return d;
  endfunction

  // Square in GF(2^2), using normal basis [Omega^2, Omega]
  // (see Figures 8 and 10 in the technical report)
  function automatic logic [1:0] aes_square_gf2p2(logic [1:0] g);
    logic [1:0] d;
    d[1] = g[0];
    d[0] = g[1];
    return d;
  endfunction

  // Multiplication in GF(2^4), using normal basis [alpha^8, alpha^2]
  // (see Figure 13 in the technical report)
  function automatic logic [3:0] aes_mul_gf2p4(logic [3:0] gamma, logic [3:0] delta);
    logic [3:0] theta;
    logic [1:0] a, b, c;
    a          = aes_mul_gf2p2(gamma[3:2], delta[3:2]);
    b          = aes_mul_gf2p2(gamma[3:2] ^ gamma[1:0], delta[3:2] ^ delta[1:0]);
    c          = aes_mul_gf2p2(gamma[1:0], delta[1:0]);
    theta[3:2] = a ^ aes_scale_omega2_gf2p2(b);
    theta[1:0] = c ^ aes_scale_omega2_gf2p2(b);
    return theta;
  endfunction

  // Square and scale by nu in GF(2^4)/GF(2^2), using normal basis [alpha^8, alpha^2]
  // (see Figure 19 as well as Appendix A of the technical report)
  function automatic logic [3:0] aes_square_scale_gf2p4_gf2p2(logic [3:0] gamma);
    logic [3:0] delta;
    logic [1:0] a, b;
    a          = gamma[3:2] ^ gamma[1:0];
    b          = aes_square_gf2p2(gamma[1:0]);
    delta[3:2] = aes_square_gf2p2(a);
    delta[1:0] = aes_scale_omega_gf2p2(b);
    return delta;
  endfunction

  // Basis conversion matrices to convert between polynomial basis A, normal basis X
  // and basis S incorporating the bit matrix of the SBox. More specifically,
  // multiplication by X2X performs the transformation from normal basis X into
  // polynomial basis A, followed by the affine transformation (substep 2). Likewise,
  // multiplication by S2X performs the inverse affine transformation followed by the
  // transformation from polynomial basis A to normal basis X.
  // (see Appendix A of the technical report)
  parameter logic [7:0] A2X [8] = '{8'h98, 8'hf3, 8'hf2, 8'h48, 8'h09, 8'h81, 8'ha9, 8'hff};
  parameter logic [7:0] X2A [8] = '{8'h64, 8'h78, 8'h6e, 8'h8c, 8'h68, 8'h29, 8'hde, 8'h60};
  parameter logic [7:0] X2S [8] = '{8'h58, 8'h2d, 8'h9e, 8'h0b, 8'hdc, 8'h04, 8'h03, 8'h24};
  parameter logic [7:0] S2X [8] = '{8'h8c, 8'h79, 8'h05, 8'heb, 8'h12, 8'h04, 8'h51, 8'h53};

  ///////////////
  // Functions //
  ///////////////

  // Inverse in GF(2^4), using normal basis [alpha^8, alpha^2]
  // (see Figure 12 in the technical report)
  function automatic logic [3:0] aes_inverse_gf2p4(logic [3:0] gamma);
    logic [3:0] delta;
    logic [1:0] a, b, c, d;
    a          = gamma[3:2] ^ gamma[1:0];
    b          = aes_mul_gf2p2(gamma[3:2], gamma[1:0]);
    c          = aes_scale_omega2_gf2p2(aes_square_gf2p2(a));
    d          = aes_square_gf2p2(c ^ b);
    delta[3:2] = aes_mul_gf2p2(d, gamma[1:0]);
    delta[1:0] = aes_mul_gf2p2(d, gamma[3:2]);
    return delta;
  endfunction

  // Inverse in GF(2^8), using normal basis [d^16, d]
  // (see Figure 11 in the technical report)
  function automatic logic [7:0] aes_inverse_gf2p8(logic [7:0] gamma);
    logic [7:0] delta;
    logic [3:0] a, b, c, d;
    a          = gamma[7:4] ^ gamma[3:0];
    b          = aes_mul_gf2p4(gamma[7:4], gamma[3:0]);
    c          = aes_square_scale_gf2p4_gf2p2(a);
    d          = aes_inverse_gf2p4(c ^ b);
    delta[7:4] = aes_mul_gf2p4(d, gamma[3:0]);
    delta[3:0] = aes_mul_gf2p4(d, gamma[7:4]);
    return delta;
  endfunction

  ///////////////////
  // Canright SBox //
  ///////////////////

  logic [7:0] data_basis_x, data_inverse;

  // Convert to normal basis X.
  assign data_basis_x = aes_mvm(data_i, A2X);

  // Do the inversion in normal basis X.
  assign data_inverse = aes_inverse_gf2p8(data_basis_x);
  assign test1 = aes_inverse_gf2p4(data_i[3:0]);
  assign test2 = aes_square_scale_gf2p4_gf2p2(data_i[3:0]);
  assign test3 = aes_mul_gf2p4(data_i[7:4], data_i[3:0]);
  assign test4 = aes_square_gf2p2(data_i[1:0]);
  assign test5 = aes_scale_omega_gf2p2(data_i[1:0]);
  assign test6 = aes_mul_gf2p2(data_i[3:2], data_i[1:0]);

  // Convert to basis S or A.
  assign data_o       = aes_mvm(data_inverse, X2S) ^ 8'h63;

endmodule
