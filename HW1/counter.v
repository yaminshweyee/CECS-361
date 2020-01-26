`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:       Yamin Shwe YEE
// 
// Create Date:    13:24:21 09/09/2018 
// Design Name: 
// Module Name:    counter 
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
module counter(clk, rst, sel, Q);
//inputs
input clk, rst, sel;
//outputs
output [19:0] Q ;

//define wires
wire [19:0] D;

//Registers
reg [19:0] Q;

//Wire Assign
assign D = (sel)? 20'b0 : Q;

//Register Block 
always@(posedge clk, posedge rst)
if ( rst ) Q <= 20'b0;
else 
			count <= D + 20'b1 ;
end

endmodule
