`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:08 09/09/2018 
// Design Name: 
// Module Name:    mux 
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
module mux( D, A, B, sel);
output [19:0] D;
input [19:0] A,B;
input sel;
reg [19:0] D;

always@(*)
if (sel == 1'b0)
	D = A;
	else
	D = B;
	
endmodule
