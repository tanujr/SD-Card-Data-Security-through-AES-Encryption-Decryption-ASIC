// $Id: $
// File name:   scl_edge
// Created:     2/20/2017
// Author:      Gabriel Burke
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: SCL Edge Detector Block
module scl_edge
(
	input wire clk,
	input wire n_rst,
	input wire scl,
	output reg rising_edge_found,
	output reg falling_edge_found
);
reg scl_q1;
reg scl_q2;
reg falling_edge_found_;
reg rising_edge_found_;

always_ff @ (posedge clk, negedge n_rst)
begin
	if(n_rst == 1'b0)
	begin
		scl_q1<=1;
		scl_q2<=1;
		falling_edge_found<=0;
		rising_edge_found<=0;
	end
	else 
	begin
		scl_q1<=scl;
		scl_q2<=scl_q1;		
		falling_edge_found<=falling_edge_found_;	
		rising_edge_found<=rising_edge_found_;	
	end
end
always_comb
begin
	falling_edge_found_ = ~scl_q1 & scl_q2;
	rising_edge_found_ = scl_q1 & ~scl_q2;
end


endmodule