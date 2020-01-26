`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:20 09/09/2018 
// Design Name: 
// Module Name:    dff 
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
module dff( D, clk, rst, Q );
input rst, clk;
input [19:0] D;
output [19:0] Q;
reg Q;
always @(posedge clk, posedge rst)
	if (rst)
		Q <= 20'b0;
	else
		Q <= D;


endmodule
