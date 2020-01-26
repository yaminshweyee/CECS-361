`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yamin Shwe Yee
// 
// Create Date:    16:05:13 09/11/2018 
// Design Name: 
// Module Name:    top 
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
module top( clk, rst, tick );
//inputs
input clk, rst;
//outputs
output tick;
//wire
wire [19:0] Q;

	//connects the modules
	
	//      counter(    clk,       rst,      sel,       Q);
	counter counter(.clk(clk), .rst(rst), .sel(tick), .Q(Q));
	
	//         comparator(         tick,  Q    );
	comparator comparator(  .tick(tick), .Q(Q) );
	


endmodule
