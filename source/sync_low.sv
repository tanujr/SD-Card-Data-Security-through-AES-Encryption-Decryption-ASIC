// $Id: $
// File name:   sync_low.sv
// Created:     1/24/2017
// Author:      Gabriel Burke
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: sync low file
module sync_low
(
	input reg n_rst,
	input reg async_in,
	input reg clk,
	output wire sync_out,
	output wire meta
);
	reg metastate;
	reg finalstate;
	always_ff @ (posedge clk, negedge n_rst)
	begin
		if(1'b0 == n_rst)
		begin
			metastate <= 1'b0;
		end
		else
		begin
			metastate <= async_in;
		end
	end

	
	always_ff @ (posedge clk, negedge n_rst)
	begin
		if(1'b0 == n_rst)
		begin
			finalstate <= 1'b0;
		end
		else
		begin
			finalstate <= metastate;
		end
	end
	
	assign sync_out = finalstate;
	assign meta = metastate;
endmodule