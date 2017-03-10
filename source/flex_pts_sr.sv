// $Id: $
// File name:   flex_stp_sr.sv
// Created:     1/30/2017
// Author:      Gabriel Burke
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Flexible PtS SR
module flex_pts_sr
#(
	parameter NUM_BITS = 4,
	parameter SHIFT_MSB = 1
)
(
	input wire clk,
	input wire n_rst,
	input wire shift_enable,
	input wire load_enable,
	input reg[NUM_BITS-1:0] parallel_in,
	output reg serial_out
);

reg[NUM_BITS-1:0] state;
reg[NUM_BITS-1:0] nextstate;

always_comb
begin
	if(load_enable)
	begin
		nextstate=parallel_in;
	end
	else
	begin
		if(shift_enable)	
		begin
			if(SHIFT_MSB)
			begin
				nextstate[NUM_BITS-1:1]=state[NUM_BITS-2:0];
				nextstate[0]=1'b1;
			end
			else
			begin
				nextstate[NUM_BITS-2:0]=state[NUM_BITS-1:1];
				nextstate[NUM_BITS-1]=1'b1;
			end
		end
		else
		begin
			nextstate=state;
		end
	end

	
end

always_ff @ (posedge clk, negedge n_rst)
begin
	if(n_rst == 1'b0)
	begin
		state <= '1;
	end
	else if (load_enable)
		state<=parallel_in;
	else
		state<=nextstate;
	
			
end

always_comb
begin
	if(SHIFT_MSB)
		serial_out<=state[NUM_BITS-1];
	else
		serial_out<=state[0];	
		
end

endmodule