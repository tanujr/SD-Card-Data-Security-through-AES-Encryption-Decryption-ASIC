// $Id: $
// File name:   tb_shift_rows.sv
// Created:     3/12/2017
// Author:      Gabriel Burke
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Test bench for shift rows
`timescale 1ns/10ps

module tb_shift_rows();

	// Define local constants
	localparam NUM_VAL_BITS	= 16;
	localparam MAX_VAL_BIT	= NUM_VAL_BITS - 1;
	localparam CHECK_DELAY	= 1ns;
	localparam CLK_PERIOD		= 10ns;
	
	
	
	// Test bench dut port signals
	reg [127:0]tb_in;
	reg [127:0]tb_out;

	
	// Test bench verification signals
	integer tb_test_case_num;
	

	
	// Clock gen block
/*
	always
	begin : CLK_GEN
		tb_clk = 1'b0;
		#(CLK_PERIOD / 2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD / 2.0);
	end
*/
	// DUT portmap
	shift_rows DUT(.in(tb_in),.out(tb_out));
	
	
	
	
	
	

	
	// Test bench process
	initial
	begin
		// Initial values
		tb_in='0;
		
		
		// Wait for some time before starting test cases
		#(1ns);
		tb_in=128'h00112233445566778899aabbccddeeff;
		#(12ns);
		if(tb_out == 128'h0055aaff4499ee3388dd2277cc1166bb)
		begin
			$info("Correct");
		end
		else
		begin
			$error("Incorrect");
		end
		
		
		// TODO: Add non standard test cases here
		
	end
endmodule