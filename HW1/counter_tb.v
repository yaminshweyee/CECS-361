`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:08:01 09/09/2018
// Design Name:   counter
// Module Name:   C:/Users/Laura Rice/Documents/CECS 361/HW1/counter_tb.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire tick;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.rst(rst), 
		.tick(tick)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

