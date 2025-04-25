`timescale 1ns/1ps
module iso_top_tb;
  // Parameters
  parameter hbr3_CLK_PERIOD = 1.2345;    // ~810MHz
  parameter hbr2_CLK_PERIOD = 1.8518;    // 540MHz
  parameter hbr_CLK_PERIOD = 3.7037;     // 270MHz
  parameter rbr_CLK_PERIOD = 6.1728;     // 162MHz
  parameter stm_CLK_PERIOD = 12.5;       // ~80MHz (pixel clock)
  
  // Dynamic clock period based on spm_bw_sel
  real CLK_PERIOD;  // Use real data type instead of reg to store floating-point values

  int i;
  
  // Testbench signals
  reg            hbr3_clk;
  reg            hbr2_clk;
  reg            hbr_clk;
  reg            rbr_clk;
  reg    [1:0]   spm_bw_sel;
  reg            rst_n;
  reg    [47:0]  ms_pixel_data;
  reg            ms_stm_clk;
  reg            ms_de;
  reg    [9:0]   ms_stm_bw;
  reg            ms_stm_bw_valid;
  reg            ms_vsync;
  reg            ms_hsync;
  reg            spm_iso_start;
  reg    [2:0]   spm_lane_count;
  reg    [15:0]  spm_lane_bw;
  reg    [191:0] spm_msa;
  reg            spm_msa_vld;
  reg            ms_rst_n;
  
  // DUT outputs
  wire    [7:0]   iso_symbols_lane0;
  wire            iso_control_sym_flag_lane0;
  wire    [7:0]   iso_symbols_lane1;
  wire            iso_control_sym_flag_lane1;
  wire    [7:0]   iso_symbols_lane2;
  wire            iso_control_sym_flag_lane2;
  wire    [7:0]   iso_symbols_lane3;
  wire            iso_control_sym_flag_lane3;
  wire            wfull;
  
  // Wire to track the selected clock for the DUT
  wire            ls_clk;
  
  // Instantiate the DUT (Device Under Test)
  iso_top DUT (
    .hbr3_clk(hbr3_clk),
    .hbr2_clk(hbr2_clk),
    .hbr_clk(hbr_clk),
    .rbr_clk(rbr_clk),
    .spm_bw_sel(spm_bw_sel),
    .rst_n(rst_n),
    .ms_pixel_data(ms_pixel_data),
    .ms_stm_clk(ms_stm_clk),
    .ms_de(ms_de),
    .ms_stm_bw(ms_stm_bw),
    .ms_stm_bw_valid(ms_stm_bw_valid),
    .ms_vsync(ms_vsync),
    .ms_hsync(ms_hsync),
    .spm_iso_start(spm_iso_start),
    .spm_lane_count(spm_lane_count),
    .spm_lane_bw(spm_lane_bw),
    .spm_msa(spm_msa),
    .spm_msa_vld(spm_msa_vld),
    .ms_rst_n(ms_rst_n),
    .iso_symbols_lane0(iso_symbols_lane0),
    .iso_control_sym_flag_lane0(iso_control_sym_flag_lane0),
    .iso_symbols_lane1(iso_symbols_lane1),
    .iso_control_sym_flag_lane1(iso_control_sym_flag_lane1),
    .iso_symbols_lane2(iso_symbols_lane2),
    .iso_control_sym_flag_lane2(iso_control_sym_flag_lane2),
    .iso_symbols_lane3(iso_symbols_lane3),
    .iso_control_sym_flag_lane3(iso_control_sym_flag_lane3),
    .wfull(wfull)
  );
  
  // Clock generation
  always #(hbr3_CLK_PERIOD/2) hbr3_clk = ~hbr3_clk;
  always #(hbr2_CLK_PERIOD/2) hbr2_clk = ~hbr2_clk;
  always #(hbr_CLK_PERIOD/2) hbr_clk = ~hbr_clk;
  always #(rbr_CLK_PERIOD/2) rbr_clk = ~rbr_clk;
  always #(stm_CLK_PERIOD/2) ms_stm_clk = ~ms_stm_clk;
  
  // Set the correct CLK_PERIOD based on spm_bw_sel
  always @(spm_bw_sel) begin
    case(spm_bw_sel)
      2'b00: CLK_PERIOD = rbr_CLK_PERIOD;    // RBR
      2'b01: CLK_PERIOD = hbr_CLK_PERIOD;    // HBR
      2'b10: CLK_PERIOD = hbr2_CLK_PERIOD;   // HBR2
      2'b11: CLK_PERIOD = hbr3_CLK_PERIOD;   // HBR3
      default: CLK_PERIOD = rbr_CLK_PERIOD;  // Default to RBR
    endcase
    $display("CLK_PERIOD updated to %0.2f ns based on spm_bw_sel = %b", CLK_PERIOD, spm_bw_sel);
  end
  
  // Monitor to track which clock is being used
  assign ls_clk = (spm_bw_sel == 2'b11) ? hbr3_clk :
                  (spm_bw_sel == 2'b10) ? hbr2_clk :
                  (spm_bw_sel == 2'b01) ? hbr_clk :
                  rbr_clk;
  
  // MSA fields - for easier access during simulation
  wire [15:0] htotal; 
  wire [15:0] hwidth;
  wire [15:0] vtotal;
  wire [15:0] vheight;
  wire [7:0]  misc0;
  wire [7:0]  misc1;
  wire        h_sync_polarity;
  wire        v_sync_polarity;

  assign htotal = spm_msa[63:48];
  assign hwidth = spm_msa[159:144];
  assign vtotal = spm_msa[79:64];
  assign vheight = spm_msa[175:160];
  assign misc0 = spm_msa[183:176];
  assign misc1 = spm_msa[191:184];
  assign h_sync_polarity = spm_msa[112];
  assign v_sync_polarity = spm_msa[128];

  // Task to initialize all inputs
  task initialize;
    begin
      hbr3_clk = 0;
      hbr2_clk = 0;
      hbr_clk = 0;
      rbr_clk = 0;
      ms_stm_clk = 0;
      
      spm_bw_sel = 2'b00;       // Default to RBR
      CLK_PERIOD = rbr_CLK_PERIOD; // Initialize CLK_PERIOD to RBR
      
      rst_n = 0;
      ms_rst_n = 0;
      ms_pixel_data = 48'h0;
      ms_de = 0;
      ms_stm_bw = 10'h0;
      ms_stm_bw_valid = 1'b0;
      ms_vsync = 0;
      ms_hsync = 0;
      spm_iso_start = 0;
      spm_lane_count = 3'b001;  // Default to 1 lane
      spm_lane_bw = 8'h0;
      spm_msa = 192'h0;
      spm_msa_vld = 0;
      
      // Wait for a few clock cycles
      #(CLK_PERIOD*5);
      
      // Release reset
      rst_n = 1;
      ms_rst_n = 1;
      
      #(CLK_PERIOD*5);
    end
  endtask

  // Task to configure MSA (Main Stream Attribute) data
  task configure_msa;
    input [15:0] h_total;
    input [15:0] h_width;
    input [15:0] v_total;
    input [15:0] v_height;
    input [7:0]  m0;       // misc0
    input [7:0]  m1;       // misc1
    input        h_pol;    // h_sync_polarity
    input        v_pol;    // v_sync_polarity
    
    begin
      spm_msa = 192'hABCDEFABCDEFABCDEFABCDEFABCDEFABCDEFABCDEFABCDEF;  // Initialize to zero
      
      // Now set specific fields
      spm_msa[63:48] = h_total;
      spm_msa[159:144] = h_width;
      spm_msa[79:64] = v_total;
      spm_msa[175:160] = v_height;
      spm_msa[183:176] = m0;
      spm_msa[191:184] = m1;
      spm_msa[112] = h_pol;
      spm_msa[128] = v_pol;
	  
	  
      
      // Validate MSA
      spm_msa_vld = 1;
      #(CLK_PERIOD);
      spm_msa_vld = 0;
    end
  endtask



  // Task to simulate different link bandwidths
  task set_link_bandwidth;
    input [1:0] bw_sel;  // 0=RBR, 1=HBR, 2=HBR2, 3=HBR3
    begin
      spm_bw_sel = bw_sel;
      case(bw_sel)
        2'b00: spm_lane_bw = 'd162;
        2'b01: spm_lane_bw = 'd270;
        2'b10: spm_lane_bw = 'd540;
        2'b11: spm_lane_bw = 'd810;
      endcase
      #(CLK_PERIOD*5); // Wait a bit after changing the clock selection
    end
  endtask

  // Task to set lane count
  task set_lane_count;
    input [2:0] lanes;  // 0=1 lane, 1=2 lanes, 2=4 lanes
    begin
      spm_lane_count = lanes;
      $display("Setting lane count to %d", 
               (lanes == 3'b001) ? 1 : 
               (lanes == 3'b010) ? 2 : 
               (lanes == 3'b100) ? 4 : 0);
      #(CLK_PERIOD*5);
    end
  endtask


  // Main test sequence
  initial begin
    $display("Starting ISO Top Module Testbench");
    
    // Initialize
    initialize();
    
    // Test 1: Basic configuration with 1 lane at RBR
    $display("\n----- Test 1: Basic 1-lane RBR Configuration -----");
    set_link_bandwidth(2'b00);  // hBR
    set_lane_count(3'b001);     // 1 lane
    
    // Configure MSA for 1920x1080 resolution
    configure_msa(
      16'd1760,     // h_total
      16'd1280,     // h_width
      16'd750,     // v_total
      16'd720,     // v_height
      8'b00100000,    // misc0----------------------
      8'b00000000,        // misc1----------------------
      1'b1,         // h_pol----------------------
      1'b1          // v_pol----------------------
    );
    
    // Start ISO mode
    spm_iso_start = 1;
    ms_pixel_data = 'd0;
    ms_stm_bw = 'd80;
    ms_stm_bw_valid = 1'b1;

	for (i = 1; i <= 2; i = i + 1)    // Frames
	  begin
		
		ms_de = 'd0;
		
		for (i = 1; i <= 10; i = i + 1) 
		  begin
			ms_vsync = 'd1;		  
			for (i = 1; i <= 200; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd1;
				#(stm_CLK_PERIOD);
        ms_stm_bw_valid = 1'b0;
			  end

			for (i = 1; i <= 80; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd0;
				#(stm_CLK_PERIOD);		
			  end
			  
			for (i = 1; i <= 1480; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd1;
				#(stm_CLK_PERIOD);		
			  end
		  end	  
		  
		for (i = 1; i <= 10; i = i + 1) 
		  begin
			ms_vsync = 'd0;		  
			for (i = 1; i <= 200; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd1;
				#(stm_CLK_PERIOD);
			  end

			for (i = 1; i <= 80; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd0;
				#(stm_CLK_PERIOD);		
			  end
			  
			for (i = 1; i <= 1480; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd1;
				#(stm_CLK_PERIOD);		
			  end
		  end	

		for (i = 1; i <= 10; i = i + 1) 
		  begin
			ms_vsync = 'd1;		  
			for (i = 1; i <= 200; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd1;
				#(stm_CLK_PERIOD);
			  end

			for (i = 1; i <= 80; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd0;
				#(stm_CLK_PERIOD);		
			  end
			  
			for (i = 1; i <= 1480; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd1;
				#(stm_CLK_PERIOD);		
			  end
		  end		  

    for (i = 1; i <= 200; i = i + 1) 
      begin
      ms_de = 'd0;
      ms_hsync = 'd1;
      #(stm_CLK_PERIOD);
      end

    for (i = 1; i <= 80; i = i + 1) 
      begin
      ms_de = 'd0;
      ms_hsync = 'd0;
      #(stm_CLK_PERIOD);		
      end

    for (i = 1; i <= 200; i = i + 1) 
      begin
      ms_de = 'd0;
      ms_hsync = 'd1;
      #(stm_CLK_PERIOD);
      end      

		for (i = 1; i <= 719; i = i + 1) 
		  begin    
			ms_pixel_data = 'hBB;
			ms_de = 'd1;
			#(1280*stm_CLK_PERIOD);	
			ms_pixel_data = 'h00;
			for (i = 1; i <= 200; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd1;
				#(stm_CLK_PERIOD);
			  end

			for (i = 1; i <= 80; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd0;
				#(stm_CLK_PERIOD);		
			  end
			  
			for (i = 1; i <= 200; i = i + 1) 
			  begin
				ms_de = 'd0;
				ms_hsync = 'd1;
				#(stm_CLK_PERIOD);		
			  end
		  end

			ms_pixel_data = 'hBB;
			ms_de = 'd1;
			#(1280*stm_CLK_PERIOD);	
			ms_pixel_data = 'h00;

	  end
	  
	  
    
    // End simulation
    $display("\n----- Testbench Complete -----");
    #(CLK_PERIOD*100);
    $stop;
  end


  // Optional: Generate waveform file
  initial begin
    $dumpfile("iso_top_tb.vcd");
    $dumpvars(0, iso_top_tb);
  end

endmodule