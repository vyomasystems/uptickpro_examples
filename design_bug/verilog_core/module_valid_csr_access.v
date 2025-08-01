//
// Generated by Bluespec Compiler, version 2023.07 (build 0eb551dc)
//
// On Tue Jul 29 14:28:06 +04 2025
//
//
// Ports:
// Name                         I/O  size props
// valid_csr_access               O     1
// valid_csr_access_csr_addr      I    12
// valid_csr_access_operand       I     5
// valid_csr_access_operation     I     2
// valid_csr_access_tvm           I     1
// valid_csr_access_prv           I     2
//
// Combinational paths from inputs to outputs:
//   (valid_csr_access_csr_addr,
//    valid_csr_access_operand,
//    valid_csr_access_operation,
//    valid_csr_access_tvm,
//    valid_csr_access_prv) -> valid_csr_access
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

module module_valid_csr_access(valid_csr_access_csr_addr,
			       valid_csr_access_operand,
			       valid_csr_access_operation,
			       valid_csr_access_tvm,
			       valid_csr_access_prv,
			       valid_csr_access);
  // value method valid_csr_access
  input  [11 : 0] valid_csr_access_csr_addr;
  input  [4 : 0] valid_csr_access_operand;
  input  [1 : 0] valid_csr_access_operation;
  input  valid_csr_access_tvm;
  input  [1 : 0] valid_csr_access_prv;
  output valid_csr_access;

  // signals for module outputs
  wire valid_csr_access;

  // remaining internal signals
  wire hasCSRPermission___d13;

  // value method valid_csr_access
  assign valid_csr_access =
	     (valid_csr_access_csr_addr != 12'h180 || !valid_csr_access_tvm ||
	      valid_csr_access_prv != 2'd1) &&
	     hasCSRPermission___d13 ;

  // remaining internal signals
  module_hasCSRPermission instance_hasCSRPermission_0(.hasCSRPermission_address(valid_csr_access_csr_addr),
						      .hasCSRPermission_write(valid_csr_access_operand !=
									      5'd0 ||
									      valid_csr_access_operation ==
									      2'b01),
						      .hasCSRPermission_prv(valid_csr_access_prv),
						      .hasCSRPermission(hasCSRPermission___d13));
endmodule  // module_valid_csr_access

