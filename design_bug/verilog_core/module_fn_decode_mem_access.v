//
// Generated by Bluespec Compiler, version 2023.07 (build 0eb551dc)
//
// On Tue Jul 29 14:28:06 +04 2025
//
//
// Ports:
// Name                         I/O  size props
// fn_decode_mem_access           O     3
// fn_decode_mem_access_inst      I    32
//
// Combinational paths from inputs to outputs:
//   fn_decode_mem_access_inst -> fn_decode_mem_access
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

module module_fn_decode_mem_access(fn_decode_mem_access_inst,
				   fn_decode_mem_access);
  // value method fn_decode_mem_access
  input  [31 : 0] fn_decode_mem_access_inst;
  output [2 : 0] fn_decode_mem_access;

  // signals for module outputs
  reg [2 : 0] fn_decode_mem_access;

  // value method fn_decode_mem_access
  always@(fn_decode_mem_access_inst)
  begin
    case (fn_decode_mem_access_inst[6:2])
      5'b00011:
	  fn_decode_mem_access = fn_decode_mem_access_inst[12] ? 3'd4 : 3'd3;
      5'b01000, 5'b01001: fn_decode_mem_access = 3'd1;
      5'b01011: fn_decode_mem_access = 3'd2;
      5'b11100:
	  fn_decode_mem_access =
	      (fn_decode_mem_access_inst[31:25] == 7'b0001001 &&
	       fn_decode_mem_access_inst[14:12] == 3'd0) ?
		3'd5 :
		3'd0;
      default: fn_decode_mem_access = 3'd0;
    endcase
  end
endmodule  // module_fn_decode_mem_access

