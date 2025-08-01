//
// Generated by Bluespec Compiler, version 2023.07 (build 0eb551dc)
//
// On Tue Jul 29 14:28:07 +04 2025
//
//
// Ports:
// Name                         I/O  size props
// mav_check_sb_hit               O   128
// RDY_mav_check_sb_hit           O     1 const
// RDY_ma_allocate_entry          O     1
// RDY_ma_commit_store            O     1 const
// RDY_ma_increment_head          O     1 const
// mv_sb_head                     O   167
// RDY_mv_sb_head                 O     1 const
// mv_sb_full                     O     1
// RDY_mv_sb_full                 O     1 const
// mv_sb_empty                    O     1
// RDY_mv_sb_empty                O     1 const
// mv_sb_busy                     O     1 reg
// RDY_mv_sb_busy                 O     1 const
// mv_sb_head_commit              O     1
// RDY_mv_sb_head_commit          O     1 const
// mv_sb_head_valid               O     1
// RDY_mv_sb_head_valid           O     1 const
// mv_sb_curr_tail                O     1 reg
// RDY_mv_sb_curr_tail            O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// mav_check_sb_hit_phyaddr       I    32
// ma_allocate_entry_address      I    32
// ma_allocate_entry_data         I    64
// ma_allocate_entry_epochs       I     1
// ma_allocate_entry_fbindex      I     4
// ma_allocate_entry_size         I     2
// ma_allocate_entry_atomic       I     1
// ma_allocate_entry_read_data    I    64 reg
// ma_allocate_entry_atomic_op    I     5 reg
// ma_commit_store_sbid           I     1
// EN_ma_allocate_entry           I     1
// EN_ma_commit_store             I     1
// EN_ma_increment_head           I     1
// EN_mav_check_sb_hit            I     1 unused
//
// Combinational paths from inputs to outputs:
//   (ma_commit_store_sbid, EN_ma_commit_store) -> mv_sb_head_commit
//   mav_check_sb_hit_phyaddr -> mav_check_sb_hit
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

module mkstorebuffer(CLK,
		     RST_N,

		     mav_check_sb_hit_phyaddr,
		     EN_mav_check_sb_hit,
		     mav_check_sb_hit,
		     RDY_mav_check_sb_hit,

		     ma_allocate_entry_address,
		     ma_allocate_entry_data,
		     ma_allocate_entry_epochs,
		     ma_allocate_entry_fbindex,
		     ma_allocate_entry_size,
		     ma_allocate_entry_atomic,
		     ma_allocate_entry_read_data,
		     ma_allocate_entry_atomic_op,
		     EN_ma_allocate_entry,
		     RDY_ma_allocate_entry,

		     ma_commit_store_sbid,
		     EN_ma_commit_store,
		     RDY_ma_commit_store,

		     EN_ma_increment_head,
		     RDY_ma_increment_head,

		     mv_sb_head,
		     RDY_mv_sb_head,

		     mv_sb_full,
		     RDY_mv_sb_full,

		     mv_sb_empty,
		     RDY_mv_sb_empty,

		     mv_sb_busy,
		     RDY_mv_sb_busy,

		     mv_sb_head_commit,
		     RDY_mv_sb_head_commit,

		     mv_sb_head_valid,
		     RDY_mv_sb_head_valid,

		     mv_sb_curr_tail,
		     RDY_mv_sb_curr_tail);
  parameter [31 : 0] id = 32'b0;
  input  CLK;
  input  RST_N;

  // actionvalue method mav_check_sb_hit
  input  [31 : 0] mav_check_sb_hit_phyaddr;
  input  EN_mav_check_sb_hit;
  output [127 : 0] mav_check_sb_hit;
  output RDY_mav_check_sb_hit;

  // action method ma_allocate_entry
  input  [31 : 0] ma_allocate_entry_address;
  input  [63 : 0] ma_allocate_entry_data;
  input  ma_allocate_entry_epochs;
  input  [3 : 0] ma_allocate_entry_fbindex;
  input  [1 : 0] ma_allocate_entry_size;
  input  ma_allocate_entry_atomic;
  input  [63 : 0] ma_allocate_entry_read_data;
  input  [4 : 0] ma_allocate_entry_atomic_op;
  input  EN_ma_allocate_entry;
  output RDY_ma_allocate_entry;

  // action method ma_commit_store
  input  ma_commit_store_sbid;
  input  EN_ma_commit_store;
  output RDY_ma_commit_store;

  // action method ma_increment_head
  input  EN_ma_increment_head;
  output RDY_ma_increment_head;

  // value method mv_sb_head
  output [166 : 0] mv_sb_head;
  output RDY_mv_sb_head;

  // value method mv_sb_full
  output mv_sb_full;
  output RDY_mv_sb_full;

  // value method mv_sb_empty
  output mv_sb_empty;
  output RDY_mv_sb_empty;

  // value method mv_sb_busy
  output mv_sb_busy;
  output RDY_mv_sb_busy;

  // value method mv_sb_head_commit
  output mv_sb_head_commit;
  output RDY_mv_sb_head_commit;

  // value method mv_sb_head_valid
  output mv_sb_head_valid;
  output RDY_mv_sb_head_valid;

  // value method mv_sb_curr_tail
  output mv_sb_curr_tail;
  output RDY_mv_sb_curr_tail;

  // signals for module outputs
  reg mv_sb_head_commit, mv_sb_head_valid;
  wire [166 : 0] mv_sb_head;
  wire [127 : 0] mav_check_sb_hit;
  wire RDY_ma_allocate_entry,
       RDY_ma_commit_store,
       RDY_ma_increment_head,
       RDY_mav_check_sb_hit,
       RDY_mv_sb_busy,
       RDY_mv_sb_curr_tail,
       RDY_mv_sb_empty,
       RDY_mv_sb_full,
       RDY_mv_sb_head,
       RDY_mv_sb_head_commit,
       RDY_mv_sb_head_valid,
       mv_sb_busy,
       mv_sb_curr_tail,
       mv_sb_empty,
       mv_sb_full;

  // inlined wires
  wire [166 : 0] wr_sb_meta_wget;
  wire v_sb_commit_0_EN_port0__write,
       v_sb_commit_0_EN_port1__write,
       v_sb_commit_0_port1__read,
       v_sb_commit_0_port2__read,
       v_sb_commit_1_EN_port0__write,
       v_sb_commit_1_EN_port1__write,
       v_sb_commit_1_port1__read,
       v_sb_commit_1_port2__read;

  // register rg_atomic_op
  reg [4 : 0] rg_atomic_op;
  wire [4 : 0] rg_atomic_op_D_IN;
  wire rg_atomic_op_EN;

  // register rg_atomic_readword
  reg [63 : 0] rg_atomic_readword;
  wire [63 : 0] rg_atomic_readword_D_IN;
  wire rg_atomic_readword_EN;

  // register rg_atomic_tail
  reg rg_atomic_tail;
  wire rg_atomic_tail_D_IN, rg_atomic_tail_EN;

  // register rg_head
  reg rg_head;
  wire rg_head_D_IN, rg_head_EN;

  // register rg_sb_busy
  reg rg_sb_busy;
  wire rg_sb_busy_D_IN, rg_sb_busy_EN;

  // register rg_tail
  reg rg_tail;
  wire rg_tail_D_IN, rg_tail_EN;

  // register v_sb_commit_0
  reg v_sb_commit_0;
  wire v_sb_commit_0_D_IN, v_sb_commit_0_EN;

  // register v_sb_commit_1
  reg v_sb_commit_1;
  wire v_sb_commit_1_D_IN, v_sb_commit_1_EN;

  // register v_sb_meta_0
  reg [166 : 0] v_sb_meta_0;
  wire [166 : 0] v_sb_meta_0_D_IN;
  wire v_sb_meta_0_EN;

  // register v_sb_meta_1
  reg [166 : 0] v_sb_meta_1;
  wire [166 : 0] v_sb_meta_1_D_IN;
  wire v_sb_meta_1_EN;

  // register v_sb_valid_0
  reg v_sb_valid_0;
  wire v_sb_valid_0_D_IN, v_sb_valid_0_EN;

  // register v_sb_valid_1
  reg v_sb_valid_1;
  wire v_sb_valid_1_D_IN, v_sb_valid_1_EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_assign_head,
       CAN_FIRE_RL_connect_v_sb_valid,
       CAN_FIRE_RL_connect_v_sb_valid_1,
       CAN_FIRE_RL_rl_perform_atomic,
       CAN_FIRE_ma_allocate_entry,
       CAN_FIRE_ma_commit_store,
       CAN_FIRE_ma_increment_head,
       CAN_FIRE_mav_check_sb_hit,
       WILL_FIRE_RL_assign_head,
       WILL_FIRE_RL_connect_v_sb_valid,
       WILL_FIRE_RL_connect_v_sb_valid_1,
       WILL_FIRE_RL_rl_perform_atomic,
       WILL_FIRE_ma_allocate_entry,
       WILL_FIRE_ma_commit_store,
       WILL_FIRE_ma_increment_head,
       WILL_FIRE_mav_check_sb_hit;

  // inputs to muxes for submodule ports
  wire [166 : 0] MUX_v_sb_meta_0_write_1__VAL_1,
		 MUX_v_sb_meta_0_write_1__VAL_2;
  wire MUX_v_sb_meta_0_write_1__SEL_1, MUX_v_sb_meta_1_write_1__SEL_1;

  // remaining internal signals
  reg [63 : 0] IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73,
	       rs2__h2092,
	       temp__h19174,
	       x__h1567,
	       x__h1582,
	       x__h21446,
	       x__h2495,
	       x__h3195,
	       y__h3194;
  reg [31 : 0] CASE_rg_head_0_v_sb_meta_0_BITS_166_TO_135_1_v_ETC__q8,
	       _s_addr__h1775;
  reg [3 : 0] CASE_rg_head_0_v_sb_meta_0_BITS_69_TO_66_1_v_s_ETC__q5,
	      _s_fbindex__h1777;
  reg [1 : 0] CASE_rg_head_0_v_sb_meta_0_BITS_1_TO_0_1_v_sb__ETC__q6,
	      _s_size__h1779;
  reg CASE_ma_commit_store_sbid_0_NOT_v_sb_commit_0__ETC__q7,
      CASE_rg_head_0_v_sb_meta_0_BIT_70_1_v_sb_meta__ETC__q4,
      CASE_rg_tail_0_NOT_v_sb_valid_0_1_NOT_v_sb_val_ETC__q3,
      SEL_ARR_v_sb_valid_0_read__27_v_sb_valid_1_rea_ETC___d253,
      _s_epoch__h1776;
  wire [70 : 0] SEL_ARR_v_sb_meta_0_BIT_70_2_v_sb_meta_1_BIT_7_ETC___d29;
  wire [63 : 0] n__h3044,
		op1___1__h2154,
		op1__h2095,
		op2___1__h2155,
		op2__h2096,
		v_sb_meta_0_BITS_65_TO_2_0_AND_v_sb_meta_0_BIT_ETC___d161,
		v_sb_meta_1_BITS_65_TO_2_1_AND_v_sb_meta_1_BIT_ETC___d198,
		x__h1792,
		x__h18667,
		x__h18731,
		x__h18732,
		x__h18926,
		x__h21373,
		x__h2892,
		x__h3035,
		x__h3193,
		y__h18668,
		y__h18927;
  wire [31 : 0] rg_atomic_readword_BITS_31_TO_0__q1, rs2092_BITS_31_TO_0__q2;
  wire [5 : 0] shiftamt__h19173, shiftamt__h2902;
  wire IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d56,
       IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d61,
       NOT_SEL_ARR_NOT_v_sb_commit_0_port0__read__55__ETC___d261,
       NOT_SEL_ARR_NOT_v_sb_valid_0_read__27_15_NOT_v_ETC___d219,
       wr_v_sb_valid_ma_allocate_entry_whas__00_AND_w_ETC___d104,
       wr_v_sb_valid_ma_allocate_entry_whas__00_AND_w_ETC___d120,
       x__h21511,
       x__h22189,
       x__h3197;

  // actionvalue method mav_check_sb_hit
  assign mav_check_sb_hit = { x__h2892, x__h18731 } ;
  assign RDY_mav_check_sb_hit = 1'd1 ;
  assign CAN_FIRE_mav_check_sb_hit = 1'd1 ;
  assign WILL_FIRE_mav_check_sb_hit = EN_mav_check_sb_hit ;

  // action method ma_allocate_entry
  assign RDY_ma_allocate_entry =
	     (!v_sb_valid_0 || !v_sb_valid_1) && !rg_sb_busy ;
  assign CAN_FIRE_ma_allocate_entry =
	     (!v_sb_valid_0 || !v_sb_valid_1) && !rg_sb_busy ;
  assign WILL_FIRE_ma_allocate_entry = EN_ma_allocate_entry ;

  // action method ma_commit_store
  assign RDY_ma_commit_store = 1'd1 ;
  assign CAN_FIRE_ma_commit_store = 1'd1 ;
  assign WILL_FIRE_ma_commit_store = EN_ma_commit_store ;

  // action method ma_increment_head
  assign RDY_ma_increment_head = 1'd1 ;
  assign CAN_FIRE_ma_increment_head = 1'd1 ;
  assign WILL_FIRE_ma_increment_head = EN_ma_increment_head ;

  // value method mv_sb_head
  assign mv_sb_head = wr_sb_meta_wget ;
  assign RDY_mv_sb_head = 1'd1 ;

  // value method mv_sb_full
  assign mv_sb_full = v_sb_valid_0 && v_sb_valid_1 ;
  assign RDY_mv_sb_full = 1'd1 ;

  // value method mv_sb_empty
  assign mv_sb_empty = !v_sb_valid_0 && !v_sb_valid_1 ;
  assign RDY_mv_sb_empty = 1'd1 ;

  // value method mv_sb_busy
  assign mv_sb_busy = rg_sb_busy ;
  assign RDY_mv_sb_busy = 1'd1 ;

  // value method mv_sb_head_commit
  always@(rg_head or v_sb_commit_0_port1__read or v_sb_commit_1_port1__read)
  begin
    case (rg_head)
      1'd0: mv_sb_head_commit = v_sb_commit_0_port1__read;
      1'd1: mv_sb_head_commit = v_sb_commit_1_port1__read;
    endcase
  end
  assign RDY_mv_sb_head_commit = 1'd1 ;

  // value method mv_sb_head_valid
  always@(rg_head or v_sb_valid_0 or v_sb_valid_1)
  begin
    case (rg_head)
      1'd0: mv_sb_head_valid = v_sb_valid_0;
      1'd1: mv_sb_head_valid = v_sb_valid_1;
    endcase
  end
  assign RDY_mv_sb_head_valid = 1'd1 ;

  // value method mv_sb_curr_tail
  assign mv_sb_curr_tail = rg_tail ;
  assign RDY_mv_sb_curr_tail = 1'd1 ;

  // rule RL_assign_head
  assign CAN_FIRE_RL_assign_head = 1'd1 ;
  assign WILL_FIRE_RL_assign_head = 1'd1 ;

  // rule RL_rl_perform_atomic
  assign CAN_FIRE_RL_rl_perform_atomic = rg_sb_busy ;
  assign WILL_FIRE_RL_rl_perform_atomic = rg_sb_busy ;

  // rule RL_connect_v_sb_valid
  assign CAN_FIRE_RL_connect_v_sb_valid =
	     EN_ma_allocate_entry && rg_tail ||
	     EN_ma_increment_head && rg_head ;
  assign WILL_FIRE_RL_connect_v_sb_valid = CAN_FIRE_RL_connect_v_sb_valid ;

  // rule RL_connect_v_sb_valid_1
  assign CAN_FIRE_RL_connect_v_sb_valid_1 =
	     EN_ma_allocate_entry && !rg_tail ||
	     EN_ma_increment_head && !rg_head ;
  assign WILL_FIRE_RL_connect_v_sb_valid_1 =
	     CAN_FIRE_RL_connect_v_sb_valid_1 ;

  // inputs to muxes for submodule ports
  assign MUX_v_sb_meta_0_write_1__SEL_1 =
	     rg_sb_busy && rg_atomic_tail == 1'd0 ;
  assign MUX_v_sb_meta_1_write_1__SEL_1 =
	     rg_sb_busy && rg_atomic_tail == 1'd1 ;
  assign MUX_v_sb_meta_0_write_1__VAL_1 =
	     { _s_addr__h1775,
	       x__h1792,
	       _s_epoch__h1776,
	       _s_fbindex__h1777,
	       x__h2495,
	       _s_size__h1779 } ;
  assign MUX_v_sb_meta_0_write_1__VAL_2 =
	     { ma_allocate_entry_address,
	       x__h21446,
	       ma_allocate_entry_epochs,
	       ma_allocate_entry_fbindex,
	       x__h21373,
	       ma_allocate_entry_size } ;

  // inlined wires
  assign wr_sb_meta_wget =
	     { CASE_rg_head_0_v_sb_meta_0_BITS_166_TO_135_1_v_ETC__q8,
	       x__h1567,
	       SEL_ARR_v_sb_meta_0_BIT_70_2_v_sb_meta_1_BIT_7_ETC___d29 } ;
  assign v_sb_commit_0_EN_port0__write =
	     EN_ma_commit_store && ma_commit_store_sbid == 1'd0 ;
  assign v_sb_commit_0_port1__read =
	     v_sb_commit_0_EN_port0__write || v_sb_commit_0 ;
  assign v_sb_commit_0_EN_port1__write =
	     EN_ma_increment_head && rg_head == 1'd0 ;
  assign v_sb_commit_0_port2__read =
	     !v_sb_commit_0_EN_port1__write && v_sb_commit_0_port1__read ;
  assign v_sb_commit_1_EN_port0__write =
	     EN_ma_commit_store && ma_commit_store_sbid == 1'd1 ;
  assign v_sb_commit_1_port1__read =
	     v_sb_commit_1_EN_port0__write || v_sb_commit_1 ;
  assign v_sb_commit_1_EN_port1__write =
	     EN_ma_increment_head && rg_head == 1'd1 ;
  assign v_sb_commit_1_port2__read =
	     !v_sb_commit_1_EN_port1__write && v_sb_commit_1_port1__read ;

  // register rg_atomic_op
  assign rg_atomic_op_D_IN = ma_allocate_entry_atomic_op ;
  assign rg_atomic_op_EN = EN_ma_allocate_entry ;

  // register rg_atomic_readword
  assign rg_atomic_readword_D_IN = ma_allocate_entry_read_data ;
  assign rg_atomic_readword_EN = EN_ma_allocate_entry ;

  // register rg_atomic_tail
  assign rg_atomic_tail_D_IN = rg_tail ;
  assign rg_atomic_tail_EN = EN_ma_allocate_entry ;

  // register rg_head
  assign rg_head_D_IN = !rg_head && x__h22189 ;
  assign rg_head_EN = EN_ma_increment_head ;

  // register rg_sb_busy
  assign rg_sb_busy_D_IN = EN_ma_allocate_entry && ma_allocate_entry_atomic ;
  assign rg_sb_busy_EN = EN_ma_allocate_entry || rg_sb_busy ;

  // register rg_tail
  assign rg_tail_D_IN = !rg_tail && x__h21511 ;
  assign rg_tail_EN = EN_ma_allocate_entry ;

  // register v_sb_commit_0
  assign v_sb_commit_0_D_IN = v_sb_commit_0_port2__read ;
  assign v_sb_commit_0_EN = 1'b1 ;

  // register v_sb_commit_1
  assign v_sb_commit_1_D_IN = v_sb_commit_1_port2__read ;
  assign v_sb_commit_1_EN = 1'b1 ;

  // register v_sb_meta_0
  assign v_sb_meta_0_D_IN =
	     MUX_v_sb_meta_0_write_1__SEL_1 ?
	       MUX_v_sb_meta_0_write_1__VAL_1 :
	       MUX_v_sb_meta_0_write_1__VAL_2 ;
  assign v_sb_meta_0_EN =
	     rg_sb_busy && rg_atomic_tail == 1'd0 ||
	     EN_ma_allocate_entry && rg_tail == 1'd0 ;

  // register v_sb_meta_1
  assign v_sb_meta_1_D_IN =
	     MUX_v_sb_meta_1_write_1__SEL_1 ?
	       MUX_v_sb_meta_0_write_1__VAL_1 :
	       MUX_v_sb_meta_0_write_1__VAL_2 ;
  assign v_sb_meta_1_EN =
	     rg_sb_busy && rg_atomic_tail == 1'd1 ||
	     EN_ma_allocate_entry && rg_tail == 1'd1 ;

  // register v_sb_valid_0
  assign v_sb_valid_0_D_IN =
	     wr_v_sb_valid_ma_allocate_entry_whas__00_AND_w_ETC___d120 ;
  assign v_sb_valid_0_EN = CAN_FIRE_RL_connect_v_sb_valid_1 ;

  // register v_sb_valid_1
  assign v_sb_valid_1_D_IN =
	     wr_v_sb_valid_ma_allocate_entry_whas__00_AND_w_ETC___d104 ;
  assign v_sb_valid_1_EN = CAN_FIRE_RL_connect_v_sb_valid ;

  // remaining internal signals
  assign IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d56 =
	     op1__h2095 <= op2__h2096 ;
  assign IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d61 =
	     (op1__h2095 ^ 64'h8000000000000000) <=
	     (op2__h2096 ^ 64'h8000000000000000) ;
  assign NOT_SEL_ARR_NOT_v_sb_commit_0_port0__read__55__ETC___d261 =
	     !CASE_ma_commit_store_sbid_0_NOT_v_sb_commit_0__ETC__q7 ;
  assign NOT_SEL_ARR_NOT_v_sb_valid_0_read__27_15_NOT_v_ETC___d219 =
	     !CASE_rg_tail_0_NOT_v_sb_valid_0_1_NOT_v_sb_val_ETC__q3 ;
  assign SEL_ARR_v_sb_meta_0_BIT_70_2_v_sb_meta_1_BIT_7_ETC___d29 =
	     { CASE_rg_head_0_v_sb_meta_0_BIT_70_1_v_sb_meta__ETC__q4,
	       CASE_rg_head_0_v_sb_meta_0_BITS_69_TO_66_1_v_s_ETC__q5,
	       x__h1582,
	       CASE_rg_head_0_v_sb_meta_0_BITS_1_TO_0_1_v_sb__ETC__q6 } ;
  assign n__h3044 = x__h3193 & y__h3194 ;
  assign op1___1__h2154 =
	     { {32{rg_atomic_readword_BITS_31_TO_0__q1[31]}},
	       rg_atomic_readword_BITS_31_TO_0__q1 } ;
  assign op1__h2095 = rg_atomic_op[4] ? rg_atomic_readword : op1___1__h2154 ;
  assign op2___1__h2155 =
	     { {32{rs2092_BITS_31_TO_0__q2[31]}}, rs2092_BITS_31_TO_0__q2 } ;
  assign op2__h2096 = rg_atomic_op[4] ? rs2__h2092 : op2___1__h2155 ;
  assign rg_atomic_readword_BITS_31_TO_0__q1 = rg_atomic_readword[31:0] ;
  assign rs2092_BITS_31_TO_0__q2 = rs2__h2092[31:0] ;
  assign shiftamt__h19173 = { ma_allocate_entry_address[2:0], 3'd0 } ;
  assign shiftamt__h2902 = { mav_check_sb_hit_phyaddr[2:0], 3'd0 } ;
  assign v_sb_meta_0_BITS_65_TO_2_0_AND_v_sb_meta_0_BIT_ETC___d161 =
	     v_sb_meta_0[65:2] &
	     {64{v_sb_meta_0[166:138] == mav_check_sb_hit_phyaddr[31:3] &&
		 v_sb_valid_0}} ;
  assign v_sb_meta_1_BITS_65_TO_2_1_AND_v_sb_meta_1_BIT_ETC___d198 =
	     v_sb_meta_1[65:2] &
	     {64{v_sb_meta_1[166:138] == mav_check_sb_hit_phyaddr[31:3] &&
		 v_sb_valid_1}} ;
  assign wr_v_sb_valid_ma_allocate_entry_whas__00_AND_w_ETC___d104 =
	     EN_ma_allocate_entry && rg_tail ;
  assign wr_v_sb_valid_ma_allocate_entry_whas__00_AND_w_ETC___d120 =
	     EN_ma_allocate_entry && !rg_tail ;
  assign x__h1792 =
	     rg_atomic_op[4] ?
	       IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 :
	       {2{IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73[31:0]}} ;
  assign x__h18667 =
	     rg_tail ?
	       v_sb_meta_0_BITS_65_TO_2_0_AND_v_sb_meta_0_BIT_ETC___d161 :
	       n__h3044 ;
  assign x__h18731 = x__h18732 >> shiftamt__h2902 ;
  assign x__h18732 = x__h18926 | y__h18927 ;
  assign x__h18926 = x__h18667 & v_sb_meta_0[134:71] ;
  assign x__h21373 = temp__h19174 << shiftamt__h19173 ;
  assign x__h21511 = rg_tail + 1'd1 ;
  assign x__h22189 = rg_head + 1'd1 ;
  assign x__h2892 = x__h3035 >> shiftamt__h2902 ;
  assign x__h3035 = x__h18667 | y__h18668 ;
  assign x__h3193 = ~x__h3195 ;
  assign x__h3197 = rg_tail - 1'd1 ;
  assign y__h18668 =
	     rg_tail ?
	       n__h3044 :
	       v_sb_meta_1_BITS_65_TO_2_1_AND_v_sb_meta_1_BIT_ETC___d198 ;
  assign y__h18927 = y__h18668 & v_sb_meta_1[134:71] ;
  always@(rg_head or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_head)
      1'd0: x__h1567 = v_sb_meta_0[134:71];
      1'd1: x__h1567 = v_sb_meta_1[134:71];
    endcase
  end
  always@(rg_head or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_head)
      1'd0: x__h1582 = v_sb_meta_0[65:2];
      1'd1: x__h1582 = v_sb_meta_1[65:2];
    endcase
  end
  always@(rg_atomic_tail or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_atomic_tail)
      1'd0: _s_addr__h1775 = v_sb_meta_0[166:135];
      1'd1: _s_addr__h1775 = v_sb_meta_1[166:135];
    endcase
  end
  always@(rg_atomic_tail or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_atomic_tail)
      1'd0: _s_epoch__h1776 = v_sb_meta_0[70];
      1'd1: _s_epoch__h1776 = v_sb_meta_1[70];
    endcase
  end
  always@(rg_atomic_tail or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_atomic_tail)
      1'd0: x__h2495 = v_sb_meta_0[65:2];
      1'd1: x__h2495 = v_sb_meta_1[65:2];
    endcase
  end
  always@(rg_atomic_tail or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_atomic_tail)
      1'd0: _s_fbindex__h1777 = v_sb_meta_0[69:66];
      1'd1: _s_fbindex__h1777 = v_sb_meta_1[69:66];
    endcase
  end
  always@(rg_atomic_tail or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_atomic_tail)
      1'd0: _s_size__h1779 = v_sb_meta_0[1:0];
      1'd1: _s_size__h1779 = v_sb_meta_1[1:0];
    endcase
  end
  always@(ma_allocate_entry_size or ma_allocate_entry_data)
  begin
    case (ma_allocate_entry_size)
      2'd0: x__h21446 = {8{ma_allocate_entry_data[7:0]}};
      2'd1: x__h21446 = {4{ma_allocate_entry_data[15:0]}};
      2'd2: x__h21446 = {2{ma_allocate_entry_data[31:0]}};
      2'd3: x__h21446 = ma_allocate_entry_data;
    endcase
  end
  always@(ma_allocate_entry_size)
  begin
    case (ma_allocate_entry_size)
      2'd0: temp__h19174 = 64'h00000000000000FF;
      2'd1: temp__h19174 = 64'h000000000000FFFF;
      2'd2: temp__h19174 = 64'h00000000FFFFFFFF;
      2'd3: temp__h19174 = 64'hFFFFFFFFFFFFFFFF;
    endcase
  end
  always@(rg_atomic_tail or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_atomic_tail)
      1'd0: rs2__h2092 = v_sb_meta_0[134:71];
      1'd1: rs2__h2092 = v_sb_meta_1[134:71];
    endcase
  end
  always@(rg_atomic_op or
	  op1__h2095 or
	  op2__h2096 or
	  IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d61 or
	  IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d56)
  begin
    case (rg_atomic_op[3:0])
      4'b0:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      op1__h2095 + op2__h2096;
      4'b0010:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      op1__h2095 ^ op2__h2096;
      4'b0011:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      op2__h2096;
      4'b0100:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      op1__h2095 | op2__h2096;
      4'b0110:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      op1__h2095 & op2__h2096;
      4'b1000:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d61 ?
		op1__h2095 :
		op2__h2096;
      4'b1010:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d61 ?
		op2__h2096 :
		op1__h2095;
      4'b1100:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d56 ?
		op1__h2095 :
		op2__h2096;
      4'b1110:
	  IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
	      IF_rg_atomic_op_5_BIT_4_6_THEN_rg_atomic_readw_ETC___d56 ?
		op2__h2096 :
		op1__h2095;
      default: IF_rg_atomic_op_5_BITS_3_TO_0_7_EQ_0b11_8_THEN_ETC___d73 =
		   op1__h2095;
    endcase
  end
  always@(rg_tail or
	  v_sb_meta_0_BITS_65_TO_2_0_AND_v_sb_meta_0_BIT_ETC___d161 or
	  v_sb_meta_1_BITS_65_TO_2_1_AND_v_sb_meta_1_BIT_ETC___d198)
  begin
    case (rg_tail)
      1'd0:
	  y__h3194 =
	      v_sb_meta_0_BITS_65_TO_2_0_AND_v_sb_meta_0_BIT_ETC___d161;
      1'd1:
	  y__h3194 =
	      v_sb_meta_1_BITS_65_TO_2_1_AND_v_sb_meta_1_BIT_ETC___d198;
    endcase
  end
  always@(x__h3197 or
	  v_sb_meta_0_BITS_65_TO_2_0_AND_v_sb_meta_0_BIT_ETC___d161 or
	  v_sb_meta_1_BITS_65_TO_2_1_AND_v_sb_meta_1_BIT_ETC___d198)
  begin
    case (x__h3197)
      1'd0:
	  x__h3195 =
	      v_sb_meta_0_BITS_65_TO_2_0_AND_v_sb_meta_0_BIT_ETC___d161;
      1'd1:
	  x__h3195 =
	      v_sb_meta_1_BITS_65_TO_2_1_AND_v_sb_meta_1_BIT_ETC___d198;
    endcase
  end
  always@(rg_head or v_sb_valid_0 or v_sb_valid_1)
  begin
    case (rg_head)
      1'd0:
	  SEL_ARR_v_sb_valid_0_read__27_v_sb_valid_1_rea_ETC___d253 =
	      v_sb_valid_0;
      1'd1:
	  SEL_ARR_v_sb_valid_0_read__27_v_sb_valid_1_rea_ETC___d253 =
	      v_sb_valid_1;
    endcase
  end
  always@(rg_tail or v_sb_valid_0 or v_sb_valid_1)
  begin
    case (rg_tail)
      1'd0:
	  CASE_rg_tail_0_NOT_v_sb_valid_0_1_NOT_v_sb_val_ETC__q3 =
	      !v_sb_valid_0;
      1'd1:
	  CASE_rg_tail_0_NOT_v_sb_valid_0_1_NOT_v_sb_val_ETC__q3 =
	      !v_sb_valid_1;
    endcase
  end
  always@(rg_head or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_head)
      1'd0:
	  CASE_rg_head_0_v_sb_meta_0_BIT_70_1_v_sb_meta__ETC__q4 =
	      v_sb_meta_0[70];
      1'd1:
	  CASE_rg_head_0_v_sb_meta_0_BIT_70_1_v_sb_meta__ETC__q4 =
	      v_sb_meta_1[70];
    endcase
  end
  always@(rg_head or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_head)
      1'd0:
	  CASE_rg_head_0_v_sb_meta_0_BITS_69_TO_66_1_v_s_ETC__q5 =
	      v_sb_meta_0[69:66];
      1'd1:
	  CASE_rg_head_0_v_sb_meta_0_BITS_69_TO_66_1_v_s_ETC__q5 =
	      v_sb_meta_1[69:66];
    endcase
  end
  always@(rg_head or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_head)
      1'd0:
	  CASE_rg_head_0_v_sb_meta_0_BITS_1_TO_0_1_v_sb__ETC__q6 =
	      v_sb_meta_0[1:0];
      1'd1:
	  CASE_rg_head_0_v_sb_meta_0_BITS_1_TO_0_1_v_sb__ETC__q6 =
	      v_sb_meta_1[1:0];
    endcase
  end
  always@(ma_commit_store_sbid or v_sb_commit_0 or v_sb_commit_1)
  begin
    case (ma_commit_store_sbid)
      1'd0:
	  CASE_ma_commit_store_sbid_0_NOT_v_sb_commit_0__ETC__q7 =
	      !v_sb_commit_0;
      1'd1:
	  CASE_ma_commit_store_sbid_0_NOT_v_sb_commit_0__ETC__q7 =
	      !v_sb_commit_1;
    endcase
  end
  always@(rg_head or v_sb_meta_0 or v_sb_meta_1)
  begin
    case (rg_head)
      1'd0:
	  CASE_rg_head_0_v_sb_meta_0_BITS_166_TO_135_1_v_ETC__q8 =
	      v_sb_meta_0[166:135];
      1'd1:
	  CASE_rg_head_0_v_sb_meta_0_BITS_166_TO_135_1_v_ETC__q8 =
	      v_sb_meta_1[166:135];
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_atomic_op <= `BSV_ASSIGNMENT_DELAY 5'd0;
	rg_atomic_readword <= `BSV_ASSIGNMENT_DELAY 64'd0;
	rg_atomic_tail <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_head <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_sb_busy <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_tail <= `BSV_ASSIGNMENT_DELAY 1'd0;
	v_sb_commit_0 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	v_sb_commit_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	v_sb_meta_0 <= `BSV_ASSIGNMENT_DELAY 167'd0;
	v_sb_meta_1 <= `BSV_ASSIGNMENT_DELAY 167'd0;
	v_sb_valid_0 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	v_sb_valid_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (rg_atomic_op_EN)
	  rg_atomic_op <= `BSV_ASSIGNMENT_DELAY rg_atomic_op_D_IN;
	if (rg_atomic_readword_EN)
	  rg_atomic_readword <= `BSV_ASSIGNMENT_DELAY rg_atomic_readword_D_IN;
	if (rg_atomic_tail_EN)
	  rg_atomic_tail <= `BSV_ASSIGNMENT_DELAY rg_atomic_tail_D_IN;
	if (rg_head_EN) rg_head <= `BSV_ASSIGNMENT_DELAY rg_head_D_IN;
	if (rg_sb_busy_EN)
	  rg_sb_busy <= `BSV_ASSIGNMENT_DELAY rg_sb_busy_D_IN;
	if (rg_tail_EN) rg_tail <= `BSV_ASSIGNMENT_DELAY rg_tail_D_IN;
	if (v_sb_commit_0_EN)
	  v_sb_commit_0 <= `BSV_ASSIGNMENT_DELAY v_sb_commit_0_D_IN;
	if (v_sb_commit_1_EN)
	  v_sb_commit_1 <= `BSV_ASSIGNMENT_DELAY v_sb_commit_1_D_IN;
	if (v_sb_meta_0_EN)
	  v_sb_meta_0 <= `BSV_ASSIGNMENT_DELAY v_sb_meta_0_D_IN;
	if (v_sb_meta_1_EN)
	  v_sb_meta_1 <= `BSV_ASSIGNMENT_DELAY v_sb_meta_1_D_IN;
	if (v_sb_valid_0_EN)
	  v_sb_valid_0 <= `BSV_ASSIGNMENT_DELAY v_sb_valid_0_D_IN;
	if (v_sb_valid_1_EN)
	  v_sb_valid_1 <= `BSV_ASSIGNMENT_DELAY v_sb_valid_1_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_atomic_op = 5'h0A;
    rg_atomic_readword = 64'hAAAAAAAAAAAAAAAA;
    rg_atomic_tail = 1'h0;
    rg_head = 1'h0;
    rg_sb_busy = 1'h0;
    rg_tail = 1'h0;
    v_sb_commit_0 = 1'h0;
    v_sb_commit_1 = 1'h0;
    v_sb_meta_0 = 167'h2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
    v_sb_meta_1 = 167'h2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
    v_sb_valid_0 = 1'h0;
    v_sb_valid_1 = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_commit_store &&
	  !SEL_ARR_v_sb_valid_0_read__27_v_sb_valid_1_rea_ETC___d253)
	$display("Dynamic assertion failed: \"caches_mmu/src/dcache/dcache_lib.bsv\", line 2030, column 41\nSB commit to invalid entry.");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_commit_store &&
	  !SEL_ARR_v_sb_valid_0_read__27_v_sb_valid_1_rea_ETC___d253)
	$finish(32'd0);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_commit_store &&
	  NOT_SEL_ARR_NOT_v_sb_commit_0_port0__read__55__ETC___d261)
	$display("Dynamic assertion failed: \"caches_mmu/src/dcache/dcache_lib.bsv\", line 2031, column 43\nSB commit to already commit entry.");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_commit_store &&
	  NOT_SEL_ARR_NOT_v_sb_commit_0_port0__read__55__ETC___d261)
	$finish(32'd0);
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_allocate_entry &&
	  NOT_SEL_ARR_NOT_v_sb_valid_0_read__27_15_NOT_v_ETC___d219)
	$display("Dynamic assertion failed: \"caches_mmu/src/dcache/dcache_lib.bsv\", line 2002, column 42\nValid SB Entry Allocated");
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_ma_allocate_entry &&
	  NOT_SEL_ARR_NOT_v_sb_valid_0_read__27_15_NOT_v_ETC___d219)
	$finish(32'd0);
  end
  // synopsys translate_on
endmodule  // mkstorebuffer

