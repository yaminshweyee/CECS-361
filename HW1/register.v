`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:55:18 09/09/2018 
// Design Name: 
// Module Name:    register 
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
module register( Din, clk, rst, Dout);
input [19:0] Din;
input clk, rst;
output [19:0] Dout;
wire [19:0] Din;
wire clk, rst;
reg [19:0] Dout;

always @(posedge clk , posedge rst)
begin 
		if(rst)

		     Dout <= 20'b0;
		
		else
		
				Dout <= Din;
end			
endmodule
