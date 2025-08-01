//
// Generated by Bluespec Compiler, version 2023.07 (build 0eb551dc)
//
// On Tue Jul 29 14:28:06 +04 2025
//
//
// Ports:
// Name                         I/O  size props
// fn_decode_immediate            O    32
// fn_decode_immediate_inst       I    32
// fn_decode_immediate_csrs       I   242
//
// Combinational paths from inputs to outputs:
//   (fn_decode_immediate_inst, fn_decode_immediate_csrs) -> fn_decode_immediate
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

module module_fn_decode_immediate(fn_decode_immediate_inst,
				  fn_decode_immediate_csrs,
				  fn_decode_immediate);
  // value method fn_decode_immediate
  input  [31 : 0] fn_decode_immediate_inst;
  input  [241 : 0] fn_decode_immediate_csrs;
  output [31 : 0] fn_decode_immediate;

  // signals for module outputs
  wire [31 : 0] fn_decode_immediate;

  // remaining internal signals
  reg [10 : 0] CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q4;
  reg [7 : 0] CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q1;
  reg [5 : 0] CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q2;
  reg [3 : 0] CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q3;
  wire [19 : 0] IF_fn_decode_immediate_inst_BITS_6_TO_2_EQ_0b1_ETC___d57;
  wire [10 : 0] bit20_30__h36;
  wire [7 : 0] bit12_19__h35;
  wire bit31__h37;

  // value method fn_decode_immediate
  assign fn_decode_immediate =
	     { bit31__h37,
	       CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q4,
	       IF_fn_decode_immediate_inst_BITS_6_TO_2_EQ_0b1_ETC___d57 } ;

  // remaining internal signals
  assign IF_fn_decode_immediate_inst_BITS_6_TO_2_EQ_0b1_ETC___d57 =
	     { CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q1,
	       fn_decode_immediate_inst[6:2] != 5'b01011 &&
	       ((fn_decode_immediate_inst[6:2] == 5'b11000) ?
		  fn_decode_immediate_inst[7] :
		  fn_decode_immediate_inst[6:2] != 5'b01101 &&
		  fn_decode_immediate_inst[6:2] != 5'b00101 &&
		  ((fn_decode_immediate_inst[6:2] == 5'b11011) ?
		     fn_decode_immediate_inst[20] :
		     fn_decode_immediate_inst[31])),
	       CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q2,
	       (fn_decode_immediate_inst[6:2] == 5'b01011) ?
		 4'd0 :
		 ((fn_decode_immediate_inst[6:2] == 5'b01000 ||
		   fn_decode_immediate_inst[6:2] == 5'b01001 &&
		   fn_decode_immediate_csrs[133] ||
		   fn_decode_immediate_inst[6:2] == 5'b11000) ?
		    fn_decode_immediate_inst[11:8] :
		    CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q3),
	       fn_decode_immediate_inst[6:2] != 5'b01011 &&
	       ((fn_decode_immediate_inst[6:2] == 5'b01000 ||
		 fn_decode_immediate_inst[6:2] == 5'b01001 &&
		 fn_decode_immediate_csrs[133]) ?
		  fn_decode_immediate_inst[7] :
		  fn_decode_immediate_inst[6:2] != 5'b11000 &&
		  fn_decode_immediate_inst[6:2] != 5'b01101 &&
		  fn_decode_immediate_inst[6:2] != 5'b00101 &&
		  fn_decode_immediate_inst[6:2] != 5'b11011 &&
		  fn_decode_immediate_inst[20]) } ;
  assign bit12_19__h35 = {8{fn_decode_immediate_inst[31]}} ;
  assign bit20_30__h36 =
	     { bit12_19__h35,
	       fn_decode_immediate_inst[31],
	       fn_decode_immediate_inst[31],
	       fn_decode_immediate_inst[31] } ;
  assign bit31__h37 =
	     fn_decode_immediate_inst[6:2] != 5'b01011 &&
	     fn_decode_immediate_inst[31] ;
  always@(fn_decode_immediate_inst or bit12_19__h35)
  begin
    case (fn_decode_immediate_inst[6:2])
      5'b00101, 5'b01101, 5'b11011, 5'b11100:
	  CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q1 =
	      fn_decode_immediate_inst[19:12];
      5'b01011: CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q1 = 8'd0;
      default: CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q1 =
		   bit12_19__h35;
    endcase
  end
  always@(fn_decode_immediate_inst)
  begin
    case (fn_decode_immediate_inst[6:2])
      5'b00101, 5'b01011, 5'b01101:
	  CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q2 = 6'd0;
      default: CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q2 =
		   fn_decode_immediate_inst[30:25];
    endcase
  end
  always@(fn_decode_immediate_inst)
  begin
    case (fn_decode_immediate_inst[6:2])
      5'b00101, 5'b01101:
	  CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q3 = 4'd0;
      default: CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q3 =
		   fn_decode_immediate_inst[24:21];
    endcase
  end
  always@(fn_decode_immediate_inst or bit20_30__h36)
  begin
    case (fn_decode_immediate_inst[6:2])
      5'b00101, 5'b01101:
	  CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q4 =
	      fn_decode_immediate_inst[30:20];
      5'b01011:
	  CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q4 = 11'd0;
      default: CASE_fn_decode_immediate_inst_BITS_6_TO_2_0b10_ETC__q4 =
		   bit20_30__h36;
    endcase
  end
endmodule  // module_fn_decode_immediate

