`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:       Yamin Shwe Yee
// 
// Create Date:    15:58:26 09/11/2018 
// Design Name: 
// Module Name:    comparator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module comparator( tick, Q );
//inputs
	input [19:0] Q;
//outputs 
	output tick;
	
//registers
	reg tick;
	
	always @(*) begin
		if ( !Q == 20'b11110100001000111111)
		
			tick = 1'b0;
			
		else
		
			tick = 1'b1;
			
		end
		
endmodule
