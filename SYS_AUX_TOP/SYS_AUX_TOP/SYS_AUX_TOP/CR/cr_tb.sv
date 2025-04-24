`timescale 1us/1ns
module cr_tb ();
   
parameter CLK_PERIOD = 10;     // 100 KHz

////////// DUT Signals //////////////

// *********** Inputs ************ //
reg          clk_tb;
reg          rst_n_tb;  
// LPM
reg        lpm_start_cr_tb;
reg        driving_param_vld_tb;
reg        config_param_vld_tb;         
reg [7:0]  vtg_tb;
reg [7:0]  pre_tb;
reg [7:0]  link_bw_cr_tb;
reg [1:0]  link_lc_cr_tb;
reg        cr_done_vld_tb;                  
reg [3:0]  cr_done_tb;
reg [1:0]  max_vtg_tb;                   
reg [1:0]  max_pre_tb;                      
// EQ ERR CHK
reg [7:0]  new_bw_eq_tb;
reg [1:0]  new_lc_eq_tb;  
reg        err_chk_cr_start_tb; 
// CTR
reg        cr_ctr_fire_tb;
// AUX CTRL Unit
reg        ctrl_ack_flag_tb;
reg        ctrl_native_failed_tb;     

// ********** Outputs ************ //
// LPM & CR ERR CHK
wire        fsm_cr_failed_tb;
wire        cr_completed_tb;
// CTR
wire        cr_ctr_start_tb;
// AUX CTRL Unit
wire        cr_transaction_vld_tb; 
wire [1:0]  cr_cmd_tb;
wire [19:0] cr_address_tb;
wire [7:0]  cr_len_tb;
wire [7:0]  cr_data_tb;
// EQ FSM
wire        eq_start_tb; 
wire [7:0]  new_vtg_tb;
wire [7:0]  new_pre_tb;
wire [7:0]  new_bw_tb;
wire [1:0]  new_lc_tb;
// PHY Layer
wire [1:0]  cr_phy_instruct_tb;
wire        cr_phy_instruct_vld_tb;
wire [1:0]  cr_adj_lc_tb;
wire [7:0]  cr_adj_bw_tb;   


/////// Design Instaniation /////////
cr_top DUT (
// *********** Inputs *********** //
.clk(clk_tb),
.rst_n(rst_n_tb),
// LPM
.lpm_start_cr(lpm_start_cr_tb),
.driving_param_vld(driving_param_vld_tb),
.config_param_vld(config_param_vld_tb),
.vtg(vtg_tb),
.pre(pre_tb),
.link_bw_cr(link_bw_cr_tb),
.link_lc_cr(link_lc_cr_tb),
.cr_done_vld(cr_done_vld_tb),
.cr_done(cr_done_tb),
.max_vtg(max_vtg_tb),
.max_pre(max_pre_tb),
// EQ ERR CHK
.new_bw_eq(new_bw_eq_tb),
.new_lc_eq(new_lc_eq_tb),
.err_chk_cr_start(err_chk_cr_start_tb),
// CTR
.cr_ctr_fire(cr_ctr_fire_tb),
// AUX CTRL Unit
.ctrl_ack_flag(ctrl_ack_flag_tb),
.ctrl_native_failed(ctrl_native_failed_tb),

// *********** Outputs *********** //
// LPM & CR ERR CHK
.fsm_cr_failed(fsm_cr_failed_tb),
.cr_completed(cr_completed_tb),
// CTR
.cr_ctr_start(cr_ctr_start_tb),
// AUX CTRL Unit
.cr_transaction_vld(cr_transaction_vld_tb),
.cr_cmd(cr_cmd_tb),
.cr_address(cr_address_tb),
.cr_len(cr_len_tb),
.cr_data(cr_data_tb),
// EQ FSM
.eq_start(eq_start_tb),
.new_vtg(new_vtg_tb),
.new_pre(new_pre_tb),
.new_bw(new_bw_tb),
.new_lc(new_lc_tb),
// PHY Layer
.cr_phy_instruct(cr_phy_instruct_tb),
.cr_phy_instruct_vld(cr_phy_instruct_vld_tb),
.cr_adj_lc(cr_adj_lc_tb),
.cr_adj_bw(cr_adj_bw_tb) 
);

/////////// Clock Generator /////////
always #(CLK_PERIOD/2) clk_tb = ~clk_tb;


////////// initial block ///////////
initial
 begin
 // Initialization
 initialize();
 // Reset
 reset(); 


 ///////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////// Test Case 1 (Successful CR Operation without any Error (4 Lanes)) //////////////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////

 lpm_drive(1'b1, 1'b1, 1'b1, 8'b0000_0000, 8'b0000_0000, 8'h1E, 2'b11, 1'b0, 4'b0000, 2'b11, 2'b11); // Start CR Phase - LEVEL 0 VTG and PRE - Level 3 BW - 4 Lanes - Level 3 for MAX VTG and PRE
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b1111, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)


 ///////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////// Test Case 2 (Successful CR Operation without any Error (2 Lanes)) //////////////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////

 lpm_drive(1'b1, 1'b1, 1'b1, 8'b0000_0000, 8'b0000_0000, 8'h14, 2'b01, 1'b0, 4'b0000, 2'b11, 2'b11); // Start CR Phase - LEVEL 0 VTG and PRE - Level 2 BW - 2 Lanes - Level 3 for MAX VTG and PRE
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 104h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b0011, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)
 

 ///////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////// Test Case 3 (Successful CR Operation without any Error (1 Lanes)) //////////////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////

 lpm_drive(1'b1, 1'b1, 1'b1, 8'b0000_0000, 8'b0000_0000, 8'h14, 2'b00, 1'b0, 4'b0000, 2'b10, 2'b10); // Start CR Phase - LEVEL 0 VTG and PRE - Level 2 BW - 2 Lanes - Level 2 for MAX VTG and PRE
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b0001, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)


 ///////////////////////////////////////////////////////////////////////////////////////////////////
 ////////////// Test Case 4 (Successful CR Operation without any Error (4 Lanes)) //////////////////
 //////////////   Then EQ_ERR_CHK Requiest to restart CR with the Min BW and LC   //////////////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////

 lpm_drive(1'b1, 1'b1, 1'b1, 8'b0000_0000, 8'b0000_0000, 8'h1E, 2'b11, 1'b0, 4'b0000, 2'b11, 2'b11); // Start CR Phase - LEVEL 0 VTG and PRE - Level 3 BW - 4 Lanes - Level 3 for MAX VTG and PRE
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b1111, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)
 eq_err_chk_drive(1'b1, 8'h06, 2'b00);  // EQ_ERR_CHK Requiest to Restart the CR Phase again with Level 0 BW (RBR) and 1 Lane
 lpm_drive(1'b0, 1'b1, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // Assert driving_param_vld and set LEVEL 0 VTG and PRE
 #(CLK_PERIOD) 
 eq_err_chk_drive(1'b0, 8'h00, 2'b00);  // Clear the data
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // Assert vld signal and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b1111, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)


 ///////////////////////////////////////////////////////////////////////////////////////////////////
 //////////////            Test Case 5 (Failed CR Operation (2 Lanes))            //////////////////
 ///////// Sink Requiest to change VTG and PRE to LVL 2 for lane 0 and LVL 3 for lane 1 ////////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////

 lpm_drive(1'b1, 1'b1, 1'b1, 8'b0000_0000, 8'b0000_0000, 8'h14, 2'b01, 1'b0, 4'b0000, 2'b11, 2'b11); // Start CR Phase - LEVEL 0 VTG and PRE - Level 2 BW - 2 Lanes - Level 3 for MAX VTG and PRE
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 104h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b0001, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits (Failed)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading The Requiested VTG and PRE to be adjusted by the sink
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b1, 1'b0, 8'b0000_1110, 8'b0000_1110, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // Assert driving_param_vld and set LEVEL 2 for lane 0 and LEVEL 3 for lane 1 (VTG and PRE)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 104h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b0011, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits (Success)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)


 ///////////////////////////////////////////////////////////////////////////////////////////////////
 //////////////            Test Case 6 (Failed CR Operation (4 Lanes))            //////////////////
 //////////////   Sink Requiest to change VTG and PRE to LVL 1 for the 4 lanes    //////////////////
 //////////////  Then it Requiest to change VTG and PRE to LVL 1 for the 4 lanes  //////////////////
 //////////////  Then it Requiest to change VTG and PRE to LVL 2 for the 4 lanes  //////////////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////

 lpm_drive(1'b1, 1'b1, 1'b1, 8'b0000_0000, 8'b0000_0000, 8'h1E, 2'b11, 1'b0, 4'b0000, 2'b11, 2'b11); // Start CR Phase - LEVEL 0 VTG and PRE - Level 3 BW - 4 Lanes - Level 3 for MAX VTG and PRE
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b0101, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits (Failed)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading The Requiested VTG and PRE to be adjusted by the sink
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b1, 1'b0, 8'b0101_0101, 8'b0101_0101, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // Assert driving_param_vld and set LEVEL 1 for the 4 lanes (VTG and PRE)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b1010, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits (Failed)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading The Requiested VTG and PRE to be adjusted by the sink
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b1, 1'b0, 8'b0101_0101, 8'b0101_0101, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // Assert driving_param_vld and set LEVEL 1 for the 4 lanes (VTG and PRE)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b1010, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits (Failed)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading The Requiested VTG and PRE to be adjusted by the sink
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b1, 1'b0, 8'b1010_1010, 8'b1010_1010, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // Assert driving_param_vld and set LEVEL 2 for the 4 lanes (VTG and PRE)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b1111, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits (Success)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)


 ///////////////////////////////////////////////////////////////////////////////////////////////////
 //////////////            Test Case 7 (Failed CR Operation (4 Lanes))            //////////////////
 //////////////   Sink Requiest to change VTG and PRE to LVL 3 for the 4 lanes    //////////////////
 /////// Then The Source decide to reduce the BW from Level 3 (8'h1E) to Level 2 (8'h14) ///////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////

 lpm_drive(1'b1, 1'b1, 1'b1, 8'b0000_0000, 8'b0000_0000, 8'h1E, 2'b11, 1'b0, 4'b0000, 2'b11, 2'b11); // Start CR Phase - LEVEL 0 VTG and PRE - Level 3 BW - 4 Lanes - Level 3 for MAX VTG and PRE
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b0101, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits (Failed)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading The Requiested VTG and PRE to be adjusted by the sink
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b1, 1'b0, 8'b1111_1111, 8'b1111_1111, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // Assert driving_param_vld and set LEVEL 3 for the 4 lanes (VTG and PRE)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 /// Reduce BW
 #(20*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b1111, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)


 ///////////////////////////////////////////////////////////////////////////////////////////////////
 //////////////    Test Case 8 (Failed CR Operation (4 Lanes) - (Level 0 BW))     //////////////////
 //////////////   Sink Requiest to change VTG and PRE to LVL 3 for the 4 lanes    //////////////////
 /////// Then The Source decide to reduce the LC from 4 Lanes (2'b11) to 2 lanes (2'b01) ///////////
 ///////////////////////////////////////////////////////////////////////////////////////////////////

 lpm_drive(1'b1, 1'b1, 1'b1, 8'b0000_0000, 8'b0000_0000, 8'h06, 2'b11, 1'b0, 4'b0000, 2'b11, 2'b11); // Start CR Phase - LEVEL 0 VTG and PRE - Level 0 BW - 4 Lanes - Level 3 for MAX VTG and PRE
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b0001, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits (Failed)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading The Requiested VTG and PRE to be adjusted by the sink
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b1, 1'b0, 8'b1111_1111, 8'b1111_1111, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // Assert driving_param_vld and set LEVEL 3 for the 4 lanes (VTG and PRE)
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 // Reduce LC
 #(20*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing the BW and LC and clearing 8b10b_DP_TRAINING_PATTERN_SELECT through regs (100h to 102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing 21h on the 8b10b_DP_TRAINING_PATTERN_SELECT to set TPS1 reg (102h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on writing VTG and PRE for the supported lanes regs (103h to 106h)
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(20*CLK_PERIOD)
 ctr_drive(1'b1); // CTR Fires
 #(CLK_PERIOD)
 ctr_drive(1'b0); // De-assert CTR
 #(10*CLK_PERIOD)
 aux_ctrl_unit_drive(1'b1, 1'b0); // CTRL Unit ACK on Reading CR Done Bits
 #(CLK_PERIOD)
 aux_ctrl_unit_drive(1'b0, 1'b0); // De-assert ACK 
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b1, 4'b1111, 2'b00, 2'b00); // Assert cr_dobe_vld siganls and send cr_done bits
 #(CLK_PERIOD)
 lpm_drive(1'b0, 1'b0, 1'b0, 8'b0000_0000, 8'b0000_0000, 8'h00, 2'b00, 1'b0, 4'b0000, 2'b00, 2'b00); // De-assert Vld siganls and clear the data
 #(20*CLK_PERIOD)

 ///////////////////////////////////////////////////////////////////////////////////////////////////
 #(20*CLK_PERIOD) 
 $stop;

end
 
/////////////////////// TASKS //////////////////////////

// Signals Initialization
task initialize;
  begin
	clk_tb                 = 1'b0;
	rst_n_tb               = 1'b1;    // rst is deactivated
	// LPM
    lpm_start_cr_tb        = 1'b0;
    driving_param_vld_tb   = 1'b0;
    config_param_vld_tb    = 1'b0;        
    vtg_tb                 =  'b0;
    pre_tb                 =  'b0;
    link_bw_cr_tb          =  'b0;
    link_lc_cr_tb          =  'b0;
    cr_done_vld_tb         = 1'b0;                   
    cr_done_tb             =  'b0;
    max_vtg_tb             =  'b0;        
    max_pre_tb             =  'b0;                      
    // EQ ERR CHK
    new_bw_eq_tb           =  'b0; 
    new_lc_eq_tb           =  'b0;   
    err_chk_cr_start_tb    = 1'b0; 
    // CTR
    cr_ctr_fire_tb         = 1'b0;
    // AUX CTRL Unit
    ctrl_ack_flag_tb       = 1'b0;
    ctrl_native_failed_tb  = 1'b0;
  end
endtask

// RESET
task reset;
  begin
	#(CLK_PERIOD)
	rst_n_tb = 1'b0;    // rst is activated
	#(CLK_PERIOD)
	rst_n_tb = 1'b1;
	#(CLK_PERIOD);
  end
endtask  

// LPM Driver
task lpm_drive;
 input        drive_lpm_start_cr;
 input        drive_driving_param_vld;
 input        drive_config_param_vld;
 input [7:0]  drive_vtg;
 input [7:0]  drive_pre;
 input [7:0]  drive_link_bw_cr;
 input [1:0]  drive_link_lc_cr;
 input        drive_cr_done_vld;
 input [3:0]  drive_cr_done;
 input [1:0]  drive_max_vtg;
 input [1:0]  drive_max_pre;
begin
	lpm_start_cr_tb      = drive_lpm_start_cr;
	driving_param_vld_tb = drive_driving_param_vld;
	config_param_vld_tb  = drive_config_param_vld;
	vtg_tb               = drive_vtg;
	pre_tb               = drive_pre;
	link_bw_cr_tb        = drive_link_bw_cr;
	link_lc_cr_tb        = drive_link_lc_cr;
	cr_done_vld_tb       = drive_cr_done_vld;
	cr_done_tb           = drive_cr_done;
	max_vtg_tb           = drive_max_vtg;
	max_pre_tb           = drive_max_pre;	
end
endtask

// EQ ERR CHK Driver
task eq_err_chk_drive;
 input        drive_err_chk_cr_start;
 input [7:0]  drive_new_bw_eq;
 input [1:0]  drive_new_lc_eq;
begin
	err_chk_cr_start_tb  = drive_err_chk_cr_start;
	new_bw_eq_tb         = drive_new_bw_eq;
	new_lc_eq_tb         = drive_new_lc_eq;	
end
endtask

// CTR
task ctr_drive;
 input        drive_cr_ctr_fire;
begin
	cr_ctr_fire_tb = drive_cr_ctr_fire;
end
endtask

// AUX CTRL Unit Driver
task aux_ctrl_unit_drive;
 input        drive_ctrl_ack_flag;
 input        drive_ctrl_native_failed;
begin
	ctrl_ack_flag_tb      = drive_ctrl_ack_flag;
	ctrl_native_failed_tb = drive_ctrl_native_failed;
end
endtask

endmodule