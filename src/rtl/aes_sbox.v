//======================================================================
//
// aes_sbox.v
// ----------
// Replace this with the implementation of whatever stuff is needed
//
//======================================================================

/// Generated with MODEL=sboxCanright PROJECT=olinguitochip.platform.cores.olinguito.processor.instances.sbox_aes.canright
module sboxCanright_in_aes_sbox(
  input        clock,
  input        reset,
  input  [7:0] io_A,
  output [7:0] io_B,
  output [7:0] io_test1,
  output [7:0] io_test2,
  output [7:0] io_test3,
  output [7:0] io_test4,
  output [7:0] io_test5,
  output [7:0] io_test6
);
  wire [7:0] _T_3; // @[Bitwise.scala 103:31]
  wire [7:0] _T_5; // @[Bitwise.scala 103:65]
  wire [7:0] _T_7; // @[Bitwise.scala 103:75]
  wire [7:0] _T_8; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_0; // @[Bitwise.scala 103:31]
  wire [7:0] _T_13; // @[Bitwise.scala 103:31]
  wire [7:0] _T_15; // @[Bitwise.scala 103:65]
  wire [7:0] _T_17; // @[Bitwise.scala 103:75]
  wire [7:0] _T_18; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_1; // @[Bitwise.scala 103:31]
  wire [7:0] _T_23; // @[Bitwise.scala 103:31]
  wire [7:0] _T_25; // @[Bitwise.scala 103:65]
  wire [7:0] _T_27; // @[Bitwise.scala 103:75]
  wire [7:0] _T_28; // @[Bitwise.scala 103:39]
  wire  _T_48; // @[lib.scala 60:26]
  wire  _T_49; // @[lib.scala 60:26]
  wire  _T_50; // @[lib.scala 60:26]
  wire  _T_51; // @[lib.scala 60:26]
  wire  _T_61; // @[lib.scala 60:26]
  wire  _T_66; // @[lib.scala 60:26]
  wire  _T_92; // @[lib.scala 60:26]
  wire  _T_93; // @[lib.scala 60:26]
  wire  _T_95; // @[lib.scala 60:26]
  wire  _T_96; // @[lib.scala 60:26]
  wire  _T_105; // @[lib.scala 60:26]
  wire  _T_106; // @[lib.scala 60:26]
  wire  _T_111; // @[lib.scala 60:26]
  wire  _T_125; // @[lib.scala 60:26]
  wire  _T_126; // @[lib.scala 60:26]
  wire  _T_137; // @[lib.scala 60:26]
  wire  _T_141; // @[lib.scala 60:26]
  wire  _T_154; // @[lib.scala 60:26]
  wire  _T_155; // @[lib.scala 60:26]
  wire  _T_156; // @[lib.scala 60:26]
  wire [7:0] data_basis_x; // @[lib.scala 63:17]
  wire [3:0] _T_166; // @[sbox.scala 34:24]
  wire  _T_173; // @[lib.scala 14:18]
  wire  _T_176; // @[lib.scala 15:19]
  wire  _T_179; // @[lib.scala 15:35]
  wire  _T_180; // @[lib.scala 15:27]
  wire  _T_183; // @[lib.scala 16:18]
  wire  _T_184; // @[lib.scala 17:11]
  wire  _T_185; // @[lib.scala 17:18]
  wire [1:0] _T_186; // @[Cat.scala 29:58]
  wire [1:0] _T_189; // @[lib.scala 34:38]
  wire [1:0] _T_192; // @[lib.scala 34:63]
  wire  _T_195; // @[lib.scala 14:18]
  wire  _T_198; // @[lib.scala 15:19]
  wire  _T_201; // @[lib.scala 15:35]
  wire  _T_202; // @[lib.scala 15:27]
  wire  _T_205; // @[lib.scala 16:18]
  wire  _T_206; // @[lib.scala 17:11]
  wire  _T_207; // @[lib.scala 17:18]
  wire [1:0] _T_208; // @[Cat.scala 29:58]
  wire  _T_213; // @[lib.scala 14:18]
  wire  _T_216; // @[lib.scala 15:19]
  wire  _T_219; // @[lib.scala 15:35]
  wire  _T_220; // @[lib.scala 15:27]
  wire  _T_223; // @[lib.scala 16:18]
  wire  _T_224; // @[lib.scala 17:11]
  wire  _T_225; // @[lib.scala 17:18]
  wire [1:0] _T_226; // @[Cat.scala 29:58]
  wire  _T_230; // @[lib.scala 21:20]
  wire [1:0] _T_231; // @[Cat.scala 29:58]
  wire [1:0] _T_232; // @[lib.scala 36:11]
  wire [1:0] _T_238; // @[lib.scala 36:42]
  wire [3:0] _T_239; // @[Cat.scala 29:58]
  wire [1:0] _T_242; // @[lib.scala 40:24]
  wire [1:0] _T_246; // @[Cat.scala 29:58]
  wire  _T_252; // @[lib.scala 25:14]
  wire [3:0] _T_255; // @[Cat.scala 29:58]
  wire [3:0] _T_256; // @[sbox.scala 37:33]
  wire [1:0] _T_259; // @[sbox.scala 23:24]
  wire  _T_264; // @[lib.scala 14:18]
  wire  _T_267; // @[lib.scala 15:19]
  wire  _T_270; // @[lib.scala 15:35]
  wire  _T_271; // @[lib.scala 15:27]
  wire  _T_274; // @[lib.scala 16:18]
  wire  _T_275; // @[lib.scala 17:11]
  wire  _T_276; // @[lib.scala 17:18]
  wire [1:0] _T_277; // @[Cat.scala 29:58]
  wire [1:0] _T_280; // @[Cat.scala 29:58]
  wire  _T_284; // @[lib.scala 21:20]
  wire [1:0] _T_285; // @[Cat.scala 29:58]
  wire [1:0] _T_286; // @[sbox.scala 26:32]
  wire [1:0] _T_289; // @[Cat.scala 29:58]
  wire  _T_293; // @[lib.scala 14:18]
  wire  _T_296; // @[lib.scala 15:19]
  wire  _T_300; // @[lib.scala 15:27]
  wire  _T_303; // @[lib.scala 16:18]
  wire  _T_304; // @[lib.scala 17:11]
  wire  _T_305; // @[lib.scala 17:18]
  wire  _T_310; // @[lib.scala 14:18]
  wire  _T_317; // @[lib.scala 15:27]
  wire  _T_320; // @[lib.scala 16:18]
  wire  _T_321; // @[lib.scala 17:11]
  wire  _T_322; // @[lib.scala 17:18]
  wire [3:0] _T_324; // @[Cat.scala 29:58]
  wire  _T_330; // @[lib.scala 14:18]
  wire  _T_333; // @[lib.scala 15:19]
  wire  _T_337; // @[lib.scala 15:27]
  wire  _T_340; // @[lib.scala 16:18]
  wire  _T_341; // @[lib.scala 17:11]
  wire  _T_342; // @[lib.scala 17:18]
  wire [1:0] _T_343; // @[Cat.scala 29:58]
  wire [1:0] _T_346; // @[lib.scala 34:38]
  wire  _T_352; // @[lib.scala 14:18]
  wire  _T_355; // @[lib.scala 15:19]
  wire  _T_359; // @[lib.scala 15:27]
  wire  _T_362; // @[lib.scala 16:18]
  wire  _T_363; // @[lib.scala 17:11]
  wire  _T_364; // @[lib.scala 17:18]
  wire [1:0] _T_365; // @[Cat.scala 29:58]
  wire  _T_370; // @[lib.scala 14:18]
  wire  _T_373; // @[lib.scala 15:19]
  wire  _T_377; // @[lib.scala 15:27]
  wire  _T_380; // @[lib.scala 16:18]
  wire  _T_381; // @[lib.scala 17:11]
  wire  _T_382; // @[lib.scala 17:18]
  wire [1:0] _T_383; // @[Cat.scala 29:58]
  wire  _T_387; // @[lib.scala 21:20]
  wire [1:0] _T_388; // @[Cat.scala 29:58]
  wire [1:0] _T_389; // @[lib.scala 36:11]
  wire [1:0] _T_395; // @[lib.scala 36:42]
  wire  _T_402; // @[lib.scala 14:18]
  wire  _T_409; // @[lib.scala 15:27]
  wire  _T_412; // @[lib.scala 16:18]
  wire  _T_413; // @[lib.scala 17:11]
  wire  _T_414; // @[lib.scala 17:18]
  wire [1:0] _T_415; // @[Cat.scala 29:58]
  wire  _T_424; // @[lib.scala 14:18]
  wire  _T_431; // @[lib.scala 15:27]
  wire  _T_434; // @[lib.scala 16:18]
  wire  _T_435; // @[lib.scala 17:11]
  wire  _T_436; // @[lib.scala 17:18]
  wire [1:0] _T_437; // @[Cat.scala 29:58]
  wire  _T_442; // @[lib.scala 14:18]
  wire  _T_449; // @[lib.scala 15:27]
  wire  _T_452; // @[lib.scala 16:18]
  wire  _T_453; // @[lib.scala 17:11]
  wire  _T_454; // @[lib.scala 17:18]
  wire [1:0] _T_455; // @[Cat.scala 29:58]
  wire  _T_459; // @[lib.scala 21:20]
  wire [1:0] _T_460; // @[Cat.scala 29:58]
  wire [1:0] _T_461; // @[lib.scala 36:11]
  wire [1:0] _T_467; // @[lib.scala 36:42]
  wire [7:0] data_inverse; // @[Cat.scala 29:58]
  wire [1:0] _T_472; // @[sbox.scala 23:24]
  wire  _T_477; // @[lib.scala 14:18]
  wire  _T_480; // @[lib.scala 15:19]
  wire  _T_483; // @[lib.scala 15:35]
  wire  _T_484; // @[lib.scala 15:27]
  wire  _T_487; // @[lib.scala 16:18]
  wire  _T_488; // @[lib.scala 17:11]
  wire  _T_489; // @[lib.scala 17:18]
  wire [1:0] _T_490; // @[Cat.scala 29:58]
  wire [1:0] _T_493; // @[Cat.scala 29:58]
  wire  _T_497; // @[lib.scala 21:20]
  wire [1:0] _T_498; // @[Cat.scala 29:58]
  wire [1:0] _T_499; // @[sbox.scala 26:32]
  wire [1:0] _T_502; // @[Cat.scala 29:58]
  wire  _T_506; // @[lib.scala 14:18]
  wire  _T_509; // @[lib.scala 15:19]
  wire  _T_513; // @[lib.scala 15:27]
  wire  _T_516; // @[lib.scala 16:18]
  wire  _T_517; // @[lib.scala 17:11]
  wire  _T_518; // @[lib.scala 17:18]
  wire  _T_523; // @[lib.scala 14:18]
  wire  _T_530; // @[lib.scala 15:27]
  wire  _T_533; // @[lib.scala 16:18]
  wire  _T_534; // @[lib.scala 17:11]
  wire  _T_535; // @[lib.scala 17:18]
  wire [3:0] _T_537; // @[Cat.scala 29:58]
  wire [1:0] _T_545; // @[Cat.scala 29:58]
  wire  _T_551; // @[lib.scala 25:14]
  wire [3:0] _T_554; // @[Cat.scala 29:58]
  wire  _T_561; // @[lib.scala 14:18]
  wire  _T_564; // @[lib.scala 15:19]
  wire  _T_568; // @[lib.scala 15:27]
  wire  _T_571; // @[lib.scala 16:18]
  wire  _T_572; // @[lib.scala 17:11]
  wire  _T_573; // @[lib.scala 17:18]
  wire [1:0] _T_574; // @[Cat.scala 29:58]
  wire [1:0] _T_577; // @[lib.scala 34:38]
  wire  _T_583; // @[lib.scala 14:18]
  wire  _T_586; // @[lib.scala 15:19]
  wire  _T_589; // @[lib.scala 15:35]
  wire  _T_590; // @[lib.scala 15:27]
  wire  _T_593; // @[lib.scala 16:18]
  wire  _T_594; // @[lib.scala 17:11]
  wire  _T_595; // @[lib.scala 17:18]
  wire [1:0] _T_596; // @[Cat.scala 29:58]
  wire  _T_601; // @[lib.scala 14:18]
  wire  _T_604; // @[lib.scala 15:19]
  wire  _T_608; // @[lib.scala 15:27]
  wire  _T_611; // @[lib.scala 16:18]
  wire  _T_612; // @[lib.scala 17:11]
  wire  _T_613; // @[lib.scala 17:18]
  wire [1:0] _T_614; // @[Cat.scala 29:58]
  wire  _T_618; // @[lib.scala 21:20]
  wire [1:0] _T_619; // @[Cat.scala 29:58]
  wire [1:0] _T_620; // @[lib.scala 36:11]
  wire [1:0] _T_626; // @[lib.scala 36:42]
  wire [3:0] _T_627; // @[Cat.scala 29:58]
  wire [1:0] _T_631; // @[Cat.scala 29:58]
  wire  _T_635; // @[lib.scala 25:14]
  wire [1:0] _T_637; // @[Cat.scala 29:58]
  wire  _T_642; // @[lib.scala 14:18]
  wire  _T_645; // @[lib.scala 15:19]
  wire  _T_649; // @[lib.scala 15:27]
  wire  _T_652; // @[lib.scala 16:18]
  wire  _T_653; // @[lib.scala 17:11]
  wire  _T_654; // @[lib.scala 17:18]
  wire [1:0] _T_655; // @[Cat.scala 29:58]
  wire [7:0] _T_659; // @[Bitwise.scala 103:31]
  wire [7:0] _T_661; // @[Bitwise.scala 103:65]
  wire [7:0] _T_663; // @[Bitwise.scala 103:75]
  wire [7:0] _T_664; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_2; // @[Bitwise.scala 103:31]
  wire [7:0] _T_669; // @[Bitwise.scala 103:31]
  wire [7:0] _T_671; // @[Bitwise.scala 103:65]
  wire [7:0] _T_673; // @[Bitwise.scala 103:75]
  wire [7:0] _T_674; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_3; // @[Bitwise.scala 103:31]
  wire [7:0] _T_679; // @[Bitwise.scala 103:31]
  wire [7:0] _T_681; // @[Bitwise.scala 103:65]
  wire [7:0] _T_683; // @[Bitwise.scala 103:75]
  wire [7:0] _T_684; // @[Bitwise.scala 103:39]
  wire  _T_703; // @[lib.scala 60:26]
  wire  _T_706; // @[lib.scala 60:26]
  wire  _T_718; // @[lib.scala 60:26]
  wire  _T_721; // @[lib.scala 60:26]
  wire  _T_732; // @[lib.scala 60:26]
  wire  _T_734; // @[lib.scala 60:26]
  wire  _T_735; // @[lib.scala 60:26]
  wire  _T_737; // @[lib.scala 60:26]
  wire  _T_746; // @[lib.scala 60:26]
  wire  _T_747; // @[lib.scala 60:26]
  wire  _T_748; // @[lib.scala 60:26]
  wire  _T_749; // @[lib.scala 60:26]
  wire  _T_762; // @[lib.scala 60:26]
  wire  _T_764; // @[lib.scala 60:26]
  wire  _T_782; // @[lib.scala 60:26]
  wire  _T_794; // @[lib.scala 60:26]
  wire  _T_809; // @[lib.scala 60:26]
  wire [7:0] _T_820; // @[lib.scala 63:17]
  assign _T_3 = {{4'd0}, io_A[7:4]}; // @[Bitwise.scala 103:31]
  assign _T_5 = {io_A[3:0], 4'h0}; // @[Bitwise.scala 103:65]
  assign _T_7 = _T_5 & 8'hf0; // @[Bitwise.scala 103:75]
  assign _T_8 = _T_3 | _T_7; // @[Bitwise.scala 103:39]
  assign _GEN_0 = {{2'd0}, _T_8[7:2]}; // @[Bitwise.scala 103:31]
  assign _T_13 = _GEN_0 & 8'h33; // @[Bitwise.scala 103:31]
  assign _T_15 = {_T_8[5:0], 2'h0}; // @[Bitwise.scala 103:65]
  assign _T_17 = _T_15 & 8'hcc; // @[Bitwise.scala 103:75]
  assign _T_18 = _T_13 | _T_17; // @[Bitwise.scala 103:39]
  assign _GEN_1 = {{1'd0}, _T_18[7:1]}; // @[Bitwise.scala 103:31]
  assign _T_23 = _GEN_1 & 8'h55; // @[Bitwise.scala 103:31]
  assign _T_25 = {_T_18[6:0], 1'h0}; // @[Bitwise.scala 103:65]
  assign _T_27 = _T_25 & 8'haa; // @[Bitwise.scala 103:75]
  assign _T_28 = _T_23 | _T_27; // @[Bitwise.scala 103:39]
  assign _T_48 = _T_28[1] ^ _T_28[4]; // @[lib.scala 60:26]
  assign _T_49 = _T_48 ^ _T_28[5]; // @[lib.scala 60:26]
  assign _T_50 = _T_49 ^ _T_28[6]; // @[lib.scala 60:26]
  assign _T_51 = _T_50 ^ _T_28[7]; // @[lib.scala 60:26]
  assign _T_61 = _T_28[1] ^ _T_28[2]; // @[lib.scala 60:26]
  assign _T_66 = _T_61 ^ _T_28[7]; // @[lib.scala 60:26]
  assign _T_92 = _T_28[0] ^ _T_28[3]; // @[lib.scala 60:26]
  assign _T_93 = _T_92 ^ _T_28[4]; // @[lib.scala 60:26]
  assign _T_95 = _T_93 ^ _T_28[6]; // @[lib.scala 60:26]
  assign _T_96 = _T_95 ^ _T_28[7]; // @[lib.scala 60:26]
  assign _T_105 = _T_28[0] ^ _T_28[1]; // @[lib.scala 60:26]
  assign _T_106 = _T_105 ^ _T_28[2]; // @[lib.scala 60:26]
  assign _T_111 = _T_106 ^ _T_28[7]; // @[lib.scala 60:26]
  assign _T_125 = _T_61 ^ _T_28[6]; // @[lib.scala 60:26]
  assign _T_126 = _T_125 ^ _T_28[7]; // @[lib.scala 60:26]
  assign _T_137 = _T_61 ^ _T_28[3]; // @[lib.scala 60:26]
  assign _T_141 = _T_137 ^ _T_28[7]; // @[lib.scala 60:26]
  assign _T_154 = _T_106 ^ _T_28[5]; // @[lib.scala 60:26]
  assign _T_155 = _T_154 ^ _T_28[6]; // @[lib.scala 60:26]
  assign _T_156 = _T_155 ^ _T_28[7]; // @[lib.scala 60:26]
  assign data_basis_x = {_T_156,_T_141,_T_126,_T_111,_T_96,_T_28[7],_T_66,_T_51}; // @[lib.scala 63:17]
  assign _T_166 = data_basis_x[7:4] ^ data_basis_x[3:0]; // @[sbox.scala 34:24]
  assign _T_173 = data_basis_x[7] & data_basis_x[3]; // @[lib.scala 14:18]
  assign _T_176 = data_basis_x[7] ^ data_basis_x[6]; // @[lib.scala 15:19]
  assign _T_179 = data_basis_x[3] ^ data_basis_x[2]; // @[lib.scala 15:35]
  assign _T_180 = _T_176 & _T_179; // @[lib.scala 15:27]
  assign _T_183 = data_basis_x[6] & data_basis_x[2]; // @[lib.scala 16:18]
  assign _T_184 = _T_173 ^ _T_180; // @[lib.scala 17:11]
  assign _T_185 = _T_183 ^ _T_180; // @[lib.scala 17:18]
  assign _T_186 = {_T_184,_T_185}; // @[Cat.scala 29:58]
  assign _T_189 = data_basis_x[7:6] ^ data_basis_x[5:4]; // @[lib.scala 34:38]
  assign _T_192 = data_basis_x[3:2] ^ data_basis_x[1:0]; // @[lib.scala 34:63]
  assign _T_195 = _T_189[1] & _T_192[1]; // @[lib.scala 14:18]
  assign _T_198 = _T_189[1] ^ _T_189[0]; // @[lib.scala 15:19]
  assign _T_201 = _T_192[1] ^ _T_192[0]; // @[lib.scala 15:35]
  assign _T_202 = _T_198 & _T_201; // @[lib.scala 15:27]
  assign _T_205 = _T_189[0] & _T_192[0]; // @[lib.scala 16:18]
  assign _T_206 = _T_195 ^ _T_202; // @[lib.scala 17:11]
  assign _T_207 = _T_205 ^ _T_202; // @[lib.scala 17:18]
  assign _T_208 = {_T_206,_T_207}; // @[Cat.scala 29:58]
  assign _T_213 = data_basis_x[5] & data_basis_x[1]; // @[lib.scala 14:18]
  assign _T_216 = data_basis_x[5] ^ data_basis_x[4]; // @[lib.scala 15:19]
  assign _T_219 = data_basis_x[1] ^ data_basis_x[0]; // @[lib.scala 15:35]
  assign _T_220 = _T_216 & _T_219; // @[lib.scala 15:27]
  assign _T_223 = data_basis_x[4] & data_basis_x[0]; // @[lib.scala 16:18]
  assign _T_224 = _T_213 ^ _T_220; // @[lib.scala 17:11]
  assign _T_225 = _T_223 ^ _T_220; // @[lib.scala 17:18]
  assign _T_226 = {_T_224,_T_225}; // @[Cat.scala 29:58]
  assign _T_230 = _T_208[1] ^ _T_208[0]; // @[lib.scala 21:20]
  assign _T_231 = {_T_208[0],_T_230}; // @[Cat.scala 29:58]
  assign _T_232 = _T_186 ^ _T_231; // @[lib.scala 36:11]
  assign _T_238 = _T_226 ^ _T_231; // @[lib.scala 36:42]
  assign _T_239 = {_T_232,_T_238}; // @[Cat.scala 29:58]
  assign _T_242 = _T_166[3:2] ^ _T_166[1:0]; // @[lib.scala 40:24]
  assign _T_246 = {_T_166[0],_T_166[1]}; // @[Cat.scala 29:58]
  assign _T_252 = _T_246[1] ^ _T_246[0]; // @[lib.scala 25:14]
  assign _T_255 = {_T_242[0],_T_242[1],_T_252,_T_246[1]}; // @[Cat.scala 29:58]
  assign _T_256 = _T_255 ^ _T_239; // @[sbox.scala 37:33]
  assign _T_259 = _T_256[3:2] ^ _T_256[1:0]; // @[sbox.scala 23:24]
  assign _T_264 = _T_256[3] & _T_256[1]; // @[lib.scala 14:18]
  assign _T_267 = _T_256[3] ^ _T_256[2]; // @[lib.scala 15:19]
  assign _T_270 = _T_256[1] ^ _T_256[0]; // @[lib.scala 15:35]
  assign _T_271 = _T_267 & _T_270; // @[lib.scala 15:27]
  assign _T_274 = _T_256[2] & _T_256[0]; // @[lib.scala 16:18]
  assign _T_275 = _T_264 ^ _T_271; // @[lib.scala 17:11]
  assign _T_276 = _T_274 ^ _T_271; // @[lib.scala 17:18]
  assign _T_277 = {_T_275,_T_276}; // @[Cat.scala 29:58]
  assign _T_280 = {_T_259[0],_T_259[1]}; // @[Cat.scala 29:58]
  assign _T_284 = _T_280[1] ^ _T_280[0]; // @[lib.scala 21:20]
  assign _T_285 = {_T_280[0],_T_284}; // @[Cat.scala 29:58]
  assign _T_286 = _T_285 ^ _T_277; // @[sbox.scala 26:32]
  assign _T_289 = {_T_286[0],_T_286[1]}; // @[Cat.scala 29:58]
  assign _T_293 = _T_289[1] & _T_256[1]; // @[lib.scala 14:18]
  assign _T_296 = _T_289[1] ^ _T_289[0]; // @[lib.scala 15:19]
  assign _T_300 = _T_296 & _T_270; // @[lib.scala 15:27]
  assign _T_303 = _T_289[0] & _T_256[0]; // @[lib.scala 16:18]
  assign _T_304 = _T_293 ^ _T_300; // @[lib.scala 17:11]
  assign _T_305 = _T_303 ^ _T_300; // @[lib.scala 17:18]
  assign _T_310 = _T_289[1] & _T_256[3]; // @[lib.scala 14:18]
  assign _T_317 = _T_296 & _T_267; // @[lib.scala 15:27]
  assign _T_320 = _T_289[0] & _T_256[2]; // @[lib.scala 16:18]
  assign _T_321 = _T_310 ^ _T_317; // @[lib.scala 17:11]
  assign _T_322 = _T_320 ^ _T_317; // @[lib.scala 17:18]
  assign _T_324 = {_T_304,_T_305,_T_321,_T_322}; // @[Cat.scala 29:58]
  assign _T_330 = _T_324[3] & data_basis_x[3]; // @[lib.scala 14:18]
  assign _T_333 = _T_324[3] ^ _T_324[2]; // @[lib.scala 15:19]
  assign _T_337 = _T_333 & _T_179; // @[lib.scala 15:27]
  assign _T_340 = _T_324[2] & data_basis_x[2]; // @[lib.scala 16:18]
  assign _T_341 = _T_330 ^ _T_337; // @[lib.scala 17:11]
  assign _T_342 = _T_340 ^ _T_337; // @[lib.scala 17:18]
  assign _T_343 = {_T_341,_T_342}; // @[Cat.scala 29:58]
  assign _T_346 = _T_324[3:2] ^ _T_324[1:0]; // @[lib.scala 34:38]
  assign _T_352 = _T_346[1] & _T_192[1]; // @[lib.scala 14:18]
  assign _T_355 = _T_346[1] ^ _T_346[0]; // @[lib.scala 15:19]
  assign _T_359 = _T_355 & _T_201; // @[lib.scala 15:27]
  assign _T_362 = _T_346[0] & _T_192[0]; // @[lib.scala 16:18]
  assign _T_363 = _T_352 ^ _T_359; // @[lib.scala 17:11]
  assign _T_364 = _T_362 ^ _T_359; // @[lib.scala 17:18]
  assign _T_365 = {_T_363,_T_364}; // @[Cat.scala 29:58]
  assign _T_370 = _T_324[1] & data_basis_x[1]; // @[lib.scala 14:18]
  assign _T_373 = _T_324[1] ^ _T_324[0]; // @[lib.scala 15:19]
  assign _T_377 = _T_373 & _T_219; // @[lib.scala 15:27]
  assign _T_380 = _T_324[0] & data_basis_x[0]; // @[lib.scala 16:18]
  assign _T_381 = _T_370 ^ _T_377; // @[lib.scala 17:11]
  assign _T_382 = _T_380 ^ _T_377; // @[lib.scala 17:18]
  assign _T_383 = {_T_381,_T_382}; // @[Cat.scala 29:58]
  assign _T_387 = _T_365[1] ^ _T_365[0]; // @[lib.scala 21:20]
  assign _T_388 = {_T_365[0],_T_387}; // @[Cat.scala 29:58]
  assign _T_389 = _T_343 ^ _T_388; // @[lib.scala 36:11]
  assign _T_395 = _T_383 ^ _T_388; // @[lib.scala 36:42]
  assign _T_402 = _T_324[3] & data_basis_x[7]; // @[lib.scala 14:18]
  assign _T_409 = _T_333 & _T_176; // @[lib.scala 15:27]
  assign _T_412 = _T_324[2] & data_basis_x[6]; // @[lib.scala 16:18]
  assign _T_413 = _T_402 ^ _T_409; // @[lib.scala 17:11]
  assign _T_414 = _T_412 ^ _T_409; // @[lib.scala 17:18]
  assign _T_415 = {_T_413,_T_414}; // @[Cat.scala 29:58]
  assign _T_424 = _T_346[1] & _T_189[1]; // @[lib.scala 14:18]
  assign _T_431 = _T_355 & _T_198; // @[lib.scala 15:27]
  assign _T_434 = _T_346[0] & _T_189[0]; // @[lib.scala 16:18]
  assign _T_435 = _T_424 ^ _T_431; // @[lib.scala 17:11]
  assign _T_436 = _T_434 ^ _T_431; // @[lib.scala 17:18]
  assign _T_437 = {_T_435,_T_436}; // @[Cat.scala 29:58]
  assign _T_442 = _T_324[1] & data_basis_x[5]; // @[lib.scala 14:18]
  assign _T_449 = _T_373 & _T_216; // @[lib.scala 15:27]
  assign _T_452 = _T_324[0] & data_basis_x[4]; // @[lib.scala 16:18]
  assign _T_453 = _T_442 ^ _T_449; // @[lib.scala 17:11]
  assign _T_454 = _T_452 ^ _T_449; // @[lib.scala 17:18]
  assign _T_455 = {_T_453,_T_454}; // @[Cat.scala 29:58]
  assign _T_459 = _T_437[1] ^ _T_437[0]; // @[lib.scala 21:20]
  assign _T_460 = {_T_437[0],_T_459}; // @[Cat.scala 29:58]
  assign _T_461 = _T_415 ^ _T_460; // @[lib.scala 36:11]
  assign _T_467 = _T_455 ^ _T_460; // @[lib.scala 36:42]
  assign data_inverse = {_T_389,_T_395,_T_461,_T_467}; // @[Cat.scala 29:58]
  assign _T_472 = io_A[3:2] ^ io_A[1:0]; // @[sbox.scala 23:24]
  assign _T_477 = io_A[3] & io_A[1]; // @[lib.scala 14:18]
  assign _T_480 = io_A[3] ^ io_A[2]; // @[lib.scala 15:19]
  assign _T_483 = io_A[1] ^ io_A[0]; // @[lib.scala 15:35]
  assign _T_484 = _T_480 & _T_483; // @[lib.scala 15:27]
  assign _T_487 = io_A[2] & io_A[0]; // @[lib.scala 16:18]
  assign _T_488 = _T_477 ^ _T_484; // @[lib.scala 17:11]
  assign _T_489 = _T_487 ^ _T_484; // @[lib.scala 17:18]
  assign _T_490 = {_T_488,_T_489}; // @[Cat.scala 29:58]
  assign _T_493 = {_T_472[0],_T_472[1]}; // @[Cat.scala 29:58]
  assign _T_497 = _T_493[1] ^ _T_493[0]; // @[lib.scala 21:20]
  assign _T_498 = {_T_493[0],_T_497}; // @[Cat.scala 29:58]
  assign _T_499 = _T_498 ^ _T_490; // @[sbox.scala 26:32]
  assign _T_502 = {_T_499[0],_T_499[1]}; // @[Cat.scala 29:58]
  assign _T_506 = _T_502[1] & io_A[1]; // @[lib.scala 14:18]
  assign _T_509 = _T_502[1] ^ _T_502[0]; // @[lib.scala 15:19]
  assign _T_513 = _T_509 & _T_483; // @[lib.scala 15:27]
  assign _T_516 = _T_502[0] & io_A[0]; // @[lib.scala 16:18]
  assign _T_517 = _T_506 ^ _T_513; // @[lib.scala 17:11]
  assign _T_518 = _T_516 ^ _T_513; // @[lib.scala 17:18]
  assign _T_523 = _T_502[1] & io_A[3]; // @[lib.scala 14:18]
  assign _T_530 = _T_509 & _T_480; // @[lib.scala 15:27]
  assign _T_533 = _T_502[0] & io_A[2]; // @[lib.scala 16:18]
  assign _T_534 = _T_523 ^ _T_530; // @[lib.scala 17:11]
  assign _T_535 = _T_533 ^ _T_530; // @[lib.scala 17:18]
  assign _T_537 = {_T_517,_T_518,_T_534,_T_535}; // @[Cat.scala 29:58]
  assign _T_545 = {io_A[0],io_A[1]}; // @[Cat.scala 29:58]
  assign _T_551 = _T_545[1] ^ _T_545[0]; // @[lib.scala 25:14]
  assign _T_554 = {_T_472[0],_T_472[1],_T_551,_T_545[1]}; // @[Cat.scala 29:58]
  assign _T_561 = io_A[7] & io_A[3]; // @[lib.scala 14:18]
  assign _T_564 = io_A[7] ^ io_A[6]; // @[lib.scala 15:19]
  assign _T_568 = _T_564 & _T_480; // @[lib.scala 15:27]
  assign _T_571 = io_A[6] & io_A[2]; // @[lib.scala 16:18]
  assign _T_572 = _T_561 ^ _T_568; // @[lib.scala 17:11]
  assign _T_573 = _T_571 ^ _T_568; // @[lib.scala 17:18]
  assign _T_574 = {_T_572,_T_573}; // @[Cat.scala 29:58]
  assign _T_577 = io_A[7:6] ^ io_A[5:4]; // @[lib.scala 34:38]
  assign _T_583 = _T_577[1] & _T_472[1]; // @[lib.scala 14:18]
  assign _T_586 = _T_577[1] ^ _T_577[0]; // @[lib.scala 15:19]
  assign _T_589 = _T_472[1] ^ _T_472[0]; // @[lib.scala 15:35]
  assign _T_590 = _T_586 & _T_589; // @[lib.scala 15:27]
  assign _T_593 = _T_577[0] & _T_472[0]; // @[lib.scala 16:18]
  assign _T_594 = _T_583 ^ _T_590; // @[lib.scala 17:11]
  assign _T_595 = _T_593 ^ _T_590; // @[lib.scala 17:18]
  assign _T_596 = {_T_594,_T_595}; // @[Cat.scala 29:58]
  assign _T_601 = io_A[5] & io_A[1]; // @[lib.scala 14:18]
  assign _T_604 = io_A[5] ^ io_A[4]; // @[lib.scala 15:19]
  assign _T_608 = _T_604 & _T_483; // @[lib.scala 15:27]
  assign _T_611 = io_A[4] & io_A[0]; // @[lib.scala 16:18]
  assign _T_612 = _T_601 ^ _T_608; // @[lib.scala 17:11]
  assign _T_613 = _T_611 ^ _T_608; // @[lib.scala 17:18]
  assign _T_614 = {_T_612,_T_613}; // @[Cat.scala 29:58]
  assign _T_618 = _T_596[1] ^ _T_596[0]; // @[lib.scala 21:20]
  assign _T_619 = {_T_596[0],_T_618}; // @[Cat.scala 29:58]
  assign _T_620 = _T_574 ^ _T_619; // @[lib.scala 36:11]
  assign _T_626 = _T_614 ^ _T_619; // @[lib.scala 36:42]
  assign _T_627 = {_T_620,_T_626}; // @[Cat.scala 29:58]
  assign _T_631 = {io_A[0],io_A[1]}; // @[Cat.scala 29:58]
  assign _T_635 = io_A[1] ^ io_A[0]; // @[lib.scala 25:14]
  assign _T_637 = {_T_635,io_A[1]}; // @[Cat.scala 29:58]
  assign _T_642 = io_A[3] & io_A[1]; // @[lib.scala 14:18]
  assign _T_645 = io_A[3] ^ io_A[2]; // @[lib.scala 15:19]
  assign _T_649 = _T_645 & _T_635; // @[lib.scala 15:27]
  assign _T_652 = io_A[2] & io_A[0]; // @[lib.scala 16:18]
  assign _T_653 = _T_642 ^ _T_649; // @[lib.scala 17:11]
  assign _T_654 = _T_652 ^ _T_649; // @[lib.scala 17:18]
  assign _T_655 = {_T_653,_T_654}; // @[Cat.scala 29:58]
  assign _T_659 = {{4'd0}, data_inverse[7:4]}; // @[Bitwise.scala 103:31]
  assign _T_661 = {data_inverse[3:0], 4'h0}; // @[Bitwise.scala 103:65]
  assign _T_663 = _T_661 & 8'hf0; // @[Bitwise.scala 103:75]
  assign _T_664 = _T_659 | _T_663; // @[Bitwise.scala 103:39]
  assign _GEN_2 = {{2'd0}, _T_664[7:2]}; // @[Bitwise.scala 103:31]
  assign _T_669 = _GEN_2 & 8'h33; // @[Bitwise.scala 103:31]
  assign _T_671 = {_T_664[5:0], 2'h0}; // @[Bitwise.scala 103:65]
  assign _T_673 = _T_671 & 8'hcc; // @[Bitwise.scala 103:75]
  assign _T_674 = _T_669 | _T_673; // @[Bitwise.scala 103:39]
  assign _GEN_3 = {{1'd0}, _T_674[7:1]}; // @[Bitwise.scala 103:31]
  assign _T_679 = _GEN_3 & 8'h55; // @[Bitwise.scala 103:31]
  assign _T_681 = {_T_674[6:0], 1'h0}; // @[Bitwise.scala 103:65]
  assign _T_683 = _T_681 & 8'haa; // @[Bitwise.scala 103:75]
  assign _T_684 = _T_679 | _T_683; // @[Bitwise.scala 103:39]
  assign _T_703 = _T_684[1] ^ _T_684[3]; // @[lib.scala 60:26]
  assign _T_706 = _T_703 ^ _T_684[6]; // @[lib.scala 60:26]
  assign _T_718 = _T_684[2] ^ _T_684[3]; // @[lib.scala 60:26]
  assign _T_721 = _T_718 ^ _T_684[6]; // @[lib.scala 60:26]
  assign _T_732 = _T_684[1] ^ _T_684[2]; // @[lib.scala 60:26]
  assign _T_734 = _T_732 ^ _T_684[4]; // @[lib.scala 60:26]
  assign _T_735 = _T_734 ^ _T_684[5]; // @[lib.scala 60:26]
  assign _T_737 = _T_735 ^ _T_684[7]; // @[lib.scala 60:26]
  assign _T_746 = _T_684[0] ^ _T_684[1]; // @[lib.scala 60:26]
  assign _T_747 = _T_746 ^ _T_684[2]; // @[lib.scala 60:26]
  assign _T_748 = _T_747 ^ _T_684[3]; // @[lib.scala 60:26]
  assign _T_749 = _T_748 ^ _T_684[4]; // @[lib.scala 60:26]
  assign _T_762 = _T_684[0] ^ _T_684[2]; // @[lib.scala 60:26]
  assign _T_764 = _T_762 ^ _T_684[4]; // @[lib.scala 60:26]
  assign _T_782 = _T_684[1] ^ _T_684[7]; // @[lib.scala 60:26]
  assign _T_794 = _T_684[0] ^ _T_684[4]; // @[lib.scala 60:26]
  assign _T_809 = _T_684[2] ^ _T_684[4]; // @[lib.scala 60:26]
  assign _T_820 = {_T_809,_T_794,_T_782,_T_764,_T_749,_T_737,_T_721,_T_706}; // @[lib.scala 63:17]
  assign io_B = _T_820 ^ 8'h63; // @[sbox.scala 51:8]
  assign io_test1 = {{4'd0}, _T_537}; // @[sbox.scala 44:12]
  assign io_test2 = {{4'd0}, _T_554}; // @[sbox.scala 45:12]
  assign io_test3 = {{4'd0}, _T_627}; // @[sbox.scala 46:12]
  assign io_test4 = {{6'd0}, _T_631}; // @[sbox.scala 47:12]
  assign io_test5 = {{6'd0}, _T_637}; // @[sbox.scala 48:12]
  assign io_test6 = {{6'd0}, _T_655}; // @[sbox.scala 49:12]
endmodule

/// Generated with MODEL=sboxGated
module sboxGated_in_aes_sbox(
  input        clock,
  input        reset,
  input  [7:0] io_A,
  output [7:0] io_B
);
  wire [7:0] _GEN_1; // @[sbox.scala 132:8]
  wire [7:0] _GEN_2; // @[sbox.scala 132:8]
  wire [7:0] _GEN_3; // @[sbox.scala 132:8]
  wire [7:0] _GEN_4; // @[sbox.scala 132:8]
  wire [7:0] _GEN_5; // @[sbox.scala 132:8]
  wire [7:0] _GEN_6; // @[sbox.scala 132:8]
  wire [7:0] _GEN_7; // @[sbox.scala 132:8]
  wire [7:0] _GEN_8; // @[sbox.scala 132:8]
  wire [7:0] _GEN_9; // @[sbox.scala 132:8]
  wire [7:0] _GEN_10; // @[sbox.scala 132:8]
  wire [7:0] _GEN_11; // @[sbox.scala 132:8]
  wire [7:0] _GEN_12; // @[sbox.scala 132:8]
  wire [7:0] _GEN_13; // @[sbox.scala 132:8]
  wire [7:0] _GEN_14; // @[sbox.scala 132:8]
  wire [7:0] _GEN_15; // @[sbox.scala 132:8]
  wire [7:0] _GEN_16; // @[sbox.scala 132:8]
  wire [7:0] _GEN_17; // @[sbox.scala 132:8]
  wire [7:0] _GEN_18; // @[sbox.scala 132:8]
  wire [7:0] _GEN_19; // @[sbox.scala 132:8]
  wire [7:0] _GEN_20; // @[sbox.scala 132:8]
  wire [7:0] _GEN_21; // @[sbox.scala 132:8]
  wire [7:0] _GEN_22; // @[sbox.scala 132:8]
  wire [7:0] _GEN_23; // @[sbox.scala 132:8]
  wire [7:0] _GEN_24; // @[sbox.scala 132:8]
  wire [7:0] _GEN_25; // @[sbox.scala 132:8]
  wire [7:0] _GEN_26; // @[sbox.scala 132:8]
  wire [7:0] _GEN_27; // @[sbox.scala 132:8]
  wire [7:0] _GEN_28; // @[sbox.scala 132:8]
  wire [7:0] _GEN_29; // @[sbox.scala 132:8]
  wire [7:0] _GEN_30; // @[sbox.scala 132:8]
  wire [7:0] _GEN_31; // @[sbox.scala 132:8]
  wire [7:0] _GEN_32; // @[sbox.scala 132:8]
  wire [7:0] _GEN_33; // @[sbox.scala 132:8]
  wire [7:0] _GEN_34; // @[sbox.scala 132:8]
  wire [7:0] _GEN_35; // @[sbox.scala 132:8]
  wire [7:0] _GEN_36; // @[sbox.scala 132:8]
  wire [7:0] _GEN_37; // @[sbox.scala 132:8]
  wire [7:0] _GEN_38; // @[sbox.scala 132:8]
  wire [7:0] _GEN_39; // @[sbox.scala 132:8]
  wire [7:0] _GEN_40; // @[sbox.scala 132:8]
  wire [7:0] _GEN_41; // @[sbox.scala 132:8]
  wire [7:0] _GEN_42; // @[sbox.scala 132:8]
  wire [7:0] _GEN_43; // @[sbox.scala 132:8]
  wire [7:0] _GEN_44; // @[sbox.scala 132:8]
  wire [7:0] _GEN_45; // @[sbox.scala 132:8]
  wire [7:0] _GEN_46; // @[sbox.scala 132:8]
  wire [7:0] _GEN_47; // @[sbox.scala 132:8]
  wire [7:0] _GEN_48; // @[sbox.scala 132:8]
  wire [7:0] _GEN_49; // @[sbox.scala 132:8]
  wire [7:0] _GEN_50; // @[sbox.scala 132:8]
  wire [7:0] _GEN_51; // @[sbox.scala 132:8]
  wire [7:0] _GEN_52; // @[sbox.scala 132:8]
  wire [7:0] _GEN_53; // @[sbox.scala 132:8]
  wire [7:0] _GEN_54; // @[sbox.scala 132:8]
  wire [7:0] _GEN_55; // @[sbox.scala 132:8]
  wire [7:0] _GEN_56; // @[sbox.scala 132:8]
  wire [7:0] _GEN_57; // @[sbox.scala 132:8]
  wire [7:0] _GEN_58; // @[sbox.scala 132:8]
  wire [7:0] _GEN_59; // @[sbox.scala 132:8]
  wire [7:0] _GEN_60; // @[sbox.scala 132:8]
  wire [7:0] _GEN_61; // @[sbox.scala 132:8]
  wire [7:0] _GEN_62; // @[sbox.scala 132:8]
  wire [7:0] _GEN_63; // @[sbox.scala 132:8]
  wire [7:0] _GEN_64; // @[sbox.scala 132:8]
  wire [7:0] _GEN_65; // @[sbox.scala 132:8]
  wire [7:0] _GEN_66; // @[sbox.scala 132:8]
  wire [7:0] _GEN_67; // @[sbox.scala 132:8]
  wire [7:0] _GEN_68; // @[sbox.scala 132:8]
  wire [7:0] _GEN_69; // @[sbox.scala 132:8]
  wire [7:0] _GEN_70; // @[sbox.scala 132:8]
  wire [7:0] _GEN_71; // @[sbox.scala 132:8]
  wire [7:0] _GEN_72; // @[sbox.scala 132:8]
  wire [7:0] _GEN_73; // @[sbox.scala 132:8]
  wire [7:0] _GEN_74; // @[sbox.scala 132:8]
  wire [7:0] _GEN_75; // @[sbox.scala 132:8]
  wire [7:0] _GEN_76; // @[sbox.scala 132:8]
  wire [7:0] _GEN_77; // @[sbox.scala 132:8]
  wire [7:0] _GEN_78; // @[sbox.scala 132:8]
  wire [7:0] _GEN_79; // @[sbox.scala 132:8]
  wire [7:0] _GEN_80; // @[sbox.scala 132:8]
  wire [7:0] _GEN_81; // @[sbox.scala 132:8]
  wire [7:0] _GEN_82; // @[sbox.scala 132:8]
  wire [7:0] _GEN_83; // @[sbox.scala 132:8]
  wire [7:0] _GEN_84; // @[sbox.scala 132:8]
  wire [7:0] _GEN_85; // @[sbox.scala 132:8]
  wire [7:0] _GEN_86; // @[sbox.scala 132:8]
  wire [7:0] _GEN_87; // @[sbox.scala 132:8]
  wire [7:0] _GEN_88; // @[sbox.scala 132:8]
  wire [7:0] _GEN_89; // @[sbox.scala 132:8]
  wire [7:0] _GEN_90; // @[sbox.scala 132:8]
  wire [7:0] _GEN_91; // @[sbox.scala 132:8]
  wire [7:0] _GEN_92; // @[sbox.scala 132:8]
  wire [7:0] _GEN_93; // @[sbox.scala 132:8]
  wire [7:0] _GEN_94; // @[sbox.scala 132:8]
  wire [7:0] _GEN_95; // @[sbox.scala 132:8]
  wire [7:0] _GEN_96; // @[sbox.scala 132:8]
  wire [7:0] _GEN_97; // @[sbox.scala 132:8]
  wire [7:0] _GEN_98; // @[sbox.scala 132:8]
  wire [7:0] _GEN_99; // @[sbox.scala 132:8]
  wire [7:0] _GEN_100; // @[sbox.scala 132:8]
  wire [7:0] _GEN_101; // @[sbox.scala 132:8]
  wire [7:0] _GEN_102; // @[sbox.scala 132:8]
  wire [7:0] _GEN_103; // @[sbox.scala 132:8]
  wire [7:0] _GEN_104; // @[sbox.scala 132:8]
  wire [7:0] _GEN_105; // @[sbox.scala 132:8]
  wire [7:0] _GEN_106; // @[sbox.scala 132:8]
  wire [7:0] _GEN_107; // @[sbox.scala 132:8]
  wire [7:0] _GEN_108; // @[sbox.scala 132:8]
  wire [7:0] _GEN_109; // @[sbox.scala 132:8]
  wire [7:0] _GEN_110; // @[sbox.scala 132:8]
  wire [7:0] _GEN_111; // @[sbox.scala 132:8]
  wire [7:0] _GEN_112; // @[sbox.scala 132:8]
  wire [7:0] _GEN_113; // @[sbox.scala 132:8]
  wire [7:0] _GEN_114; // @[sbox.scala 132:8]
  wire [7:0] _GEN_115; // @[sbox.scala 132:8]
  wire [7:0] _GEN_116; // @[sbox.scala 132:8]
  wire [7:0] _GEN_117; // @[sbox.scala 132:8]
  wire [7:0] _GEN_118; // @[sbox.scala 132:8]
  wire [7:0] _GEN_119; // @[sbox.scala 132:8]
  wire [7:0] _GEN_120; // @[sbox.scala 132:8]
  wire [7:0] _GEN_121; // @[sbox.scala 132:8]
  wire [7:0] _GEN_122; // @[sbox.scala 132:8]
  wire [7:0] _GEN_123; // @[sbox.scala 132:8]
  wire [7:0] _GEN_124; // @[sbox.scala 132:8]
  wire [7:0] _GEN_125; // @[sbox.scala 132:8]
  wire [7:0] _GEN_126; // @[sbox.scala 132:8]
  wire [7:0] _GEN_127; // @[sbox.scala 132:8]
  wire [7:0] _GEN_128; // @[sbox.scala 132:8]
  wire [7:0] _GEN_129; // @[sbox.scala 132:8]
  wire [7:0] _GEN_130; // @[sbox.scala 132:8]
  wire [7:0] _GEN_131; // @[sbox.scala 132:8]
  wire [7:0] _GEN_132; // @[sbox.scala 132:8]
  wire [7:0] _GEN_133; // @[sbox.scala 132:8]
  wire [7:0] _GEN_134; // @[sbox.scala 132:8]
  wire [7:0] _GEN_135; // @[sbox.scala 132:8]
  wire [7:0] _GEN_136; // @[sbox.scala 132:8]
  wire [7:0] _GEN_137; // @[sbox.scala 132:8]
  wire [7:0] _GEN_138; // @[sbox.scala 132:8]
  wire [7:0] _GEN_139; // @[sbox.scala 132:8]
  wire [7:0] _GEN_140; // @[sbox.scala 132:8]
  wire [7:0] _GEN_141; // @[sbox.scala 132:8]
  wire [7:0] _GEN_142; // @[sbox.scala 132:8]
  wire [7:0] _GEN_143; // @[sbox.scala 132:8]
  wire [7:0] _GEN_144; // @[sbox.scala 132:8]
  wire [7:0] _GEN_145; // @[sbox.scala 132:8]
  wire [7:0] _GEN_146; // @[sbox.scala 132:8]
  wire [7:0] _GEN_147; // @[sbox.scala 132:8]
  wire [7:0] _GEN_148; // @[sbox.scala 132:8]
  wire [7:0] _GEN_149; // @[sbox.scala 132:8]
  wire [7:0] _GEN_150; // @[sbox.scala 132:8]
  wire [7:0] _GEN_151; // @[sbox.scala 132:8]
  wire [7:0] _GEN_152; // @[sbox.scala 132:8]
  wire [7:0] _GEN_153; // @[sbox.scala 132:8]
  wire [7:0] _GEN_154; // @[sbox.scala 132:8]
  wire [7:0] _GEN_155; // @[sbox.scala 132:8]
  wire [7:0] _GEN_156; // @[sbox.scala 132:8]
  wire [7:0] _GEN_157; // @[sbox.scala 132:8]
  wire [7:0] _GEN_158; // @[sbox.scala 132:8]
  wire [7:0] _GEN_159; // @[sbox.scala 132:8]
  wire [7:0] _GEN_160; // @[sbox.scala 132:8]
  wire [7:0] _GEN_161; // @[sbox.scala 132:8]
  wire [7:0] _GEN_162; // @[sbox.scala 132:8]
  wire [7:0] _GEN_163; // @[sbox.scala 132:8]
  wire [7:0] _GEN_164; // @[sbox.scala 132:8]
  wire [7:0] _GEN_165; // @[sbox.scala 132:8]
  wire [7:0] _GEN_166; // @[sbox.scala 132:8]
  wire [7:0] _GEN_167; // @[sbox.scala 132:8]
  wire [7:0] _GEN_168; // @[sbox.scala 132:8]
  wire [7:0] _GEN_169; // @[sbox.scala 132:8]
  wire [7:0] _GEN_170; // @[sbox.scala 132:8]
  wire [7:0] _GEN_171; // @[sbox.scala 132:8]
  wire [7:0] _GEN_172; // @[sbox.scala 132:8]
  wire [7:0] _GEN_173; // @[sbox.scala 132:8]
  wire [7:0] _GEN_174; // @[sbox.scala 132:8]
  wire [7:0] _GEN_175; // @[sbox.scala 132:8]
  wire [7:0] _GEN_176; // @[sbox.scala 132:8]
  wire [7:0] _GEN_177; // @[sbox.scala 132:8]
  wire [7:0] _GEN_178; // @[sbox.scala 132:8]
  wire [7:0] _GEN_179; // @[sbox.scala 132:8]
  wire [7:0] _GEN_180; // @[sbox.scala 132:8]
  wire [7:0] _GEN_181; // @[sbox.scala 132:8]
  wire [7:0] _GEN_182; // @[sbox.scala 132:8]
  wire [7:0] _GEN_183; // @[sbox.scala 132:8]
  wire [7:0] _GEN_184; // @[sbox.scala 132:8]
  wire [7:0] _GEN_185; // @[sbox.scala 132:8]
  wire [7:0] _GEN_186; // @[sbox.scala 132:8]
  wire [7:0] _GEN_187; // @[sbox.scala 132:8]
  wire [7:0] _GEN_188; // @[sbox.scala 132:8]
  wire [7:0] _GEN_189; // @[sbox.scala 132:8]
  wire [7:0] _GEN_190; // @[sbox.scala 132:8]
  wire [7:0] _GEN_191; // @[sbox.scala 132:8]
  wire [7:0] _GEN_192; // @[sbox.scala 132:8]
  wire [7:0] _GEN_193; // @[sbox.scala 132:8]
  wire [7:0] _GEN_194; // @[sbox.scala 132:8]
  wire [7:0] _GEN_195; // @[sbox.scala 132:8]
  wire [7:0] _GEN_196; // @[sbox.scala 132:8]
  wire [7:0] _GEN_197; // @[sbox.scala 132:8]
  wire [7:0] _GEN_198; // @[sbox.scala 132:8]
  wire [7:0] _GEN_199; // @[sbox.scala 132:8]
  wire [7:0] _GEN_200; // @[sbox.scala 132:8]
  wire [7:0] _GEN_201; // @[sbox.scala 132:8]
  wire [7:0] _GEN_202; // @[sbox.scala 132:8]
  wire [7:0] _GEN_203; // @[sbox.scala 132:8]
  wire [7:0] _GEN_204; // @[sbox.scala 132:8]
  wire [7:0] _GEN_205; // @[sbox.scala 132:8]
  wire [7:0] _GEN_206; // @[sbox.scala 132:8]
  wire [7:0] _GEN_207; // @[sbox.scala 132:8]
  wire [7:0] _GEN_208; // @[sbox.scala 132:8]
  wire [7:0] _GEN_209; // @[sbox.scala 132:8]
  wire [7:0] _GEN_210; // @[sbox.scala 132:8]
  wire [7:0] _GEN_211; // @[sbox.scala 132:8]
  wire [7:0] _GEN_212; // @[sbox.scala 132:8]
  wire [7:0] _GEN_213; // @[sbox.scala 132:8]
  wire [7:0] _GEN_214; // @[sbox.scala 132:8]
  wire [7:0] _GEN_215; // @[sbox.scala 132:8]
  wire [7:0] _GEN_216; // @[sbox.scala 132:8]
  wire [7:0] _GEN_217; // @[sbox.scala 132:8]
  wire [7:0] _GEN_218; // @[sbox.scala 132:8]
  wire [7:0] _GEN_219; // @[sbox.scala 132:8]
  wire [7:0] _GEN_220; // @[sbox.scala 132:8]
  wire [7:0] _GEN_221; // @[sbox.scala 132:8]
  wire [7:0] _GEN_222; // @[sbox.scala 132:8]
  wire [7:0] _GEN_223; // @[sbox.scala 132:8]
  wire [7:0] _GEN_224; // @[sbox.scala 132:8]
  wire [7:0] _GEN_225; // @[sbox.scala 132:8]
  wire [7:0] _GEN_226; // @[sbox.scala 132:8]
  wire [7:0] _GEN_227; // @[sbox.scala 132:8]
  wire [7:0] _GEN_228; // @[sbox.scala 132:8]
  wire [7:0] _GEN_229; // @[sbox.scala 132:8]
  wire [7:0] _GEN_230; // @[sbox.scala 132:8]
  wire [7:0] _GEN_231; // @[sbox.scala 132:8]
  wire [7:0] _GEN_232; // @[sbox.scala 132:8]
  wire [7:0] _GEN_233; // @[sbox.scala 132:8]
  wire [7:0] _GEN_234; // @[sbox.scala 132:8]
  wire [7:0] _GEN_235; // @[sbox.scala 132:8]
  wire [7:0] _GEN_236; // @[sbox.scala 132:8]
  wire [7:0] _GEN_237; // @[sbox.scala 132:8]
  wire [7:0] _GEN_238; // @[sbox.scala 132:8]
  wire [7:0] _GEN_239; // @[sbox.scala 132:8]
  wire [7:0] _GEN_240; // @[sbox.scala 132:8]
  wire [7:0] _GEN_241; // @[sbox.scala 132:8]
  wire [7:0] _GEN_242; // @[sbox.scala 132:8]
  wire [7:0] _GEN_243; // @[sbox.scala 132:8]
  wire [7:0] _GEN_244; // @[sbox.scala 132:8]
  wire [7:0] _GEN_245; // @[sbox.scala 132:8]
  wire [7:0] _GEN_246; // @[sbox.scala 132:8]
  wire [7:0] _GEN_247; // @[sbox.scala 132:8]
  wire [7:0] _GEN_248; // @[sbox.scala 132:8]
  wire [7:0] _GEN_249; // @[sbox.scala 132:8]
  wire [7:0] _GEN_250; // @[sbox.scala 132:8]
  wire [7:0] _GEN_251; // @[sbox.scala 132:8]
  wire [7:0] _GEN_252; // @[sbox.scala 132:8]
  wire [7:0] _GEN_253; // @[sbox.scala 132:8]
  wire [7:0] _GEN_254; // @[sbox.scala 132:8]
  assign _GEN_1 = 8'h1 == io_A ? 8'h7c : 8'h63; // @[sbox.scala 132:8]
  assign _GEN_2 = 8'h2 == io_A ? 8'h77 : _GEN_1; // @[sbox.scala 132:8]
  assign _GEN_3 = 8'h3 == io_A ? 8'h7b : _GEN_2; // @[sbox.scala 132:8]
  assign _GEN_4 = 8'h4 == io_A ? 8'hf2 : _GEN_3; // @[sbox.scala 132:8]
  assign _GEN_5 = 8'h5 == io_A ? 8'h6b : _GEN_4; // @[sbox.scala 132:8]
  assign _GEN_6 = 8'h6 == io_A ? 8'h6f : _GEN_5; // @[sbox.scala 132:8]
  assign _GEN_7 = 8'h7 == io_A ? 8'hc5 : _GEN_6; // @[sbox.scala 132:8]
  assign _GEN_8 = 8'h8 == io_A ? 8'h30 : _GEN_7; // @[sbox.scala 132:8]
  assign _GEN_9 = 8'h9 == io_A ? 8'h1 : _GEN_8; // @[sbox.scala 132:8]
  assign _GEN_10 = 8'ha == io_A ? 8'h67 : _GEN_9; // @[sbox.scala 132:8]
  assign _GEN_11 = 8'hb == io_A ? 8'h2b : _GEN_10; // @[sbox.scala 132:8]
  assign _GEN_12 = 8'hc == io_A ? 8'hfe : _GEN_11; // @[sbox.scala 132:8]
  assign _GEN_13 = 8'hd == io_A ? 8'hd7 : _GEN_12; // @[sbox.scala 132:8]
  assign _GEN_14 = 8'he == io_A ? 8'hab : _GEN_13; // @[sbox.scala 132:8]
  assign _GEN_15 = 8'hf == io_A ? 8'h76 : _GEN_14; // @[sbox.scala 132:8]
  assign _GEN_16 = 8'h10 == io_A ? 8'hca : _GEN_15; // @[sbox.scala 132:8]
  assign _GEN_17 = 8'h11 == io_A ? 8'h82 : _GEN_16; // @[sbox.scala 132:8]
  assign _GEN_18 = 8'h12 == io_A ? 8'hc9 : _GEN_17; // @[sbox.scala 132:8]
  assign _GEN_19 = 8'h13 == io_A ? 8'h7d : _GEN_18; // @[sbox.scala 132:8]
  assign _GEN_20 = 8'h14 == io_A ? 8'hfa : _GEN_19; // @[sbox.scala 132:8]
  assign _GEN_21 = 8'h15 == io_A ? 8'h59 : _GEN_20; // @[sbox.scala 132:8]
  assign _GEN_22 = 8'h16 == io_A ? 8'h47 : _GEN_21; // @[sbox.scala 132:8]
  assign _GEN_23 = 8'h17 == io_A ? 8'hf0 : _GEN_22; // @[sbox.scala 132:8]
  assign _GEN_24 = 8'h18 == io_A ? 8'had : _GEN_23; // @[sbox.scala 132:8]
  assign _GEN_25 = 8'h19 == io_A ? 8'hd4 : _GEN_24; // @[sbox.scala 132:8]
  assign _GEN_26 = 8'h1a == io_A ? 8'ha2 : _GEN_25; // @[sbox.scala 132:8]
  assign _GEN_27 = 8'h1b == io_A ? 8'haf : _GEN_26; // @[sbox.scala 132:8]
  assign _GEN_28 = 8'h1c == io_A ? 8'h9c : _GEN_27; // @[sbox.scala 132:8]
  assign _GEN_29 = 8'h1d == io_A ? 8'ha4 : _GEN_28; // @[sbox.scala 132:8]
  assign _GEN_30 = 8'h1e == io_A ? 8'h72 : _GEN_29; // @[sbox.scala 132:8]
  assign _GEN_31 = 8'h1f == io_A ? 8'hc0 : _GEN_30; // @[sbox.scala 132:8]
  assign _GEN_32 = 8'h20 == io_A ? 8'hb7 : _GEN_31; // @[sbox.scala 132:8]
  assign _GEN_33 = 8'h21 == io_A ? 8'hfd : _GEN_32; // @[sbox.scala 132:8]
  assign _GEN_34 = 8'h22 == io_A ? 8'h93 : _GEN_33; // @[sbox.scala 132:8]
  assign _GEN_35 = 8'h23 == io_A ? 8'h26 : _GEN_34; // @[sbox.scala 132:8]
  assign _GEN_36 = 8'h24 == io_A ? 8'h36 : _GEN_35; // @[sbox.scala 132:8]
  assign _GEN_37 = 8'h25 == io_A ? 8'h3f : _GEN_36; // @[sbox.scala 132:8]
  assign _GEN_38 = 8'h26 == io_A ? 8'hf7 : _GEN_37; // @[sbox.scala 132:8]
  assign _GEN_39 = 8'h27 == io_A ? 8'hcc : _GEN_38; // @[sbox.scala 132:8]
  assign _GEN_40 = 8'h28 == io_A ? 8'h34 : _GEN_39; // @[sbox.scala 132:8]
  assign _GEN_41 = 8'h29 == io_A ? 8'ha5 : _GEN_40; // @[sbox.scala 132:8]
  assign _GEN_42 = 8'h2a == io_A ? 8'he5 : _GEN_41; // @[sbox.scala 132:8]
  assign _GEN_43 = 8'h2b == io_A ? 8'hf1 : _GEN_42; // @[sbox.scala 132:8]
  assign _GEN_44 = 8'h2c == io_A ? 8'h71 : _GEN_43; // @[sbox.scala 132:8]
  assign _GEN_45 = 8'h2d == io_A ? 8'hd8 : _GEN_44; // @[sbox.scala 132:8]
  assign _GEN_46 = 8'h2e == io_A ? 8'h31 : _GEN_45; // @[sbox.scala 132:8]
  assign _GEN_47 = 8'h2f == io_A ? 8'h15 : _GEN_46; // @[sbox.scala 132:8]
  assign _GEN_48 = 8'h30 == io_A ? 8'h4 : _GEN_47; // @[sbox.scala 132:8]
  assign _GEN_49 = 8'h31 == io_A ? 8'hc7 : _GEN_48; // @[sbox.scala 132:8]
  assign _GEN_50 = 8'h32 == io_A ? 8'h23 : _GEN_49; // @[sbox.scala 132:8]
  assign _GEN_51 = 8'h33 == io_A ? 8'hc3 : _GEN_50; // @[sbox.scala 132:8]
  assign _GEN_52 = 8'h34 == io_A ? 8'h18 : _GEN_51; // @[sbox.scala 132:8]
  assign _GEN_53 = 8'h35 == io_A ? 8'h96 : _GEN_52; // @[sbox.scala 132:8]
  assign _GEN_54 = 8'h36 == io_A ? 8'h5 : _GEN_53; // @[sbox.scala 132:8]
  assign _GEN_55 = 8'h37 == io_A ? 8'h9a : _GEN_54; // @[sbox.scala 132:8]
  assign _GEN_56 = 8'h38 == io_A ? 8'h7 : _GEN_55; // @[sbox.scala 132:8]
  assign _GEN_57 = 8'h39 == io_A ? 8'h12 : _GEN_56; // @[sbox.scala 132:8]
  assign _GEN_58 = 8'h3a == io_A ? 8'h80 : _GEN_57; // @[sbox.scala 132:8]
  assign _GEN_59 = 8'h3b == io_A ? 8'he2 : _GEN_58; // @[sbox.scala 132:8]
  assign _GEN_60 = 8'h3c == io_A ? 8'heb : _GEN_59; // @[sbox.scala 132:8]
  assign _GEN_61 = 8'h3d == io_A ? 8'h27 : _GEN_60; // @[sbox.scala 132:8]
  assign _GEN_62 = 8'h3e == io_A ? 8'hb2 : _GEN_61; // @[sbox.scala 132:8]
  assign _GEN_63 = 8'h3f == io_A ? 8'h75 : _GEN_62; // @[sbox.scala 132:8]
  assign _GEN_64 = 8'h40 == io_A ? 8'h9 : _GEN_63; // @[sbox.scala 132:8]
  assign _GEN_65 = 8'h41 == io_A ? 8'h83 : _GEN_64; // @[sbox.scala 132:8]
  assign _GEN_66 = 8'h42 == io_A ? 8'h2c : _GEN_65; // @[sbox.scala 132:8]
  assign _GEN_67 = 8'h43 == io_A ? 8'h1a : _GEN_66; // @[sbox.scala 132:8]
  assign _GEN_68 = 8'h44 == io_A ? 8'h1b : _GEN_67; // @[sbox.scala 132:8]
  assign _GEN_69 = 8'h45 == io_A ? 8'h6e : _GEN_68; // @[sbox.scala 132:8]
  assign _GEN_70 = 8'h46 == io_A ? 8'h5a : _GEN_69; // @[sbox.scala 132:8]
  assign _GEN_71 = 8'h47 == io_A ? 8'ha0 : _GEN_70; // @[sbox.scala 132:8]
  assign _GEN_72 = 8'h48 == io_A ? 8'h52 : _GEN_71; // @[sbox.scala 132:8]
  assign _GEN_73 = 8'h49 == io_A ? 8'h3b : _GEN_72; // @[sbox.scala 132:8]
  assign _GEN_74 = 8'h4a == io_A ? 8'hd6 : _GEN_73; // @[sbox.scala 132:8]
  assign _GEN_75 = 8'h4b == io_A ? 8'hb3 : _GEN_74; // @[sbox.scala 132:8]
  assign _GEN_76 = 8'h4c == io_A ? 8'h29 : _GEN_75; // @[sbox.scala 132:8]
  assign _GEN_77 = 8'h4d == io_A ? 8'he3 : _GEN_76; // @[sbox.scala 132:8]
  assign _GEN_78 = 8'h4e == io_A ? 8'h2f : _GEN_77; // @[sbox.scala 132:8]
  assign _GEN_79 = 8'h4f == io_A ? 8'h84 : _GEN_78; // @[sbox.scala 132:8]
  assign _GEN_80 = 8'h50 == io_A ? 8'h53 : _GEN_79; // @[sbox.scala 132:8]
  assign _GEN_81 = 8'h51 == io_A ? 8'hd1 : _GEN_80; // @[sbox.scala 132:8]
  assign _GEN_82 = 8'h52 == io_A ? 8'h0 : _GEN_81; // @[sbox.scala 132:8]
  assign _GEN_83 = 8'h53 == io_A ? 8'hed : _GEN_82; // @[sbox.scala 132:8]
  assign _GEN_84 = 8'h54 == io_A ? 8'h20 : _GEN_83; // @[sbox.scala 132:8]
  assign _GEN_85 = 8'h55 == io_A ? 8'hfc : _GEN_84; // @[sbox.scala 132:8]
  assign _GEN_86 = 8'h56 == io_A ? 8'hb1 : _GEN_85; // @[sbox.scala 132:8]
  assign _GEN_87 = 8'h57 == io_A ? 8'h5b : _GEN_86; // @[sbox.scala 132:8]
  assign _GEN_88 = 8'h58 == io_A ? 8'h6a : _GEN_87; // @[sbox.scala 132:8]
  assign _GEN_89 = 8'h59 == io_A ? 8'hcb : _GEN_88; // @[sbox.scala 132:8]
  assign _GEN_90 = 8'h5a == io_A ? 8'hbe : _GEN_89; // @[sbox.scala 132:8]
  assign _GEN_91 = 8'h5b == io_A ? 8'h39 : _GEN_90; // @[sbox.scala 132:8]
  assign _GEN_92 = 8'h5c == io_A ? 8'h4a : _GEN_91; // @[sbox.scala 132:8]
  assign _GEN_93 = 8'h5d == io_A ? 8'h4c : _GEN_92; // @[sbox.scala 132:8]
  assign _GEN_94 = 8'h5e == io_A ? 8'h58 : _GEN_93; // @[sbox.scala 132:8]
  assign _GEN_95 = 8'h5f == io_A ? 8'hcf : _GEN_94; // @[sbox.scala 132:8]
  assign _GEN_96 = 8'h60 == io_A ? 8'hd0 : _GEN_95; // @[sbox.scala 132:8]
  assign _GEN_97 = 8'h61 == io_A ? 8'hef : _GEN_96; // @[sbox.scala 132:8]
  assign _GEN_98 = 8'h62 == io_A ? 8'haa : _GEN_97; // @[sbox.scala 132:8]
  assign _GEN_99 = 8'h63 == io_A ? 8'hfb : _GEN_98; // @[sbox.scala 132:8]
  assign _GEN_100 = 8'h64 == io_A ? 8'h43 : _GEN_99; // @[sbox.scala 132:8]
  assign _GEN_101 = 8'h65 == io_A ? 8'h4d : _GEN_100; // @[sbox.scala 132:8]
  assign _GEN_102 = 8'h66 == io_A ? 8'h33 : _GEN_101; // @[sbox.scala 132:8]
  assign _GEN_103 = 8'h67 == io_A ? 8'h85 : _GEN_102; // @[sbox.scala 132:8]
  assign _GEN_104 = 8'h68 == io_A ? 8'h45 : _GEN_103; // @[sbox.scala 132:8]
  assign _GEN_105 = 8'h69 == io_A ? 8'hf9 : _GEN_104; // @[sbox.scala 132:8]
  assign _GEN_106 = 8'h6a == io_A ? 8'h2 : _GEN_105; // @[sbox.scala 132:8]
  assign _GEN_107 = 8'h6b == io_A ? 8'h7f : _GEN_106; // @[sbox.scala 132:8]
  assign _GEN_108 = 8'h6c == io_A ? 8'h50 : _GEN_107; // @[sbox.scala 132:8]
  assign _GEN_109 = 8'h6d == io_A ? 8'h3c : _GEN_108; // @[sbox.scala 132:8]
  assign _GEN_110 = 8'h6e == io_A ? 8'h9f : _GEN_109; // @[sbox.scala 132:8]
  assign _GEN_111 = 8'h6f == io_A ? 8'ha8 : _GEN_110; // @[sbox.scala 132:8]
  assign _GEN_112 = 8'h70 == io_A ? 8'h51 : _GEN_111; // @[sbox.scala 132:8]
  assign _GEN_113 = 8'h71 == io_A ? 8'ha3 : _GEN_112; // @[sbox.scala 132:8]
  assign _GEN_114 = 8'h72 == io_A ? 8'h40 : _GEN_113; // @[sbox.scala 132:8]
  assign _GEN_115 = 8'h73 == io_A ? 8'h8f : _GEN_114; // @[sbox.scala 132:8]
  assign _GEN_116 = 8'h74 == io_A ? 8'h92 : _GEN_115; // @[sbox.scala 132:8]
  assign _GEN_117 = 8'h75 == io_A ? 8'h9d : _GEN_116; // @[sbox.scala 132:8]
  assign _GEN_118 = 8'h76 == io_A ? 8'h38 : _GEN_117; // @[sbox.scala 132:8]
  assign _GEN_119 = 8'h77 == io_A ? 8'hf5 : _GEN_118; // @[sbox.scala 132:8]
  assign _GEN_120 = 8'h78 == io_A ? 8'hbc : _GEN_119; // @[sbox.scala 132:8]
  assign _GEN_121 = 8'h79 == io_A ? 8'hb6 : _GEN_120; // @[sbox.scala 132:8]
  assign _GEN_122 = 8'h7a == io_A ? 8'hda : _GEN_121; // @[sbox.scala 132:8]
  assign _GEN_123 = 8'h7b == io_A ? 8'h21 : _GEN_122; // @[sbox.scala 132:8]
  assign _GEN_124 = 8'h7c == io_A ? 8'h10 : _GEN_123; // @[sbox.scala 132:8]
  assign _GEN_125 = 8'h7d == io_A ? 8'hff : _GEN_124; // @[sbox.scala 132:8]
  assign _GEN_126 = 8'h7e == io_A ? 8'hf3 : _GEN_125; // @[sbox.scala 132:8]
  assign _GEN_127 = 8'h7f == io_A ? 8'hd2 : _GEN_126; // @[sbox.scala 132:8]
  assign _GEN_128 = 8'h80 == io_A ? 8'hcd : _GEN_127; // @[sbox.scala 132:8]
  assign _GEN_129 = 8'h81 == io_A ? 8'hc : _GEN_128; // @[sbox.scala 132:8]
  assign _GEN_130 = 8'h82 == io_A ? 8'h13 : _GEN_129; // @[sbox.scala 132:8]
  assign _GEN_131 = 8'h83 == io_A ? 8'hec : _GEN_130; // @[sbox.scala 132:8]
  assign _GEN_132 = 8'h84 == io_A ? 8'h5f : _GEN_131; // @[sbox.scala 132:8]
  assign _GEN_133 = 8'h85 == io_A ? 8'h97 : _GEN_132; // @[sbox.scala 132:8]
  assign _GEN_134 = 8'h86 == io_A ? 8'h44 : _GEN_133; // @[sbox.scala 132:8]
  assign _GEN_135 = 8'h87 == io_A ? 8'h17 : _GEN_134; // @[sbox.scala 132:8]
  assign _GEN_136 = 8'h88 == io_A ? 8'hc4 : _GEN_135; // @[sbox.scala 132:8]
  assign _GEN_137 = 8'h89 == io_A ? 8'ha7 : _GEN_136; // @[sbox.scala 132:8]
  assign _GEN_138 = 8'h8a == io_A ? 8'h7e : _GEN_137; // @[sbox.scala 132:8]
  assign _GEN_139 = 8'h8b == io_A ? 8'h3d : _GEN_138; // @[sbox.scala 132:8]
  assign _GEN_140 = 8'h8c == io_A ? 8'h64 : _GEN_139; // @[sbox.scala 132:8]
  assign _GEN_141 = 8'h8d == io_A ? 8'h5d : _GEN_140; // @[sbox.scala 132:8]
  assign _GEN_142 = 8'h8e == io_A ? 8'h19 : _GEN_141; // @[sbox.scala 132:8]
  assign _GEN_143 = 8'h8f == io_A ? 8'h73 : _GEN_142; // @[sbox.scala 132:8]
  assign _GEN_144 = 8'h90 == io_A ? 8'h60 : _GEN_143; // @[sbox.scala 132:8]
  assign _GEN_145 = 8'h91 == io_A ? 8'h81 : _GEN_144; // @[sbox.scala 132:8]
  assign _GEN_146 = 8'h92 == io_A ? 8'h4f : _GEN_145; // @[sbox.scala 132:8]
  assign _GEN_147 = 8'h93 == io_A ? 8'hdc : _GEN_146; // @[sbox.scala 132:8]
  assign _GEN_148 = 8'h94 == io_A ? 8'h22 : _GEN_147; // @[sbox.scala 132:8]
  assign _GEN_149 = 8'h95 == io_A ? 8'h2a : _GEN_148; // @[sbox.scala 132:8]
  assign _GEN_150 = 8'h96 == io_A ? 8'h90 : _GEN_149; // @[sbox.scala 132:8]
  assign _GEN_151 = 8'h97 == io_A ? 8'h88 : _GEN_150; // @[sbox.scala 132:8]
  assign _GEN_152 = 8'h98 == io_A ? 8'h46 : _GEN_151; // @[sbox.scala 132:8]
  assign _GEN_153 = 8'h99 == io_A ? 8'hee : _GEN_152; // @[sbox.scala 132:8]
  assign _GEN_154 = 8'h9a == io_A ? 8'hb8 : _GEN_153; // @[sbox.scala 132:8]
  assign _GEN_155 = 8'h9b == io_A ? 8'h14 : _GEN_154; // @[sbox.scala 132:8]
  assign _GEN_156 = 8'h9c == io_A ? 8'hde : _GEN_155; // @[sbox.scala 132:8]
  assign _GEN_157 = 8'h9d == io_A ? 8'h5e : _GEN_156; // @[sbox.scala 132:8]
  assign _GEN_158 = 8'h9e == io_A ? 8'hb : _GEN_157; // @[sbox.scala 132:8]
  assign _GEN_159 = 8'h9f == io_A ? 8'hdb : _GEN_158; // @[sbox.scala 132:8]
  assign _GEN_160 = 8'ha0 == io_A ? 8'he0 : _GEN_159; // @[sbox.scala 132:8]
  assign _GEN_161 = 8'ha1 == io_A ? 8'h32 : _GEN_160; // @[sbox.scala 132:8]
  assign _GEN_162 = 8'ha2 == io_A ? 8'h3a : _GEN_161; // @[sbox.scala 132:8]
  assign _GEN_163 = 8'ha3 == io_A ? 8'ha : _GEN_162; // @[sbox.scala 132:8]
  assign _GEN_164 = 8'ha4 == io_A ? 8'h49 : _GEN_163; // @[sbox.scala 132:8]
  assign _GEN_165 = 8'ha5 == io_A ? 8'h6 : _GEN_164; // @[sbox.scala 132:8]
  assign _GEN_166 = 8'ha6 == io_A ? 8'h24 : _GEN_165; // @[sbox.scala 132:8]
  assign _GEN_167 = 8'ha7 == io_A ? 8'h5c : _GEN_166; // @[sbox.scala 132:8]
  assign _GEN_168 = 8'ha8 == io_A ? 8'hc2 : _GEN_167; // @[sbox.scala 132:8]
  assign _GEN_169 = 8'ha9 == io_A ? 8'hd3 : _GEN_168; // @[sbox.scala 132:8]
  assign _GEN_170 = 8'haa == io_A ? 8'hac : _GEN_169; // @[sbox.scala 132:8]
  assign _GEN_171 = 8'hab == io_A ? 8'h62 : _GEN_170; // @[sbox.scala 132:8]
  assign _GEN_172 = 8'hac == io_A ? 8'h91 : _GEN_171; // @[sbox.scala 132:8]
  assign _GEN_173 = 8'had == io_A ? 8'h95 : _GEN_172; // @[sbox.scala 132:8]
  assign _GEN_174 = 8'hae == io_A ? 8'he4 : _GEN_173; // @[sbox.scala 132:8]
  assign _GEN_175 = 8'haf == io_A ? 8'h79 : _GEN_174; // @[sbox.scala 132:8]
  assign _GEN_176 = 8'hb0 == io_A ? 8'he7 : _GEN_175; // @[sbox.scala 132:8]
  assign _GEN_177 = 8'hb1 == io_A ? 8'hc8 : _GEN_176; // @[sbox.scala 132:8]
  assign _GEN_178 = 8'hb2 == io_A ? 8'h37 : _GEN_177; // @[sbox.scala 132:8]
  assign _GEN_179 = 8'hb3 == io_A ? 8'h6d : _GEN_178; // @[sbox.scala 132:8]
  assign _GEN_180 = 8'hb4 == io_A ? 8'h8d : _GEN_179; // @[sbox.scala 132:8]
  assign _GEN_181 = 8'hb5 == io_A ? 8'hd5 : _GEN_180; // @[sbox.scala 132:8]
  assign _GEN_182 = 8'hb6 == io_A ? 8'h4e : _GEN_181; // @[sbox.scala 132:8]
  assign _GEN_183 = 8'hb7 == io_A ? 8'ha9 : _GEN_182; // @[sbox.scala 132:8]
  assign _GEN_184 = 8'hb8 == io_A ? 8'h6c : _GEN_183; // @[sbox.scala 132:8]
  assign _GEN_185 = 8'hb9 == io_A ? 8'h56 : _GEN_184; // @[sbox.scala 132:8]
  assign _GEN_186 = 8'hba == io_A ? 8'hf4 : _GEN_185; // @[sbox.scala 132:8]
  assign _GEN_187 = 8'hbb == io_A ? 8'hea : _GEN_186; // @[sbox.scala 132:8]
  assign _GEN_188 = 8'hbc == io_A ? 8'h65 : _GEN_187; // @[sbox.scala 132:8]
  assign _GEN_189 = 8'hbd == io_A ? 8'h7a : _GEN_188; // @[sbox.scala 132:8]
  assign _GEN_190 = 8'hbe == io_A ? 8'hae : _GEN_189; // @[sbox.scala 132:8]
  assign _GEN_191 = 8'hbf == io_A ? 8'h8 : _GEN_190; // @[sbox.scala 132:8]
  assign _GEN_192 = 8'hc0 == io_A ? 8'hba : _GEN_191; // @[sbox.scala 132:8]
  assign _GEN_193 = 8'hc1 == io_A ? 8'h78 : _GEN_192; // @[sbox.scala 132:8]
  assign _GEN_194 = 8'hc2 == io_A ? 8'h25 : _GEN_193; // @[sbox.scala 132:8]
  assign _GEN_195 = 8'hc3 == io_A ? 8'h2e : _GEN_194; // @[sbox.scala 132:8]
  assign _GEN_196 = 8'hc4 == io_A ? 8'h1c : _GEN_195; // @[sbox.scala 132:8]
  assign _GEN_197 = 8'hc5 == io_A ? 8'ha6 : _GEN_196; // @[sbox.scala 132:8]
  assign _GEN_198 = 8'hc6 == io_A ? 8'hb4 : _GEN_197; // @[sbox.scala 132:8]
  assign _GEN_199 = 8'hc7 == io_A ? 8'hc6 : _GEN_198; // @[sbox.scala 132:8]
  assign _GEN_200 = 8'hc8 == io_A ? 8'he8 : _GEN_199; // @[sbox.scala 132:8]
  assign _GEN_201 = 8'hc9 == io_A ? 8'hdd : _GEN_200; // @[sbox.scala 132:8]
  assign _GEN_202 = 8'hca == io_A ? 8'h74 : _GEN_201; // @[sbox.scala 132:8]
  assign _GEN_203 = 8'hcb == io_A ? 8'h1f : _GEN_202; // @[sbox.scala 132:8]
  assign _GEN_204 = 8'hcc == io_A ? 8'h4b : _GEN_203; // @[sbox.scala 132:8]
  assign _GEN_205 = 8'hcd == io_A ? 8'hbd : _GEN_204; // @[sbox.scala 132:8]
  assign _GEN_206 = 8'hce == io_A ? 8'h8b : _GEN_205; // @[sbox.scala 132:8]
  assign _GEN_207 = 8'hcf == io_A ? 8'h8a : _GEN_206; // @[sbox.scala 132:8]
  assign _GEN_208 = 8'hd0 == io_A ? 8'h70 : _GEN_207; // @[sbox.scala 132:8]
  assign _GEN_209 = 8'hd1 == io_A ? 8'h3e : _GEN_208; // @[sbox.scala 132:8]
  assign _GEN_210 = 8'hd2 == io_A ? 8'hb5 : _GEN_209; // @[sbox.scala 132:8]
  assign _GEN_211 = 8'hd3 == io_A ? 8'h66 : _GEN_210; // @[sbox.scala 132:8]
  assign _GEN_212 = 8'hd4 == io_A ? 8'h48 : _GEN_211; // @[sbox.scala 132:8]
  assign _GEN_213 = 8'hd5 == io_A ? 8'h3 : _GEN_212; // @[sbox.scala 132:8]
  assign _GEN_214 = 8'hd6 == io_A ? 8'hf6 : _GEN_213; // @[sbox.scala 132:8]
  assign _GEN_215 = 8'hd7 == io_A ? 8'he : _GEN_214; // @[sbox.scala 132:8]
  assign _GEN_216 = 8'hd8 == io_A ? 8'h61 : _GEN_215; // @[sbox.scala 132:8]
  assign _GEN_217 = 8'hd9 == io_A ? 8'h35 : _GEN_216; // @[sbox.scala 132:8]
  assign _GEN_218 = 8'hda == io_A ? 8'h57 : _GEN_217; // @[sbox.scala 132:8]
  assign _GEN_219 = 8'hdb == io_A ? 8'hb9 : _GEN_218; // @[sbox.scala 132:8]
  assign _GEN_220 = 8'hdc == io_A ? 8'h86 : _GEN_219; // @[sbox.scala 132:8]
  assign _GEN_221 = 8'hdd == io_A ? 8'hc1 : _GEN_220; // @[sbox.scala 132:8]
  assign _GEN_222 = 8'hde == io_A ? 8'h1d : _GEN_221; // @[sbox.scala 132:8]
  assign _GEN_223 = 8'hdf == io_A ? 8'h9e : _GEN_222; // @[sbox.scala 132:8]
  assign _GEN_224 = 8'he0 == io_A ? 8'he1 : _GEN_223; // @[sbox.scala 132:8]
  assign _GEN_225 = 8'he1 == io_A ? 8'hf8 : _GEN_224; // @[sbox.scala 132:8]
  assign _GEN_226 = 8'he2 == io_A ? 8'h98 : _GEN_225; // @[sbox.scala 132:8]
  assign _GEN_227 = 8'he3 == io_A ? 8'h11 : _GEN_226; // @[sbox.scala 132:8]
  assign _GEN_228 = 8'he4 == io_A ? 8'h69 : _GEN_227; // @[sbox.scala 132:8]
  assign _GEN_229 = 8'he5 == io_A ? 8'hd9 : _GEN_228; // @[sbox.scala 132:8]
  assign _GEN_230 = 8'he6 == io_A ? 8'h8e : _GEN_229; // @[sbox.scala 132:8]
  assign _GEN_231 = 8'he7 == io_A ? 8'h94 : _GEN_230; // @[sbox.scala 132:8]
  assign _GEN_232 = 8'he8 == io_A ? 8'h9b : _GEN_231; // @[sbox.scala 132:8]
  assign _GEN_233 = 8'he9 == io_A ? 8'h1e : _GEN_232; // @[sbox.scala 132:8]
  assign _GEN_234 = 8'hea == io_A ? 8'h87 : _GEN_233; // @[sbox.scala 132:8]
  assign _GEN_235 = 8'heb == io_A ? 8'he9 : _GEN_234; // @[sbox.scala 132:8]
  assign _GEN_236 = 8'hec == io_A ? 8'hce : _GEN_235; // @[sbox.scala 132:8]
  assign _GEN_237 = 8'hed == io_A ? 8'h55 : _GEN_236; // @[sbox.scala 132:8]
  assign _GEN_238 = 8'hee == io_A ? 8'h28 : _GEN_237; // @[sbox.scala 132:8]
  assign _GEN_239 = 8'hef == io_A ? 8'hdf : _GEN_238; // @[sbox.scala 132:8]
  assign _GEN_240 = 8'hf0 == io_A ? 8'h8c : _GEN_239; // @[sbox.scala 132:8]
  assign _GEN_241 = 8'hf1 == io_A ? 8'ha1 : _GEN_240; // @[sbox.scala 132:8]
  assign _GEN_242 = 8'hf2 == io_A ? 8'h89 : _GEN_241; // @[sbox.scala 132:8]
  assign _GEN_243 = 8'hf3 == io_A ? 8'hd : _GEN_242; // @[sbox.scala 132:8]
  assign _GEN_244 = 8'hf4 == io_A ? 8'hbf : _GEN_243; // @[sbox.scala 132:8]
  assign _GEN_245 = 8'hf5 == io_A ? 8'he6 : _GEN_244; // @[sbox.scala 132:8]
  assign _GEN_246 = 8'hf6 == io_A ? 8'h42 : _GEN_245; // @[sbox.scala 132:8]
  assign _GEN_247 = 8'hf7 == io_A ? 8'h68 : _GEN_246; // @[sbox.scala 132:8]
  assign _GEN_248 = 8'hf8 == io_A ? 8'h41 : _GEN_247; // @[sbox.scala 132:8]
  assign _GEN_249 = 8'hf9 == io_A ? 8'h99 : _GEN_248; // @[sbox.scala 132:8]
  assign _GEN_250 = 8'hfa == io_A ? 8'h2d : _GEN_249; // @[sbox.scala 132:8]
  assign _GEN_251 = 8'hfb == io_A ? 8'hf : _GEN_250; // @[sbox.scala 132:8]
  assign _GEN_252 = 8'hfc == io_A ? 8'hb0 : _GEN_251; // @[sbox.scala 132:8]
  assign _GEN_253 = 8'hfd == io_A ? 8'h54 : _GEN_252; // @[sbox.scala 132:8]
  assign _GEN_254 = 8'hfe == io_A ? 8'hbb : _GEN_253; // @[sbox.scala 132:8]
  assign io_B = 8'hff == io_A ? 8'h16 : _GEN_254; // @[sbox.scala 132:8]
endmodule

module aes_sbox #(parameter integer impl_axi = 4) (
                input wire [31 : 0]  sboxw,
                output wire [31 : 0] new_sboxw
               );

  generate
    if(impl_axi == 2) begin
      sboxGated_in_aes_sbox sboxGated_in_aes_sbox_0(1'b0, 1'b0, sboxw[7:0], new_sboxw[7:0]);
      sboxGated_in_aes_sbox sboxGated_in_aes_sbox_1(1'b0, 1'b0, sboxw[15:8], new_sboxw[15:8]);
      sboxGated_in_aes_sbox sboxGated_in_aes_sbox_2(1'b0, 1'b0, sboxw[23:16], new_sboxw[23:16]);
      sboxGated_in_aes_sbox sboxGated_in_aes_sbox_3(1'b0, 1'b0, sboxw[31:24], new_sboxw[31:24]);
    end else if(impl_axi == 4) begin
      sboxCanright_in_aes_sbox sboxCanright_in_aes_sbox_0(1'b0, 1'b0, sboxw[7:0], new_sboxw[7:0], , , , , , );
      sboxCanright_in_aes_sbox sboxCanright_in_aes_sbox_1(1'b0, 1'b0, sboxw[15:8], new_sboxw[15:8] , , , , , , );
      sboxCanright_in_aes_sbox sboxCanright_in_aes_sbox_2(1'b0, 1'b0, sboxw[23:16], new_sboxw[23:16] , , , , , , );
      sboxCanright_in_aes_sbox sboxCanright_in_aes_sbox_3(1'b0, 1'b0, sboxw[31:24], new_sboxw[31:24] , , , , , , );
    end else if(impl_axi == 5) begin
      aes_sbox_canright sboxCanright_in_aes_sbox_0(sboxw[7:0], new_sboxw[7:0] , , , , , , );
      aes_sbox_canright sboxCanright_in_aes_sbox_1(sboxw[15:8], new_sboxw[15:8] , , , , , , );
      aes_sbox_canright sboxCanright_in_aes_sbox_2(sboxw[23:16], new_sboxw[23:16] , , , , , , );
      aes_sbox_canright sboxCanright_in_aes_sbox_3(sboxw[31:24], new_sboxw[31:24] , , , , , , );
    end else begin
      //----------------------------------------------------------------
      // The sbox array.
      //----------------------------------------------------------------
      wire [7 : 0] sbox [0 : 255];


      //----------------------------------------------------------------
      // Four parallel muxes.
      //----------------------------------------------------------------
      assign new_sboxw[31 : 24] = sbox[sboxw[31 : 24]];
      assign new_sboxw[23 : 16] = sbox[sboxw[23 : 16]];
      assign new_sboxw[15 : 08] = sbox[sboxw[15 : 08]];
      assign new_sboxw[07 : 00] = sbox[sboxw[07 : 00]];


      //----------------------------------------------------------------
      // Creating the sbox array contents.
      //----------------------------------------------------------------
      assign sbox[8'h00] = 8'h63;
      assign sbox[8'h01] = 8'h7c;
      assign sbox[8'h02] = 8'h77;
      assign sbox[8'h03] = 8'h7b;
      assign sbox[8'h04] = 8'hf2;
      assign sbox[8'h05] = 8'h6b;
      assign sbox[8'h06] = 8'h6f;
      assign sbox[8'h07] = 8'hc5;
      assign sbox[8'h08] = 8'h30;
      assign sbox[8'h09] = 8'h01;
      assign sbox[8'h0a] = 8'h67;
      assign sbox[8'h0b] = 8'h2b;
      assign sbox[8'h0c] = 8'hfe;
      assign sbox[8'h0d] = 8'hd7;
      assign sbox[8'h0e] = 8'hab;
      assign sbox[8'h0f] = 8'h76;
      assign sbox[8'h10] = 8'hca;
      assign sbox[8'h11] = 8'h82;
      assign sbox[8'h12] = 8'hc9;
      assign sbox[8'h13] = 8'h7d;
      assign sbox[8'h14] = 8'hfa;
      assign sbox[8'h15] = 8'h59;
      assign sbox[8'h16] = 8'h47;
      assign sbox[8'h17] = 8'hf0;
      assign sbox[8'h18] = 8'had;
      assign sbox[8'h19] = 8'hd4;
      assign sbox[8'h1a] = 8'ha2;
      assign sbox[8'h1b] = 8'haf;
      assign sbox[8'h1c] = 8'h9c;
      assign sbox[8'h1d] = 8'ha4;
      assign sbox[8'h1e] = 8'h72;
      assign sbox[8'h1f] = 8'hc0;
      assign sbox[8'h20] = 8'hb7;
      assign sbox[8'h21] = 8'hfd;
      assign sbox[8'h22] = 8'h93;
      assign sbox[8'h23] = 8'h26;
      assign sbox[8'h24] = 8'h36;
      assign sbox[8'h25] = 8'h3f;
      assign sbox[8'h26] = 8'hf7;
      assign sbox[8'h27] = 8'hcc;
      assign sbox[8'h28] = 8'h34;
      assign sbox[8'h29] = 8'ha5;
      assign sbox[8'h2a] = 8'he5;
      assign sbox[8'h2b] = 8'hf1;
      assign sbox[8'h2c] = 8'h71;
      assign sbox[8'h2d] = 8'hd8;
      assign sbox[8'h2e] = 8'h31;
      assign sbox[8'h2f] = 8'h15;
      assign sbox[8'h30] = 8'h04;
      assign sbox[8'h31] = 8'hc7;
      assign sbox[8'h32] = 8'h23;
      assign sbox[8'h33] = 8'hc3;
      assign sbox[8'h34] = 8'h18;
      assign sbox[8'h35] = 8'h96;
      assign sbox[8'h36] = 8'h05;
      assign sbox[8'h37] = 8'h9a;
      assign sbox[8'h38] = 8'h07;
      assign sbox[8'h39] = 8'h12;
      assign sbox[8'h3a] = 8'h80;
      assign sbox[8'h3b] = 8'he2;
      assign sbox[8'h3c] = 8'heb;
      assign sbox[8'h3d] = 8'h27;
      assign sbox[8'h3e] = 8'hb2;
      assign sbox[8'h3f] = 8'h75;
      assign sbox[8'h40] = 8'h09;
      assign sbox[8'h41] = 8'h83;
      assign sbox[8'h42] = 8'h2c;
      assign sbox[8'h43] = 8'h1a;
      assign sbox[8'h44] = 8'h1b;
      assign sbox[8'h45] = 8'h6e;
      assign sbox[8'h46] = 8'h5a;
      assign sbox[8'h47] = 8'ha0;
      assign sbox[8'h48] = 8'h52;
      assign sbox[8'h49] = 8'h3b;
      assign sbox[8'h4a] = 8'hd6;
      assign sbox[8'h4b] = 8'hb3;
      assign sbox[8'h4c] = 8'h29;
      assign sbox[8'h4d] = 8'he3;
      assign sbox[8'h4e] = 8'h2f;
      assign sbox[8'h4f] = 8'h84;
      assign sbox[8'h50] = 8'h53;
      assign sbox[8'h51] = 8'hd1;
      assign sbox[8'h52] = 8'h00;
      assign sbox[8'h53] = 8'hed;
      assign sbox[8'h54] = 8'h20;
      assign sbox[8'h55] = 8'hfc;
      assign sbox[8'h56] = 8'hb1;
      assign sbox[8'h57] = 8'h5b;
      assign sbox[8'h58] = 8'h6a;
      assign sbox[8'h59] = 8'hcb;
      assign sbox[8'h5a] = 8'hbe;
      assign sbox[8'h5b] = 8'h39;
      assign sbox[8'h5c] = 8'h4a;
      assign sbox[8'h5d] = 8'h4c;
      assign sbox[8'h5e] = 8'h58;
      assign sbox[8'h5f] = 8'hcf;
      assign sbox[8'h60] = 8'hd0;
      assign sbox[8'h61] = 8'hef;
      assign sbox[8'h62] = 8'haa;
      assign sbox[8'h63] = 8'hfb;
      assign sbox[8'h64] = 8'h43;
      assign sbox[8'h65] = 8'h4d;
      assign sbox[8'h66] = 8'h33;
      assign sbox[8'h67] = 8'h85;
      assign sbox[8'h68] = 8'h45;
      assign sbox[8'h69] = 8'hf9;
      assign sbox[8'h6a] = 8'h02;
      assign sbox[8'h6b] = 8'h7f;
      assign sbox[8'h6c] = 8'h50;
      assign sbox[8'h6d] = 8'h3c;
      assign sbox[8'h6e] = 8'h9f;
      assign sbox[8'h6f] = 8'ha8;
      assign sbox[8'h70] = 8'h51;
      assign sbox[8'h71] = 8'ha3;
      assign sbox[8'h72] = 8'h40;
      assign sbox[8'h73] = 8'h8f;
      assign sbox[8'h74] = 8'h92;
      assign sbox[8'h75] = 8'h9d;
      assign sbox[8'h76] = 8'h38;
      assign sbox[8'h77] = 8'hf5;
      assign sbox[8'h78] = 8'hbc;
      assign sbox[8'h79] = 8'hb6;
      assign sbox[8'h7a] = 8'hda;
      assign sbox[8'h7b] = 8'h21;
      assign sbox[8'h7c] = 8'h10;
      assign sbox[8'h7d] = 8'hff;
      assign sbox[8'h7e] = 8'hf3;
      assign sbox[8'h7f] = 8'hd2;
      assign sbox[8'h80] = 8'hcd;
      assign sbox[8'h81] = 8'h0c;
      assign sbox[8'h82] = 8'h13;
      assign sbox[8'h83] = 8'hec;
      assign sbox[8'h84] = 8'h5f;
      assign sbox[8'h85] = 8'h97;
      assign sbox[8'h86] = 8'h44;
      assign sbox[8'h87] = 8'h17;
      assign sbox[8'h88] = 8'hc4;
      assign sbox[8'h89] = 8'ha7;
      assign sbox[8'h8a] = 8'h7e;
      assign sbox[8'h8b] = 8'h3d;
      assign sbox[8'h8c] = 8'h64;
      assign sbox[8'h8d] = 8'h5d;
      assign sbox[8'h8e] = 8'h19;
      assign sbox[8'h8f] = 8'h73;
      assign sbox[8'h90] = 8'h60;
      assign sbox[8'h91] = 8'h81;
      assign sbox[8'h92] = 8'h4f;
      assign sbox[8'h93] = 8'hdc;
      assign sbox[8'h94] = 8'h22;
      assign sbox[8'h95] = 8'h2a;
      assign sbox[8'h96] = 8'h90;
      assign sbox[8'h97] = 8'h88;
      assign sbox[8'h98] = 8'h46;
      assign sbox[8'h99] = 8'hee;
      assign sbox[8'h9a] = 8'hb8;
      assign sbox[8'h9b] = 8'h14;
      assign sbox[8'h9c] = 8'hde;
      assign sbox[8'h9d] = 8'h5e;
      assign sbox[8'h9e] = 8'h0b;
      assign sbox[8'h9f] = 8'hdb;
      assign sbox[8'ha0] = 8'he0;
      assign sbox[8'ha1] = 8'h32;
      assign sbox[8'ha2] = 8'h3a;
      assign sbox[8'ha3] = 8'h0a;
      assign sbox[8'ha4] = 8'h49;
      assign sbox[8'ha5] = 8'h06;
      assign sbox[8'ha6] = 8'h24;
      assign sbox[8'ha7] = 8'h5c;
      assign sbox[8'ha8] = 8'hc2;
      assign sbox[8'ha9] = 8'hd3;
      assign sbox[8'haa] = 8'hac;
      assign sbox[8'hab] = 8'h62;
      assign sbox[8'hac] = 8'h91;
      assign sbox[8'had] = 8'h95;
      assign sbox[8'hae] = 8'he4;
      assign sbox[8'haf] = 8'h79;
      assign sbox[8'hb0] = 8'he7;
      assign sbox[8'hb1] = 8'hc8;
      assign sbox[8'hb2] = 8'h37;
      assign sbox[8'hb3] = 8'h6d;
      assign sbox[8'hb4] = 8'h8d;
      assign sbox[8'hb5] = 8'hd5;
      assign sbox[8'hb6] = 8'h4e;
      assign sbox[8'hb7] = 8'ha9;
      assign sbox[8'hb8] = 8'h6c;
      assign sbox[8'hb9] = 8'h56;
      assign sbox[8'hba] = 8'hf4;
      assign sbox[8'hbb] = 8'hea;
      assign sbox[8'hbc] = 8'h65;
      assign sbox[8'hbd] = 8'h7a;
      assign sbox[8'hbe] = 8'hae;
      assign sbox[8'hbf] = 8'h08;
      assign sbox[8'hc0] = 8'hba;
      assign sbox[8'hc1] = 8'h78;
      assign sbox[8'hc2] = 8'h25;
      assign sbox[8'hc3] = 8'h2e;
      assign sbox[8'hc4] = 8'h1c;
      assign sbox[8'hc5] = 8'ha6;
      assign sbox[8'hc6] = 8'hb4;
      assign sbox[8'hc7] = 8'hc6;
      assign sbox[8'hc8] = 8'he8;
      assign sbox[8'hc9] = 8'hdd;
      assign sbox[8'hca] = 8'h74;
      assign sbox[8'hcb] = 8'h1f;
      assign sbox[8'hcc] = 8'h4b;
      assign sbox[8'hcd] = 8'hbd;
      assign sbox[8'hce] = 8'h8b;
      assign sbox[8'hcf] = 8'h8a;
      assign sbox[8'hd0] = 8'h70;
      assign sbox[8'hd1] = 8'h3e;
      assign sbox[8'hd2] = 8'hb5;
      assign sbox[8'hd3] = 8'h66;
      assign sbox[8'hd4] = 8'h48;
      assign sbox[8'hd5] = 8'h03;
      assign sbox[8'hd6] = 8'hf6;
      assign sbox[8'hd7] = 8'h0e;
      assign sbox[8'hd8] = 8'h61;
      assign sbox[8'hd9] = 8'h35;
      assign sbox[8'hda] = 8'h57;
      assign sbox[8'hdb] = 8'hb9;
      assign sbox[8'hdc] = 8'h86;
      assign sbox[8'hdd] = 8'hc1;
      assign sbox[8'hde] = 8'h1d;
      assign sbox[8'hdf] = 8'h9e;
      assign sbox[8'he0] = 8'he1;
      assign sbox[8'he1] = 8'hf8;
      assign sbox[8'he2] = 8'h98;
      assign sbox[8'he3] = 8'h11;
      assign sbox[8'he4] = 8'h69;
      assign sbox[8'he5] = 8'hd9;
      assign sbox[8'he6] = 8'h8e;
      assign sbox[8'he7] = 8'h94;
      assign sbox[8'he8] = 8'h9b;
      assign sbox[8'he9] = 8'h1e;
      assign sbox[8'hea] = 8'h87;
      assign sbox[8'heb] = 8'he9;
      assign sbox[8'hec] = 8'hce;
      assign sbox[8'hed] = 8'h55;
      assign sbox[8'hee] = 8'h28;
      assign sbox[8'hef] = 8'hdf;
      assign sbox[8'hf0] = 8'h8c;
      assign sbox[8'hf1] = 8'ha1;
      assign sbox[8'hf2] = 8'h89;
      assign sbox[8'hf3] = 8'h0d;
      assign sbox[8'hf4] = 8'hbf;
      assign sbox[8'hf5] = 8'he6;
      assign sbox[8'hf6] = 8'h42;
      assign sbox[8'hf7] = 8'h68;
      assign sbox[8'hf8] = 8'h41;
      assign sbox[8'hf9] = 8'h99;
      assign sbox[8'hfa] = 8'h2d;
      assign sbox[8'hfb] = 8'h0f;
      assign sbox[8'hfc] = 8'hb0;
      assign sbox[8'hfd] = 8'h54;
      assign sbox[8'hfe] = 8'hbb;
      assign sbox[8'hff] = 8'h16;
    end
  endgenerate
  

endmodule // aes_sbox

//======================================================================
// EOF aes_sbox.v
//======================================================================
