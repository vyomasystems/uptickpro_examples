//
// Generated by Bluespec Compiler, version 2023.07 (build 0eb551dc)
//
// On Tue Jul 29 14:28:13 +04 2025
//
//
// Ports:
// Name                         I/O  size props
// rx_rx_from_stage0_deq_ena      O     1
// tx_tx_to_stage2_enq_ena        O     1
// tx_tx_to_stage2_enq_data       O   120
// tx_tx_commitlog_enq_ena        O     1
// tx_tx_commitlog_enq_data       O   309
// RDY_icache_inst_response_put   O     1 reg
// RDY_common_ma_update_eEpoch    O     1 const
// RDY_common_ma_update_wEpoch    O     1 const
// RDY_common_ma_csr_misa_c       O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// rx_rx_from_stage0_notEmpty_b   I     1
// rx_rx_from_stage0_first_deq_rdy_b  I     1
// rx_rx_from_stage0_first_x      I    77
// tx_tx_to_stage2_notFull_b      I     1
// tx_tx_to_stage2_enq_rdy_b      I     1
// tx_tx_commitlog_notFull_b      I     1 unused
// tx_tx_commitlog_enq_rdy_b      I     1
// icache_inst_response_put       I    42
// common_ma_csr_misa_c_c         I     1
// EN_icache_inst_response_put    I     1
// EN_common_ma_update_eEpoch     I     1
// EN_common_ma_update_wEpoch     I     1
// EN_common_ma_csr_misa_c        I     1
//
// Combinational paths from inputs to outputs:
//   (rx_rx_from_stage0_notEmpty_b,
//    rx_rx_from_stage0_first_deq_rdy_b,
//    tx_tx_to_stage2_notFull_b,
//    tx_tx_to_stage2_enq_rdy_b,
//    tx_tx_commitlog_enq_rdy_b,
//    icache_inst_response_put,
//    EN_icache_inst_response_put,
//    EN_common_ma_csr_misa_c) -> rx_rx_from_stage0_deq_ena
//   (rx_rx_from_stage0_notEmpty_b,
//    rx_rx_from_stage0_first_deq_rdy_b,
//    rx_rx_from_stage0_first_x,
//    tx_tx_to_stage2_notFull_b,
//    tx_tx_to_stage2_enq_rdy_b,
//    tx_tx_commitlog_enq_rdy_b,
//    icache_inst_response_put,
//    common_ma_csr_misa_c_c,
//    EN_icache_inst_response_put,
//    EN_common_ma_csr_misa_c) -> tx_tx_to_stage2_enq_ena
//   (rx_rx_from_stage0_notEmpty_b,
//    rx_rx_from_stage0_first_deq_rdy_b,
//    rx_rx_from_stage0_first_x,
//    tx_tx_to_stage2_notFull_b,
//    tx_tx_to_stage2_enq_rdy_b,
//    tx_tx_commitlog_enq_rdy_b,
//    icache_inst_response_put,
//    common_ma_csr_misa_c_c,
//    EN_icache_inst_response_put,
//    EN_common_ma_csr_misa_c) -> tx_tx_to_stage2_enq_data
//   (rx_rx_from_stage0_notEmpty_b,
//    rx_rx_from_stage0_first_deq_rdy_b,
//    rx_rx_from_stage0_first_x,
//    tx_tx_to_stage2_notFull_b,
//    tx_tx_to_stage2_enq_rdy_b,
//    tx_tx_commitlog_enq_rdy_b,
//    icache_inst_response_put,
//    common_ma_csr_misa_c_c,
//    EN_icache_inst_response_put,
//    EN_common_ma_csr_misa_c) -> tx_tx_commitlog_enq_ena
//   (rx_rx_from_stage0_notEmpty_b,
//    rx_rx_from_stage0_first_deq_rdy_b,
//    rx_rx_from_stage0_first_x,
//    tx_tx_to_stage2_notFull_b,
//    tx_tx_to_stage2_enq_rdy_b,
//    tx_tx_commitlog_enq_rdy_b,
//    icache_inst_response_put,
//    common_ma_csr_misa_c_c,
//    EN_icache_inst_response_put,
//    EN_common_ma_csr_misa_c) -> tx_tx_commitlog_enq_data
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

module mkstage1(CLK,
		RST_N,

		rx_rx_from_stage0_notEmpty_b,

		rx_rx_from_stage0_first_deq_rdy_b,

		rx_rx_from_stage0_first_x,

		rx_rx_from_stage0_deq_ena,

		tx_tx_to_stage2_notFull_b,

		tx_tx_to_stage2_enq_rdy_b,

		tx_tx_to_stage2_enq_ena,

		tx_tx_to_stage2_enq_data,

		tx_tx_commitlog_notFull_b,

		tx_tx_commitlog_enq_rdy_b,

		tx_tx_commitlog_enq_ena,

		tx_tx_commitlog_enq_data,

		icache_inst_response_put,
		EN_icache_inst_response_put,
		RDY_icache_inst_response_put,

		EN_common_ma_update_eEpoch,
		RDY_common_ma_update_eEpoch,

		EN_common_ma_update_wEpoch,
		RDY_common_ma_update_wEpoch,

		common_ma_csr_misa_c_c,
		EN_common_ma_csr_misa_c,
		RDY_common_ma_csr_misa_c);
  parameter [63 : 0] hartid = 64'b0;
  input  CLK;
  input  RST_N;

  // action method rx_rx_from_stage0_notEmpty
  input  rx_rx_from_stage0_notEmpty_b;

  // action method rx_rx_from_stage0_first_deq_rdy
  input  rx_rx_from_stage0_first_deq_rdy_b;

  // action method rx_rx_from_stage0_first
  input  [76 : 0] rx_rx_from_stage0_first_x;

  // value method rx_rx_from_stage0_deq_ena
  output rx_rx_from_stage0_deq_ena;

  // action method tx_tx_to_stage2_notFull
  input  tx_tx_to_stage2_notFull_b;

  // action method tx_tx_to_stage2_enq_rdy
  input  tx_tx_to_stage2_enq_rdy_b;

  // value method tx_tx_to_stage2_enq_ena
  output tx_tx_to_stage2_enq_ena;

  // value method tx_tx_to_stage2_enq_data
  output [119 : 0] tx_tx_to_stage2_enq_data;

  // action method tx_tx_commitlog_notFull
  input  tx_tx_commitlog_notFull_b;

  // action method tx_tx_commitlog_enq_rdy
  input  tx_tx_commitlog_enq_rdy_b;

  // value method tx_tx_commitlog_enq_ena
  output tx_tx_commitlog_enq_ena;

  // value method tx_tx_commitlog_enq_data
  output [308 : 0] tx_tx_commitlog_enq_data;

  // action method icache_inst_response_put
  input  [41 : 0] icache_inst_response_put;
  input  EN_icache_inst_response_put;
  output RDY_icache_inst_response_put;

  // action method common_ma_update_eEpoch
  input  EN_common_ma_update_eEpoch;
  output RDY_common_ma_update_eEpoch;

  // action method common_ma_update_wEpoch
  input  EN_common_ma_update_wEpoch;
  output RDY_common_ma_update_wEpoch;

  // action method common_ma_csr_misa_c
  input  common_ma_csr_misa_c_c;
  input  EN_common_ma_csr_misa_c;
  output RDY_common_ma_csr_misa_c;

  // signals for module outputs
  wire [308 : 0] tx_tx_commitlog_enq_data;
  wire [119 : 0] tx_tx_to_stage2_enq_data;
  wire RDY_common_ma_csr_misa_c,
       RDY_common_ma_update_eEpoch,
       RDY_common_ma_update_wEpoch,
       RDY_icache_inst_response_put,
       rx_rx_from_stage0_deq_ena,
       tx_tx_commitlog_enq_ena,
       tx_tx_to_stage2_enq_ena;

  // inlined wires
  wire ff_memory_response_dequeueing_whas, tx_tostage2_w_ena_whas;

  // register rg_action
  reg rg_action;
  wire rg_action_D_IN, rg_action_EN;

  // register rg_eEpoch
  reg rg_eEpoch;
  wire rg_eEpoch_D_IN, rg_eEpoch_EN;

  // register rg_prev
  reg [93 : 0] rg_prev;
  wire [93 : 0] rg_prev_D_IN;
  wire rg_prev_EN;

  // register rg_receiving_upper
  reg rg_receiving_upper;
  wire rg_receiving_upper_D_IN, rg_receiving_upper_EN;

  // register rg_wEpoch
  reg rg_wEpoch;
  wire rg_wEpoch_D_IN, rg_wEpoch_EN;

  // ports of submodule ff_memory_response_beforeDeq
  wire ff_memory_response_beforeDeq_D_IN,
       ff_memory_response_beforeDeq_EN,
       ff_memory_response_beforeDeq_Q_OUT;

  // ports of submodule ff_memory_response_beforeEnq
  wire ff_memory_response_beforeEnq_D_IN, ff_memory_response_beforeEnq_EN;

  // ports of submodule ff_memory_response_ff
  wire [41 : 0] ff_memory_response_ff_D_IN, ff_memory_response_ff_D_OUT;
  wire ff_memory_response_ff_CLR,
       ff_memory_response_ff_DEQ,
       ff_memory_response_ff_EMPTY_N,
       ff_memory_response_ff_ENQ,
       ff_memory_response_ff_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_ff_memory_response_dequeue,
       CAN_FIRE_RL_ff_memory_response_enqueue,
       CAN_FIRE_RL_process_instruction,
       CAN_FIRE_common_ma_csr_misa_c,
       CAN_FIRE_common_ma_update_eEpoch,
       CAN_FIRE_common_ma_update_wEpoch,
       CAN_FIRE_icache_inst_response_put,
       CAN_FIRE_rx_rx_from_stage0_first,
       CAN_FIRE_rx_rx_from_stage0_first_deq_rdy,
       CAN_FIRE_rx_rx_from_stage0_notEmpty,
       CAN_FIRE_tx_tx_commitlog_enq_rdy,
       CAN_FIRE_tx_tx_commitlog_notFull,
       CAN_FIRE_tx_tx_to_stage2_enq_rdy,
       CAN_FIRE_tx_tx_to_stage2_notFull,
       WILL_FIRE_RL_ff_memory_response_dequeue,
       WILL_FIRE_RL_ff_memory_response_enqueue,
       WILL_FIRE_RL_process_instruction,
       WILL_FIRE_common_ma_csr_misa_c,
       WILL_FIRE_common_ma_update_eEpoch,
       WILL_FIRE_common_ma_update_wEpoch,
       WILL_FIRE_icache_inst_response_put,
       WILL_FIRE_rx_rx_from_stage0_first,
       WILL_FIRE_rx_rx_from_stage0_first_deq_rdy,
       WILL_FIRE_rx_rx_from_stage0_notEmpty,
       WILL_FIRE_tx_tx_commitlog_enq_rdy,
       WILL_FIRE_tx_tx_commitlog_notFull,
       WILL_FIRE_tx_tx_to_stage2_enq_rdy,
       WILL_FIRE_tx_tx_to_stage2_notFull;

  // remaining internal signals
  wire [63 : 0] rx_rx_from_stage0_first_x_BITS_63_TO_0__q1,
		x1_avValue_fst_address__h3873,
		x1_avValue_fst_address__h3879,
		x1_avValue_snd_fst_address__h3882,
		x1_avValue_snd_fst_address__h3885,
		x1_avValue_snd_snd_snd_pc__h3572,
		x1_avValue_snd_snd_snd_pc__h3576,
		x1_avValue_snd_snd_snd_snd_pc__h3471,
		x1_avValue_snd_snd_snd_snd_snd_pc__h3538,
		x1_avValue_snd_snd_snd_snd_snd_snd_pc__h3580,
		x1_avValue_snd_snd_snd_snd_snd_snd_pc__h3584,
		x_pc__h3386,
		x_pc__h3851,
		y_avValue_fst_address__h3876;
  wire [31 : 0] IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43,
		final_instruction___1__h4260,
		final_instruction__h3353,
		pipedata_instruction__h4111,
		y_avValue_snd_fst__h3548,
		y_avValue_snd_snd_snd_fst__h3400,
		y_avValue_snd_snd_snd_fst__h3425,
		y_avValue_snd_snd_snd_fst__h3427,
		y_avValue_snd_snd_snd_fst__h3486,
		y_avValue_snd_snd_snd_fst__h3488;
  wire [15 : 0] x1_avValue_snd_snd_snd_instruction__h3573,
		x1_avValue_snd_snd_snd_instruction__h3577,
		x1_avValue_snd_snd_snd_snd_instruction__h3472,
		x1_avValue_snd_snd_snd_snd_snd_instruction__h3539,
		x1_avValue_snd_snd_snd_snd_snd_snd_instruction__h3581,
		x1_avValue_snd_snd_snd_snd_snd_snd_instruction__h3585,
		x_instruction__h3387;
  wire [13 : 0] rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_CONCAT_IF_rg__ETC___d129;
  wire [11 : 0] IF_IF_ff_memory_response_ff_i_notEmpty_THEN_ff_ETC___d125,
		IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d126,
		IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d127,
		IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d185;
  wire [6 : 0] cause__h3741;
  wire [2 : 0] IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d183,
	       IF_wr_csr_misa_c_wget__7_THEN_IF_IF_rx_fromsta_ETC___d181;
  wire [1 : 0] curr_epoch__h1681,
	       x__h2244,
	       y__h1762,
	       y_avValue_fst_prediction__h4168,
	       y_avValue_fst_prediction__h4181;
  wire IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d95,
       IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d165,
       IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d192,
       IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d77,
       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d162,
       IF_rg_prev_6_BIT_11_5_THEN_rg_prev_6_BITS_2_TO_ETC___d68,
       IF_rx_fromstage0_w_data_whas__3_THEN_rx_fromst_ETC___d74,
       NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d134,
       NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d62,
       NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d87,
       ff_memory_response_beforeDeq_read_AND_ff_memor_ETC___d19,
       rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60,
       rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31;

  // action method rx_rx_from_stage0_notEmpty
  assign CAN_FIRE_rx_rx_from_stage0_notEmpty = 1'd1 ;
  assign WILL_FIRE_rx_rx_from_stage0_notEmpty = 1'd1 ;

  // action method rx_rx_from_stage0_first_deq_rdy
  assign CAN_FIRE_rx_rx_from_stage0_first_deq_rdy = 1'd1 ;
  assign WILL_FIRE_rx_rx_from_stage0_first_deq_rdy = 1'd1 ;

  // action method rx_rx_from_stage0_first
  assign CAN_FIRE_rx_rx_from_stage0_first = 1'd1 ;
  assign WILL_FIRE_rx_rx_from_stage0_first = 1'd1 ;

  // value method rx_rx_from_stage0_deq_ena
  assign rx_rx_from_stage0_deq_ena = ff_memory_response_dequeueing_whas ;

  // action method tx_tx_to_stage2_notFull
  assign CAN_FIRE_tx_tx_to_stage2_notFull = 1'd1 ;
  assign WILL_FIRE_tx_tx_to_stage2_notFull = 1'd1 ;

  // action method tx_tx_to_stage2_enq_rdy
  assign CAN_FIRE_tx_tx_to_stage2_enq_rdy = 1'd1 ;
  assign WILL_FIRE_tx_tx_to_stage2_enq_rdy = 1'd1 ;

  // value method tx_tx_to_stage2_enq_ena
  assign tx_tx_to_stage2_enq_ena = tx_tostage2_w_ena_whas ;

  // value method tx_tx_to_stage2_enq_data
  assign tx_tx_to_stage2_enq_data =
	     { rg_receiving_upper &&
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d162,
	       IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d165,
	       IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d185,
	       x_pc__h3851,
	       pipedata_instruction__h4111,
	       curr_epoch__h1681,
	       IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d192,
	       cause__h3741 } ;

  // action method tx_tx_commitlog_notFull
  assign CAN_FIRE_tx_tx_commitlog_notFull = 1'd1 ;
  assign WILL_FIRE_tx_tx_commitlog_notFull = 1'd1 ;

  // action method tx_tx_commitlog_enq_rdy
  assign CAN_FIRE_tx_tx_commitlog_enq_rdy = 1'd1 ;
  assign WILL_FIRE_tx_tx_commitlog_enq_rdy = 1'd1 ;

  // value method tx_tx_commitlog_enq_ena
  assign tx_tx_commitlog_enq_ena = tx_tostage2_w_ena_whas ;

  // value method tx_tx_commitlog_enq_data
  assign tx_tx_commitlog_enq_data =
	     { 2'bxx /* unspecified value */ ,
	       x_pc__h3851,
	       y_avValue_snd_snd_snd_fst__h3400,
	       2'd0,
	       209'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */  } ;

  // action method icache_inst_response_put
  assign RDY_icache_inst_response_put = ff_memory_response_ff_FULL_N ;
  assign CAN_FIRE_icache_inst_response_put = ff_memory_response_ff_FULL_N ;
  assign WILL_FIRE_icache_inst_response_put = EN_icache_inst_response_put ;

  // action method common_ma_update_eEpoch
  assign RDY_common_ma_update_eEpoch = 1'd1 ;
  assign CAN_FIRE_common_ma_update_eEpoch = 1'd1 ;
  assign WILL_FIRE_common_ma_update_eEpoch = EN_common_ma_update_eEpoch ;

  // action method common_ma_update_wEpoch
  assign RDY_common_ma_update_wEpoch = 1'd1 ;
  assign CAN_FIRE_common_ma_update_wEpoch = 1'd1 ;
  assign WILL_FIRE_common_ma_update_wEpoch = EN_common_ma_update_wEpoch ;

  // action method common_ma_csr_misa_c
  assign RDY_common_ma_csr_misa_c = 1'd1 ;
  assign CAN_FIRE_common_ma_csr_misa_c = 1'd1 ;
  assign WILL_FIRE_common_ma_csr_misa_c = EN_common_ma_csr_misa_c ;

  // submodule ff_memory_response_beforeDeq
  RevertReg #(.width(32'd1),
	      .init(1'd1)) ff_memory_response_beforeDeq(.CLK(CLK),
							.D_IN(ff_memory_response_beforeDeq_D_IN),
							.EN(ff_memory_response_beforeDeq_EN),
							.Q_OUT(ff_memory_response_beforeDeq_Q_OUT));

  // submodule ff_memory_response_beforeEnq
  RevertReg #(.width(32'd1),
	      .init(1'd1)) ff_memory_response_beforeEnq(.CLK(CLK),
							.D_IN(ff_memory_response_beforeEnq_D_IN),
							.EN(ff_memory_response_beforeEnq_EN),
							.Q_OUT());

  // submodule ff_memory_response_ff
  FIFO2 #(.width(32'd42), .guarded(1'd0)) ff_memory_response_ff(.RST(RST_N),
								.CLK(CLK),
								.D_IN(ff_memory_response_ff_D_IN),
								.ENQ(ff_memory_response_ff_ENQ),
								.DEQ(ff_memory_response_ff_DEQ),
								.CLR(ff_memory_response_ff_CLR),
								.D_OUT(ff_memory_response_ff_D_OUT),
								.FULL_N(ff_memory_response_ff_FULL_N),
								.EMPTY_N(ff_memory_response_ff_EMPTY_N));

  // rule RL_process_instruction
  assign CAN_FIRE_RL_process_instruction =
	     ff_memory_response_beforeDeq_read_AND_ff_memor_ETC___d19 &&
	     rx_rx_from_stage0_notEmpty_b &&
	     tx_tx_to_stage2_notFull_b ;
  assign WILL_FIRE_RL_process_instruction = CAN_FIRE_RL_process_instruction ;

  // rule RL_ff_memory_response_enqueue
  assign CAN_FIRE_RL_ff_memory_response_enqueue =
	     EN_icache_inst_response_put &&
	     (!ff_memory_response_dequeueing_whas ||
	      ff_memory_response_ff_EMPTY_N) ;
  assign WILL_FIRE_RL_ff_memory_response_enqueue =
	     CAN_FIRE_RL_ff_memory_response_enqueue ;

  // rule RL_ff_memory_response_dequeue
  assign CAN_FIRE_RL_ff_memory_response_dequeue =
	     ff_memory_response_dequeueing_whas &&
	     ff_memory_response_ff_EMPTY_N ;
  assign WILL_FIRE_RL_ff_memory_response_dequeue =
	     CAN_FIRE_RL_ff_memory_response_dequeue ;

  // inlined wires
  assign tx_tostage2_w_ena_whas =
	     WILL_FIRE_RL_process_instruction &&
	     rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 &&
	     NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d134 ;
  assign ff_memory_response_dequeueing_whas =
	     WILL_FIRE_RL_process_instruction &&
	     (rg_prev[15:14] == 2'b11 || rg_action ||
	      !rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31 ||
	      !rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60) ;

  // register rg_action
  assign rg_action_D_IN =
	     !rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 ||
	     !rg_action &&
	     rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31 ||
	     IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d95 ;
  assign rg_action_EN =
	     WILL_FIRE_RL_process_instruction &&
	     (NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d87 ||
	      !rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60) ;

  // register rg_eEpoch
  assign rg_eEpoch_D_IN = ~rg_eEpoch ;
  assign rg_eEpoch_EN = EN_common_ma_update_eEpoch ;

  // register rg_prev
  assign rg_prev_D_IN =
	     { x_pc__h3386,
	       x_instruction__h3387,
	       rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_CONCAT_IF_rg__ETC___d129 } ;
  assign rg_prev_EN = CAN_FIRE_RL_process_instruction ;

  // register rg_receiving_upper
  assign rg_receiving_upper_D_IN =
	     rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 &&
	     IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d77 ;
  assign rg_receiving_upper_EN =
	     WILL_FIRE_RL_process_instruction &&
	     NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d62 ;

  // register rg_wEpoch
  assign rg_wEpoch_D_IN = ~rg_wEpoch ;
  assign rg_wEpoch_EN = EN_common_ma_update_wEpoch ;

  // submodule ff_memory_response_beforeDeq
  assign ff_memory_response_beforeDeq_D_IN = 1'd1 ;
  assign ff_memory_response_beforeDeq_EN =
	     ff_memory_response_dequeueing_whas ;

  // submodule ff_memory_response_beforeEnq
  assign ff_memory_response_beforeEnq_D_IN = 1'd1 ;
  assign ff_memory_response_beforeEnq_EN = EN_icache_inst_response_put ;

  // submodule ff_memory_response_ff
  assign ff_memory_response_ff_D_IN = icache_inst_response_put ;
  assign ff_memory_response_ff_ENQ = CAN_FIRE_RL_ff_memory_response_enqueue ;
  assign ff_memory_response_ff_DEQ = CAN_FIRE_RL_ff_memory_response_dequeue ;
  assign ff_memory_response_ff_CLR = 1'b0 ;

  // remaining internal signals
  module_fn_decompress instance_fn_decompress_0(.fn_decompress_inst(final_instruction__h3353[15:0]),
						.fn_decompress(final_instruction___1__h4260));
  assign IF_IF_ff_memory_response_ff_i_notEmpty_THEN_ff_ETC___d125 =
	     (IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] ==
	      2'b11) ?
	       rg_prev[11:0] :
	       (common_ma_csr_misa_c_c ?
		  rx_rx_from_stage0_first_x[75:64] :
		  rg_prev[11:0]) ;
  assign IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d126 =
	     (rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c) ?
	       ((IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[17:16] ==
		 2'b11) ?
		  rx_rx_from_stage0_first_x[75:64] :
		  rg_prev[11:0]) :
	       IF_IF_ff_memory_response_ff_i_notEmpty_THEN_ff_ETC___d125 ;
  assign IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d183 =
	     (rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c) ?
	       { y_avValue_fst_prediction__h4168,
		 rx_rx_from_stage0_first_x[75] &&
		 rx_rx_from_stage0_first_x[64] } :
	       ((IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] ==
		 2'b11) ?
		  rx_rx_from_stage0_first_x[66:64] :
		  IF_wr_csr_misa_c_wget__7_THEN_IF_IF_rx_fromsta_ETC___d181) ;
  assign IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d95 =
	     (rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c) ?
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[17:16] !=
	       2'b11 :
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] ==
	       2'b11 ||
	       !rx_rx_from_stage0_first_x[75] &&
	       !IF_rx_fromstage0_w_data_whas__3_THEN_rx_fromst_ETC___d74 ;
  assign IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d127 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       ((rg_prev[15:14] == 2'b11) ?
		  rx_rx_from_stage0_first_x[75:64] :
		  rg_prev[11:0]) :
	       IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d126 ;
  assign IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d165 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       rg_prev[15:14] != 2'b11 :
	       ((rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c) ?
		  IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[17:16] !=
		  2'b11 :
		  IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] !=
		  2'b11 &&
		  common_ma_csr_misa_c_c) ;
  assign IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d185 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       { rg_prev[11:3], x__h2244, rg_prev[11] && rg_prev[0] } :
	       { rx_rx_from_stage0_first_x[75:67],
		 IF_IF_rx_fromstage0_w_data_whas__3_THEN_rx_fro_ETC___d183 } ;
  assign IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d192 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       rg_prev[15:14] == 2'b11 &&
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d162 :
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d162 ;
  assign IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d77 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       rg_prev[15:14] == 2'b11 &&
	       IF_rg_prev_6_BIT_11_5_THEN_rg_prev_6_BITS_2_TO_ETC___d68 :
	       rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c ||
	       rx_rx_from_stage0_first_x[75] ||
	       IF_rx_fromstage0_w_data_whas__3_THEN_rx_fromst_ETC___d74 ;
  assign IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d162 =
	     ff_memory_response_ff_EMPTY_N ?
	       ff_memory_response_ff_D_OUT[9] :
	       icache_inst_response_put[9] ;
  assign IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43 =
	     ff_memory_response_ff_EMPTY_N ?
	       ff_memory_response_ff_D_OUT[41:10] :
	       icache_inst_response_put[41:10] ;
  assign IF_rg_prev_6_BIT_11_5_THEN_rg_prev_6_BITS_2_TO_ETC___d68 =
	     x__h2244 <= 2'd1 ;
  assign IF_rx_fromstage0_w_data_whas__3_THEN_rx_fromst_ETC___d74 =
	     rx_rx_from_stage0_first_x[66:65] <= 2'd1 ;
  assign IF_wr_csr_misa_c_wget__7_THEN_IF_IF_rx_fromsta_ETC___d181 =
	     common_ma_csr_misa_c_c ?
	       { y_avValue_fst_prediction__h4181,
		 !rx_rx_from_stage0_first_x[75] &&
		 rx_rx_from_stage0_first_x[64] } :
	       rx_rx_from_stage0_first_x[66:64] ;
  assign NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d134 =
	     !rg_action &&
	     rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31 ||
	     !rx_rx_from_stage0_first_x[76] ||
	     !common_ma_csr_misa_c_c ||
	     IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[17:16] !=
	     2'b11 ;
  assign NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d62 =
	     !rg_action &&
	     rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31 ||
	     rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c &&
	     IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[17:16] ==
	     2'b11 ||
	     !rx_rx_from_stage0_first_x[76] &&
	     IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] !=
	     2'b11 &&
	     common_ma_csr_misa_c_c ||
	     !rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 ;
  assign NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO_12__ETC___d87 =
	     !rg_action &&
	     rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31 &&
	     (!IF_rg_prev_6_BIT_11_5_THEN_rg_prev_6_BITS_2_TO_ETC___d68 ||
	      rg_prev[15:14] != 2'b11) ||
	     (rg_action ||
	      !rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) &&
	     (IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] ==
	      2'b11 ||
	      common_ma_csr_misa_c_c) ;
  assign cause__h3741 =
	     ff_memory_response_ff_EMPTY_N ?
	       ff_memory_response_ff_D_OUT[8:2] :
	       icache_inst_response_put[8:2] ;
  assign curr_epoch__h1681 = { rg_eEpoch, rg_wEpoch } ;
  assign ff_memory_response_beforeDeq_read_AND_ff_memor_ETC___d19 =
	     ff_memory_response_beforeDeq_Q_OUT &&
	     (ff_memory_response_ff_EMPTY_N || EN_icache_inst_response_put) &&
	     EN_common_ma_csr_misa_c &&
	     rx_rx_from_stage0_first_deq_rdy_b &&
	     tx_tx_commitlog_enq_rdy_b &&
	     tx_tx_to_stage2_enq_rdy_b ;
  assign final_instruction__h3353 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       y_avValue_snd_snd_snd_fst__h3425 :
	       y_avValue_snd_snd_snd_fst__h3427 ;
  assign pipedata_instruction__h4111 =
	     (rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 &&
	      IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d165) ?
	       final_instruction___1__h4260 :
	       final_instruction__h3353 ;
  assign rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_CONCAT_IF_rg__ETC___d129 =
	     { curr_epoch__h1681,
	       rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 ?
		 IF_NOT_rg_action_4_5_AND_rg_prev_6_BITS_13_TO__ETC___d127 :
		 rg_prev[11:0] } ;
  assign rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 =
	     curr_epoch__h1681 == y__h1762 ;
  assign rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31 =
	     rg_prev[13:12] == curr_epoch__h1681 ;
  assign rx_rx_from_stage0_first_x_BITS_63_TO_0__q1 =
	     rx_rx_from_stage0_first_x[63:0] ;
  assign x1_avValue_fst_address__h3873 =
	     { rg_prev[93:32], 1'd1, rg_prev[30] } ;
  assign x1_avValue_fst_address__h3879 =
	     (IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[17:16] ==
	      2'b11) ?
	       rx_rx_from_stage0_first_x[63:0] :
	       y_avValue_fst_address__h3876 ;
  assign x1_avValue_snd_fst_address__h3882 =
	     (rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c) ?
	       x1_avValue_fst_address__h3879 :
	       rx_rx_from_stage0_first_x[63:0] ;
  assign x1_avValue_snd_fst_address__h3885 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       x1_avValue_fst_address__h3873 :
	       x1_avValue_snd_fst_address__h3882 ;
  assign x1_avValue_snd_snd_snd_instruction__h3573 =
	     common_ma_csr_misa_c_c ?
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[31:16] :
	       rg_prev[29:14] ;
  assign x1_avValue_snd_snd_snd_instruction__h3577 =
	     (IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] ==
	      2'b11) ?
	       rg_prev[29:14] :
	       x1_avValue_snd_snd_snd_instruction__h3573 ;
  assign x1_avValue_snd_snd_snd_pc__h3572 =
	     common_ma_csr_misa_c_c ?
	       rx_rx_from_stage0_first_x[63:0] :
	       rg_prev[93:30] ;
  assign x1_avValue_snd_snd_snd_pc__h3576 =
	     (IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] ==
	      2'b11) ?
	       rg_prev[93:30] :
	       x1_avValue_snd_snd_snd_pc__h3572 ;
  assign x1_avValue_snd_snd_snd_snd_instruction__h3472 =
	     (rg_prev[15:14] == 2'b11) ?
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[31:16] :
	       rg_prev[29:14] ;
  assign x1_avValue_snd_snd_snd_snd_pc__h3471 =
	     (rg_prev[15:14] == 2'b11) ?
	       rx_rx_from_stage0_first_x[63:0] :
	       rg_prev[93:30] ;
  assign x1_avValue_snd_snd_snd_snd_snd_instruction__h3539 =
	     (IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[17:16] ==
	      2'b11) ?
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[31:16] :
	       rg_prev[29:14] ;
  assign x1_avValue_snd_snd_snd_snd_snd_pc__h3538 =
	     (IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[17:16] ==
	      2'b11) ?
	       rx_rx_from_stage0_first_x[63:0] :
	       rg_prev[93:30] ;
  assign x1_avValue_snd_snd_snd_snd_snd_snd_instruction__h3581 =
	     (rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c) ?
	       x1_avValue_snd_snd_snd_snd_snd_instruction__h3539 :
	       x1_avValue_snd_snd_snd_instruction__h3577 ;
  assign x1_avValue_snd_snd_snd_snd_snd_snd_instruction__h3585 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       x1_avValue_snd_snd_snd_snd_instruction__h3472 :
	       x1_avValue_snd_snd_snd_snd_snd_snd_instruction__h3581 ;
  assign x1_avValue_snd_snd_snd_snd_snd_snd_pc__h3580 =
	     (rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c) ?
	       x1_avValue_snd_snd_snd_snd_snd_pc__h3538 :
	       x1_avValue_snd_snd_snd_pc__h3576 ;
  assign x1_avValue_snd_snd_snd_snd_snd_snd_pc__h3584 =
	     (!rg_action &&
	      rg_prev_6_BITS_13_TO_12_7_EQ_rg_eEpoch_8_CONCA_ETC___d31) ?
	       x1_avValue_snd_snd_snd_snd_pc__h3471 :
	       x1_avValue_snd_snd_snd_snd_snd_snd_pc__h3580 ;
  assign x__h2244 = rg_prev[11] ? rg_prev[2:1] : 2'd1 ;
  assign x_instruction__h3387 =
	     rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 ?
	       x1_avValue_snd_snd_snd_snd_snd_snd_instruction__h3585 :
	       rg_prev[29:14] ;
  assign x_pc__h3386 =
	     rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 ?
	       x1_avValue_snd_snd_snd_snd_snd_snd_pc__h3584 :
	       rg_prev[93:30] ;
  assign x_pc__h3851 =
	     rg_eEpoch_8_CONCAT_rg_wEpoch_9_0_EQ_IF_ff_memo_ETC___d60 ?
	       x1_avValue_snd_fst_address__h3885 :
	       rx_rx_from_stage0_first_x[63:0] ;
  assign y__h1762 =
	     ff_memory_response_ff_EMPTY_N ?
	       ff_memory_response_ff_D_OUT[1:0] :
	       icache_inst_response_put[1:0] ;
  assign y_avValue_fst_address__h3876 =
	     { rx_rx_from_stage0_first_x_BITS_63_TO_0__q1[63:2],
	       1'd1,
	       rx_rx_from_stage0_first_x_BITS_63_TO_0__q1[0] } ;
  assign y_avValue_fst_prediction__h4168 =
	     rx_rx_from_stage0_first_x[75] ?
	       rx_rx_from_stage0_first_x[66:65] :
	       2'd1 ;
  assign y_avValue_fst_prediction__h4181 =
	     rx_rx_from_stage0_first_x[75] ?
	       2'd1 :
	       rx_rx_from_stage0_first_x[66:65] ;
  assign y_avValue_snd_fst__h3548 =
	     { 16'd0,
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[15:0] } ;
  assign y_avValue_snd_snd_snd_fst__h3400 = final_instruction__h3353 ;
  assign y_avValue_snd_snd_snd_fst__h3425 =
	     { (rg_prev[15:14] == 2'b11) ?
		 IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[15:0] :
		 16'd0,
	       rg_prev[29:14] } ;
  assign y_avValue_snd_snd_snd_fst__h3427 =
	     (rx_rx_from_stage0_first_x[76] && common_ma_csr_misa_c_c) ?
	       y_avValue_snd_snd_snd_fst__h3486 :
	       y_avValue_snd_snd_snd_fst__h3488 ;
  assign y_avValue_snd_snd_snd_fst__h3486 =
	     { 16'd0,
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[31:16] } ;
  assign y_avValue_snd_snd_snd_fst__h3488 =
	     (IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43[1:0] ==
	      2'b11) ?
	       IF_ff_memory_response_ff_i_notEmpty_THEN_ff_me_ETC___d43 :
	       y_avValue_snd_fst__h3548 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_action <= `BSV_ASSIGNMENT_DELAY 1'd1;
	rg_eEpoch <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_prev <= `BSV_ASSIGNMENT_DELAY
	    94'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
	rg_receiving_upper <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_wEpoch <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (rg_action_EN) rg_action <= `BSV_ASSIGNMENT_DELAY rg_action_D_IN;
	if (rg_eEpoch_EN) rg_eEpoch <= `BSV_ASSIGNMENT_DELAY rg_eEpoch_D_IN;
	if (rg_prev_EN) rg_prev <= `BSV_ASSIGNMENT_DELAY rg_prev_D_IN;
	if (rg_receiving_upper_EN)
	  rg_receiving_upper <= `BSV_ASSIGNMENT_DELAY rg_receiving_upper_D_IN;
	if (rg_wEpoch_EN) rg_wEpoch <= `BSV_ASSIGNMENT_DELAY rg_wEpoch_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_action = 1'h0;
    rg_eEpoch = 1'h0;
    rg_prev = 94'h2AAAAAAAAAAAAAAAAAAAAAAA;
    rg_receiving_upper = 1'h0;
    rg_wEpoch = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkstage1

