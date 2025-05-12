onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group top /iso_top_tb/DUT/hbr3_clk
add wave -noupdate -expand -group top /iso_top_tb/DUT/hbr2_clk
add wave -noupdate -expand -group top /iso_top_tb/DUT/hbr_clk
add wave -noupdate -expand -group top /iso_top_tb/DUT/rbr_clk
add wave -noupdate -expand -group top /iso_top_tb/DUT/spm_bw_sel
add wave -noupdate -expand -group top /iso_top_tb/DUT/rst_n
add wave -noupdate -expand -group top /iso_top_tb/DUT/ms_pixel_data
add wave -noupdate -expand -group top /iso_top_tb/DUT/ms_stm_clk
add wave -noupdate -expand -group top /iso_top_tb/DUT/ms_de
add wave -noupdate -expand -group top /iso_top_tb/DUT/ms_stm_bw
add wave -noupdate -expand -group top /iso_top_tb/DUT/ms_stm_bw_valid
add wave -noupdate -expand -group top /iso_top_tb/DUT/ms_vsync
add wave -noupdate -expand -group top /iso_top_tb/DUT/ms_hsync
add wave -noupdate -expand -group top /iso_top_tb/DUT/spm_iso_start
add wave -noupdate -expand -group top /iso_top_tb/DUT/spm_lane_count
add wave -noupdate -expand -group top /iso_top_tb/DUT/spm_lane_bw
add wave -noupdate -expand -group top /iso_top_tb/DUT/spm_msa
add wave -noupdate -expand -group top /iso_top_tb/DUT/spm_msa_vld
add wave -noupdate -expand -group top /iso_top_tb/DUT/ms_rst_n
add wave -noupdate -expand -group top -color Cyan -radix hexadecimal /iso_top_tb/DUT/iso_symbols_lane0
add wave -noupdate -expand -group top -color Cyan /iso_top_tb/DUT/iso_control_sym_flag_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/iso_symbols_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/iso_control_sym_flag_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/iso_symbols_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/iso_control_sym_flag_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/iso_symbols_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/iso_control_sym_flag_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/wfull
add wave -noupdate -expand -group top /iso_top_tb/DUT/ls_clk
add wave -noupdate -expand -group top /iso_top_tb/DUT/td_misc0_1
add wave -noupdate -expand -group top /iso_top_tb/DUT/td_lane_count
add wave -noupdate -expand -group top /iso_top_tb/DUT/td_vld_data
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_steering_en
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_state
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_en_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_en_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_en_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_en_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_blank_id
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_blank_state
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_blank_en_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_blank_en_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_blank_en_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_blank_en_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_idle_en_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_idle_en_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_idle_en_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_idle_en_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_idle_sel_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_idle_sel_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_idle_sel_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/sched_stream_idle_sel_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/idle_activate_en_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/idle_activate_en_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/idle_activate_en_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/idle_activate_en_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/main_steered_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/main_steered_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/main_steered_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/main_steered_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/blank_steering_state_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/blank_steering_state_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/blank_steering_state_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/blank_steering_state_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/sec_steered_lane0
add wave -noupdate -expand -group top /iso_top_tb/DUT/sec_steered_lane1
add wave -noupdate -expand -group top /iso_top_tb/DUT/sec_steered_lane2
add wave -noupdate -expand -group top /iso_top_tb/DUT/sec_steered_lane3
add wave -noupdate -expand -group top /iso_top_tb/DUT/sec_steered_vld
add wave -noupdate -expand -group top /iso_top_tb/DUT/fifo_pixel_data
add wave -noupdate -expand -group top /iso_top_tb/DUT/rd_data_valid
add wave -noupdate -expand -group top /iso_top_tb/DUT/fifo_almost_empty
add wave -noupdate -expand -group top /iso_top_tb/DUT/mbs_empty_regs
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/IDLE
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/BS
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/START
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/VBLANK
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/HBLANK
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/BE
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/ACTIVE_VLD
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/FS
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/ACTIVE_STUFFING
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/FE
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/clk
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/rst_n
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_vld_data
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_scheduler_start
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_lane_count
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_h_blank_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_h_active_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_v_blank_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_v_active_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_tu_vld_data_size
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_tu_stuffed_data_size
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_hsync
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_vsync
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_hsync_polarity
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_vsync_polarity
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_de
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_tu_alternate_up
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_tu_alternate_down
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_h_total_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/idle_activate_en_lane0
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/idle_activate_en_lane1
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/idle_activate_en_lane2
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/idle_activate_en_lane3
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_steering_en
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_state
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_en_lane0
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_en_lane1
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_en_lane2
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_en_lane3
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_blank_id
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_blank_state
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_blank_en_lane0
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_blank_en_lane1
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_blank_en_lane2
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_blank_en_lane3
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_idle_en_lane0
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_idle_en_lane1
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_idle_en_lane2
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_idle_en_lane3
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_idle_sel_lane0
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_idle_sel_lane1
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_idle_sel_lane2
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/sched_stream_idle_sel_lane3
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/current_state
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/next_state
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/h_blank_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/h_active_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/v_blank_ctr
add wave -noupdate -expand -group sched -color Yellow -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/v_active_ctr
add wave -noupdate -expand -group sched -color Yellow -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/h_total_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/tu_vld_data_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/tu_stuffed_data_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/alternate_up_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/alternate_down_ctr
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/h_blank_ctr_reg
add wave -noupdate -expand -group sched -color Yellow -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/h_active_ctr_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/v_blank_ctr_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/v_active_ctr_reg
add wave -noupdate -expand -group sched -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/h_total_ctr_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/tu_vld_data_ctr_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/tu_stuffed_data_ctr_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/alternate_up_ctr_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/alternate_down_ctr_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_scheduler_start_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_lane_count_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_h_blank_ctr_max
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_h_active_ctr_max
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_v_blank_ctr_max
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_v_active_ctr_max
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_tu_vld_data_size_min
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_tu_stuffed_data_size_max
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_hsync_polarity_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_vsync_polarity_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_tu_alternate_up_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_tu_alternate_down_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_h_total_ctr_max
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/max_stuffing_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_hsync_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_vsync_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/td_de_reg
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/v_blank_flag
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/h_blank_flag
add wave -noupdate -expand -group sched /iso_top_tb/DUT/iso_ctrl_top_0/iso_scheduler_0/alternate_up_flag
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/TU_SIZE
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/FP_PRECISION
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/clk
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/rst_n
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/ms_de
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/ms_stm_bw
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/ms_stm_bw_valid
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/ms_vsync
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/ms_hsync
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_iso_start
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_lane_count
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_lane_bw
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/htotal
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hwidth
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/vtotal
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/vheight
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/misc0
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/misc1
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_msa_vld
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/h_sync_polarity
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/v_sync_polarity
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_vld_data
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_scheduler_start
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_lane_count
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_h_blank_ctr
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_h_active_ctr
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_v_blank_ctr
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_v_active_ctr
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_tu_vld_data_size
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_tu_stuffed_data_size
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_hsync
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_vsync
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_de
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_tu_alternate_up
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_tu_alternate_down
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_h_total_ctr
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_hsync_polarity
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_vsync_polarity
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/td_misc0_1
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/bpp
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/bpc
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/symbols_per_pixel
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/symbol_bit_size
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/x_value
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_iso_start_pulse
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_iso_start_d
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/saving_flag
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/ms_stm_bw_sync
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/ms_stm_bw_saved
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hactive_div_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hactive_width_equivalent
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hactive_stage1_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hactive_stage2_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hactive_stage3_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hactive_stage4_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hactive_valid
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hactive_pipeline_counter
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hblank_div_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hblank_width_equivalent
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hblank_stage1_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hblank_stage2_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hblank_stage3_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hblank_stage4_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hblank_valid
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hblank_pipeline_counter
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/vblank
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/vblank_valid
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/stage1_total_bits
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/stage2_total_symbols
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/stage3_symbols_per_lane
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/stage4_symbols_per_TU
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/stage5_mult_result
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/stage6_scaled_valid_symbols
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/valid_symbols_integer
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/valid_symbols_fraction
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/valid_symbols_fraction_scaled
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/first_decimal
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/second_decimal
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/rounded_first_decimal
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/stuffing_pipeline_counter
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/stuffing_valid
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/alternate_valid
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/tu_alternate_up
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/tu_alternate_down
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hsync_shift_reg
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/vsync_shift_reg
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/de_shift_reg
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_iso_start_shift_reg
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_lane_count_sync
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/spm_lane_bw_sync
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/htotal_sync
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/hwidth_sync
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/vtotal_sync
add wave -noupdate -group TD -radix unsigned /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/vheight_sync
add wave -noupdate -group TD /iso_top_tb/DUT/iso_ctrl_top_0/timing_decision_block_0/misc0_1_sync
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/active_symbols
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/active_control_sym_flag
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/blank_symbols
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/blank_control_sym_flag
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/idle_symbols
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/idle_control_sym_flag
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/sched_stream_idle_sel
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/mux_idle_stream_symbols
add wave -noupdate -group stream_idle_mux /iso_top_tb/DUT/iso_lanes_top_0/stream_idle_mux_x/mux_control_sym_flag
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/BS
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/BF
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/SR
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/clk
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/rst_n
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/mux_control_sym_flag
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/mux_idle_stream_symbols
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/iso_control_sym_flag
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/iso_symbols
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/current_state
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/next_state
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/bs_counter
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/replace_with_sr
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/bs_complete
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/iso_symbols_comb
add wave -noupdate -group sr_insertion /iso_top_tb/DUT/iso_lanes_top_0/sr_insertion_x/iso_control_sym_flag_comb
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/BS
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/BF
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/VB_ID
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/MVID
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/MAUD
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/DUMMY
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/clk
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/rst_n
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/sched_idle_en
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/idle_symbols
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/idle_control_sym_flag
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/idle_activate_en
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/current_state
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/next_state
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/symbol_counter
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/last_dummy_symbol
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/idle_symbols_comb
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/idle_control_sym_flag_comb
add wave -noupdate -group idle_pattern /iso_top_tb/DUT/iso_lanes_top_0/idle_pattern_x/idle_activate_en_comb
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/clk
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/rst_n
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/sched_blank_en
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/sched_blank_id
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/sched_blank_state
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/td_lane_count
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/sec_steered_out
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/sec_steered_vld
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/blank_steering_state
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/blank_control_sym_flag
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/blank_symbols
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/msa_done
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/msa_state
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/bs_symbols_ctr
add wave -noupdate -group blank_mapper /iso_top_tb/DUT/iso_lanes_top_0/blank_mapper_x/start_symbols_ctr
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/clk
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/rst_n
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/sched_stream_en
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/sched_stream_state
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/main_steered
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/am_active_symbol
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/am_control_sym_flag
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/active_symbol_reg
add wave -noupdate -group active_mapper /iso_top_tb/DUT/iso_lanes_top_0/active_mapper_x/control_sym_flag_reg
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/DATA_WIDTH
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/FIFO_DEPTH
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/WPTR_WIDTH
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/RPTR_WIDTH
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/NUM_STAGES
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/ADDR_WIDTH
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/wr_data
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/winc
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/rinc
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/wclk
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/wrst_n
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/rclk
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/rrst_n
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/wfull
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/wr_addr
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/rd_addr
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/gray_rd_ptr
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/gray_wr_ptr
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/sync_wr_ptr
add wave -noupdate -expand -group fifo /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/sync_rd_ptr
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/clk
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/rst_n
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/td_lane_count
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/td_vld_data
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/spm_msa
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/spm_vld
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/blank_steering_state0
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/blank_steering_state1
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/blank_steering_state2
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/blank_steering_state3
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/sec_steered_lane0
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/sec_steered_lane1
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/sec_steered_lane2
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/sec_steered_lane3
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/sec_steered_lane_vld
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/blank_steering_state
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/memory
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/i
add wave -noupdate -group sec_bus_steering /iso_top_tb/DUT/sec_bus_steering_0/lane_count_sync
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/IDLE_SYMBOL
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/RGB_8BPC
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/RGB_16BPC
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/YCBCR_8BPC
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/YCBCR_16BPC
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/rst_n
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/sched_steering_en
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/td_vld_data
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/td_lane_count
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/td_misc0_1
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/fifo_pixel_data
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/rd_data_valid
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/main_steered_lane0
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/main_steered_lane1
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/main_steered_lane2
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/main_steered_lane3
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/lane_count_reg
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/misc_reg
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/empty_regs
add wave -noupdate -expand -group main_bus_steering -color {Medium Spring Green} /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/rd_data
add wave -noupdate -expand -group main_bus_steering -color {Spring Green} /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/rd_data_valid
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/clk
add wave -noupdate -expand -group main_bus_steering -radix unsigned /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u2/bn_rptr
add wave -noupdate -expand -group main_bus_steering -radix unsigned /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u2/bn_wptr
add wave -noupdate -expand -group main_bus_steering -color Yellow /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/rempty
add wave -noupdate -expand -group main_bus_steering -color Orange -radix hexadecimal -childformat {{{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[127]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[126]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[125]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[124]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[123]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[122]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[121]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[120]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[119]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[118]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[117]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[116]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[115]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[114]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[113]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[112]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[111]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[110]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[109]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[108]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[107]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[106]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[105]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[104]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[103]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[102]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[101]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[100]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[99]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[98]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[97]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[96]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[95]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[94]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[93]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[92]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[91]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[90]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[89]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[88]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[87]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[86]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[85]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[84]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[83]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[82]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[81]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[80]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[79]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[78]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[77]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[76]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[75]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[74]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[73]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[72]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[71]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[70]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[69]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[68]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[67]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[66]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[65]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[64]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[63]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[62]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[61]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[60]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[59]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[58]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[57]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[56]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[55]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[54]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[53]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[52]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[51]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[50]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[49]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[48]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[47]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[46]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[45]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[44]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[43]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[42]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[41]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[40]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[39]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[38]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[37]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[36]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[35]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[34]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[33]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[32]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[31]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[30]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[29]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[28]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[27]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[26]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[25]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[24]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[23]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[22]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[21]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[20]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[19]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[18]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[17]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[16]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[15]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[14]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[13]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[12]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[11]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[10]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[9]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[8]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[7]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[6]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[5]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[4]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[3]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[2]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[1]} -radix hexadecimal} {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[0]} -radix hexadecimal}} -subitemconfig {{/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[127]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[126]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[125]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[124]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[123]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[122]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[121]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[120]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[119]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[118]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[117]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[116]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[115]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[114]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[113]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[112]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[111]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[110]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[109]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[108]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[107]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[106]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[105]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[104]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[103]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[102]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[101]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[100]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[99]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[98]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[97]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[96]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[95]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[94]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[93]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[92]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[91]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[90]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[89]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[88]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[87]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[86]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[85]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[84]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[83]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[82]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[81]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[80]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[79]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[78]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[77]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[76]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[75]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[74]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[73]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[72]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[71]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[70]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[69]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[68]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[67]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[66]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[65]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[64]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[63]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[62]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[61]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[60]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[59]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[58]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[57]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[56]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[55]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[54]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[53]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[52]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[51]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[50]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[49]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[48]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[47]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[46]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[45]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[44]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[43]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[42]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[41]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[40]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[39]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[38]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[37]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[36]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[35]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[34]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[33]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[32]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[31]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[30]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[29]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[28]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[27]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[26]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[25]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[24]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[23]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[22]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[21]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[20]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[19]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[18]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[17]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[16]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[15]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[14]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[13]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[12]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[11]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[10]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[9]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[8]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[7]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[6]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[5]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[4]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[3]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[2]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[1]} {-color Orange -height 15 -radix hexadecimal} {/iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer[0]} {-color Orange -height 15 -radix hexadecimal}} /iso_top_tb/DUT/ASYNC_FIFO_TOP_0/u0/fifo_buffer
add wave -noupdate -expand -group main_bus_steering -radix hexadecimal -childformat {{{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[7]} -radix hexadecimal} {{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[6]} -radix hexadecimal} {{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[5]} -radix hexadecimal} {{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[4]} -radix hexadecimal} {{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[3]} -radix hexadecimal} {{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[2]} -radix hexadecimal} {{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[1]} -radix hexadecimal} {{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[0]} -radix hexadecimal}} -expand -subitemconfig {{/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[7]} {-height 15 -radix hexadecimal} {/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[6]} {-height 15 -radix hexadecimal} {/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[5]} {-height 15 -radix hexadecimal} {/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[4]} {-height 15 -radix hexadecimal} {/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[3]} {-height 15 -radix hexadecimal} {/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[2]} {-height 15 -radix hexadecimal} {/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[1]} {-height 15 -radix hexadecimal} {/iso_top_tb/DUT/main_stream_bus_steering_0/reg_file[0]} {-height 15 -radix hexadecimal}} /iso_top_tb/DUT/main_stream_bus_steering_0/reg_file
add wave -noupdate -expand -group main_bus_steering -color Red -radix unsigned /iso_top_tb/DUT/main_stream_bus_steering_0/empty_count
add wave -noupdate -expand -group main_bus_steering -radix unsigned /iso_top_tb/DUT/main_stream_bus_steering_0/pulse_counter
add wave -noupdate -expand -group main_bus_steering -color Cyan -radix unsigned /iso_top_tb/DUT/main_stream_bus_steering_0/write_index
add wave -noupdate -expand -group main_bus_steering -color {Cornflower Blue} /iso_top_tb/DUT/main_stream_bus_steering_0/mbs_empty_regs
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/fifo_almost_empty
add wave -noupdate -expand -group main_bus_steering -radix hexadecimal /iso_top_tb/DUT/main_stream_bus_steering_0/main_steered_lane0_comb
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/main_steered_lane1_comb
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/main_steered_lane2_comb
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/main_steered_lane3_comb
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/current_state
add wave -noupdate -expand -group main_bus_steering /iso_top_tb/DUT/main_stream_bus_steering_0/next_state
add wave -noupdate /iso_top_tb/DUT/main_stream_bus_steering_0/empty_regs
add wave -noupdate /iso_top_tb/DUT/main_stream_bus_steering_0/read_enable
add wave -noupdate /iso_top_tb/DUT/main_stream_bus_steering_0/read_index
add wave -noupdate /iso_top_tb/DUT/main_stream_bus_steering_0/read_counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {592508607282 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 211
configure wave -valuecolwidth 61
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {592480561626 fs} {592654559167 fs}
