//=======================================================================
// Module: RPTR_EMPTY
// Author: Mohammed Tersawy
// Description: 
// This module implements the read pointer and empty flag logic for an 
// asynchronous FIFO. It includes functionality for gray-to-binary 
// conversion of the write pointer, binary-to-gray conversion of the 
// read pointer, and calculation of the empty flag based on the 
// difference between the read and write pointers. The module ensures 
// proper synchronization between the read and write domains and 
// provides an almost empty signal to indicate when the FIFO is nearly 
// empty. The read address is derived from the binary read pointer, 
// and the empty flag is updated based on the almost empty condition.
//======================================================================

`default_nettype none  // Disable implicit net declarations to avoid unintended wire declarations.

module RPTR_EMPTY 
#( 
   parameter WPTR_WIDTH = 4 , 
   parameter RPTR_WIDTH = 4 , 
   parameter ADDR_WIDTH = 3
)
(
	input  wire                  rinc ,        // Read increment signal to indicate a read operation.
	input  wire [RPTR_WIDTH-1:0] gray_wr_ptr , // Gray-coded write pointer from the write domain.
	input  wire                  rclk ,        // Read clock signal.
	input  wire                  rrst_n ,      // Active-low reset signal for the read domain.
	output wire                  rempty ,      // Empty flag indicating if the FIFO is alnmost empty.
	output wire [ADDR_WIDTH-1:0] r_addr ,      // Read address derived from the binary read pointer.
	output reg  [WPTR_WIDTH-1:0] gray_rd_ptr   // Gray-coded read pointer for synchronization with the write domain.
);

reg [RPTR_WIDTH-1:0] bn_rptr ;      // Binary read pointer.
reg [WPTR_WIDTH-1:0] bn_wptr ;      // Binary write pointer (converted from gray_wr_ptr).
wire                 almost_empty ; // Flag asserted when the FIFO has less than 2 valid data slots.

//======================================================================
// SECTION 1: Gray to Binary Conversion for Write Pointer
//======================================================================
always_comb begin
	// Convert the gray-coded write pointer (gray_wr_ptr) to a binary write pointer (bn_wptr).
	case (gray_wr_ptr)
		4'b0000: bn_wptr <= 4'b0000;
		4'b0001: bn_wptr <= 4'b0001;
		4'b0011: bn_wptr <= 4'b0010;
		4'b0010: bn_wptr <= 4'b0011;
		4'b0110: bn_wptr <= 4'b0100;
		4'b0111: bn_wptr <= 4'b0101;
		4'b0101: bn_wptr <= 4'b0110;
		4'b0100: bn_wptr <= 4'b0111;
		4'b1100: bn_wptr <= 4'b1000;
		4'b1101: bn_wptr <= 4'b1001;
		4'b1111: bn_wptr <= 4'b1010;
		4'b1110: bn_wptr <= 4'b1011;
		4'b1010: bn_wptr <= 4'b1100;
		4'b1011: bn_wptr <= 4'b1101;
		4'b1001: bn_wptr <= 4'b1110;
		4'b1000: bn_wptr <= 4'b1111;
	endcase
end

//======================================================================
// SECTION 2: Almost Empty Signal Calculation
//======================================================================
assign almost_empty = ((bn_wptr - bn_rptr) <= 1); // Check if the difference between write and read pointers is less than 2 slots.
assign rempty = almost_empty ; // Set the empty flag based on the almost_empty condition.

//======================================================================
// SECTION 3: Binary Read Pointer Update
//======================================================================
always @(posedge rclk or negedge rrst_n) begin 
	// Update the binary read pointer (bn_rptr) on the rising edge of the read clock or reset.
	if(~rrst_n) 
	begin
		bn_rptr <= 'b0 ; // Reset the binary read pointer to 0.
	end 
	else 
	if ( rinc == 1'b1 && !almost_empty ) 
	begin
		bn_rptr <= bn_rptr + 'd2 ; // Increment the binary read pointer by 2 if rinc is asserted and FIFO is not almost empty.
	end 
end

//======================================================================
// SECTION 4: Read Address Calculation
//======================================================================
assign r_addr = bn_rptr[ADDR_WIDTH-1:0] ; // Extract the read address from the binary read pointer (excluding the MSB).

//======================================================================
// SECTION 5: Gray-Coded Read Pointer Update
//======================================================================
always @(posedge rclk or negedge rrst_n ) begin
	// Update the gray-coded read pointer (gray_rd_ptr) on the rising edge of the read clock or reset.
	if (~rrst_n) 
	begin
		gray_rd_ptr <= 'b0 ; // Reset the gray-coded read pointer to 0.
	end 
	else 
	begin
		gray_rd_ptr <= bn_rptr ^ (bn_rptr >> 1); // Convert the binary read pointer to gray code.
	end
end

endmodule 

`resetall  // Reset all compiler directives to their default values.
