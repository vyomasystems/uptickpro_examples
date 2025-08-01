//
// Generated by Bluespec Compiler, version 2023.07 (build 0eb551dc)
//
// On Tue Jul 29 14:28:06 +04 2025
//
//
// Ports:
// Name                         I/O  size props
// fn_shift                       O    64
// fn_shift_op1                   I    64
// fn_shift_op2                   I     6
// fn_shift_fn                    I     4
// fn_shift_wordop                I     1
//
// Combinational paths from inputs to outputs:
//   (fn_shift_op1, fn_shift_op2, fn_shift_fn, fn_shift_wordop) -> fn_shift
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module module_fn_shift(fn_shift_op1,
		       fn_shift_op2,
		       fn_shift_fn,
		       fn_shift_wordop,
		       fn_shift);
  // value method fn_shift
  input  [63 : 0] fn_shift_op1;
  input  [5 : 0] fn_shift_op2;
  input  [3 : 0] fn_shift_fn;
  input  fn_shift_wordop;
  output [63 : 0] fn_shift;

  // signals for module outputs
  reg [63 : 0] fn_shift;

  // remaining internal signals
  reg [63 : 0] shin__h28;
  wire [64 : 0] fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116,
		fn_shift_fn_BIT_3_AND_shin8_BIT_63_CONCAT_shin8__q1;
  wire [63 : 0] shift_inright__h27, shift_l__h31;
  wire [31 : 0] upper_bits__h26;
  wire [5 : 0] shift_amt__h25;
  wire x__h140;

  // value method fn_shift
  always@(fn_shift_fn or
	  shift_l__h31 or
	  fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116)
  begin
    case (fn_shift_fn)
      4'd5, 4'd11:
	  fn_shift =
	      fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[63:0];
      default: fn_shift = shift_l__h31;
    endcase
  end

  // remaining internal signals
  assign fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116 =
	     { fn_shift_fn[3] & shin__h28[63], shin__h28 } >> shift_amt__h25 |
	     ~(65'h1FFFFFFFFFFFFFFFF >> shift_amt__h25) &
	     {65{fn_shift_fn_BIT_3_AND_shin8_BIT_63_CONCAT_shin8__q1[64]}} ;
  assign fn_shift_fn_BIT_3_AND_shin8_BIT_63_CONCAT_shin8__q1 =
	     { fn_shift_fn[3] & shin__h28[63], shin__h28 } ;
  assign shift_amt__h25 =
	     { !fn_shift_wordop && fn_shift_op2[5], fn_shift_op2[4:0] } ;
  assign shift_inright__h27 = { upper_bits__h26, fn_shift_op1[31:0] } ;
  assign shift_l__h31 =
	     { fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[0],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[1],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[2],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[3],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[4],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[5],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[6],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[7],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[8],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[9],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[10],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[11],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[12],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[13],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[14],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[15],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[16],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[17],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[18],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[19],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[20],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[21],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[22],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[23],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[24],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[25],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[26],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[27],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[28],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[29],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[30],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[31],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[32],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[33],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[34],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[35],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[36],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[37],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[38],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[39],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[40],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[41],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[42],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[43],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[44],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[45],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[46],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[47],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[48],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[49],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[50],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[51],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[52],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[53],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[54],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[55],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[56],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[57],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[58],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[59],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[60],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[61],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[62],
	       fn_shift_fn_BIT_3_AND_IF_fn_shift_fn_EQ_5_OR_f_ETC___d116[63] } ;
  assign upper_bits__h26 =
	     fn_shift_wordop ? {32{x__h140}} : fn_shift_op1[63:32] ;
  assign x__h140 = fn_shift_fn[3] & fn_shift_op1[31] ;
  always@(fn_shift_fn or
	  fn_shift_op1 or upper_bits__h26 or shift_inright__h27)
  begin
    case (fn_shift_fn)
      4'd5, 4'd11: shin__h28 = shift_inright__h27;
      default: shin__h28 =
		   { fn_shift_op1[0],
		     fn_shift_op1[1],
		     fn_shift_op1[2],
		     fn_shift_op1[3],
		     fn_shift_op1[4],
		     fn_shift_op1[5],
		     fn_shift_op1[6],
		     fn_shift_op1[7],
		     fn_shift_op1[8],
		     fn_shift_op1[9],
		     fn_shift_op1[10],
		     fn_shift_op1[11],
		     fn_shift_op1[12],
		     fn_shift_op1[13],
		     fn_shift_op1[14],
		     fn_shift_op1[15],
		     fn_shift_op1[16],
		     fn_shift_op1[17],
		     fn_shift_op1[18],
		     fn_shift_op1[19],
		     fn_shift_op1[20],
		     fn_shift_op1[21],
		     fn_shift_op1[22],
		     fn_shift_op1[23],
		     fn_shift_op1[24],
		     fn_shift_op1[25],
		     fn_shift_op1[26],
		     fn_shift_op1[27],
		     fn_shift_op1[28],
		     fn_shift_op1[29],
		     fn_shift_op1[30],
		     fn_shift_op1[31],
		     upper_bits__h26[0],
		     upper_bits__h26[1],
		     upper_bits__h26[2],
		     upper_bits__h26[3],
		     upper_bits__h26[4],
		     upper_bits__h26[5],
		     upper_bits__h26[6],
		     upper_bits__h26[7],
		     upper_bits__h26[8],
		     upper_bits__h26[9],
		     upper_bits__h26[10],
		     upper_bits__h26[11],
		     upper_bits__h26[12],
		     upper_bits__h26[13],
		     upper_bits__h26[14],
		     upper_bits__h26[15],
		     upper_bits__h26[16],
		     upper_bits__h26[17],
		     upper_bits__h26[18],
		     upper_bits__h26[19],
		     upper_bits__h26[20],
		     upper_bits__h26[21],
		     upper_bits__h26[22],
		     upper_bits__h26[23],
		     upper_bits__h26[24],
		     upper_bits__h26[25],
		     upper_bits__h26[26],
		     upper_bits__h26[27],
		     upper_bits__h26[28],
		     upper_bits__h26[29],
		     upper_bits__h26[30],
		     upper_bits__h26[31] };
    endcase
  end
endmodule  // module_fn_shift

