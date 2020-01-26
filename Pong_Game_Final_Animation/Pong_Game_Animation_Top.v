`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:54 11/18/2018 
// Design Name: 
// Module Name:    Pong_Game_Animation_Top 
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
//////////////////////////////////////////////////////////////////////////////////\
module Pong_Game_Animation_Top( clk, rst, btn, hsync, vsync, rgb );

//Input
input wire clk, rst;
input wire [1:0] btn;

//output
output wire hsync, vsync;
output wire [11:0] rgb;

//signal declaration
wire [9:0] pixel_x, pixel_y;
wire video_on;

//registers
reg  [11:0] rgb_reg;
wire [11:0] rgb_next;

//      VGA
//      vga_sync(clk, rst,hsync, vsync, video_on, pixel_x, pixel_y);
vga_sync vsync1( .clk(clk), .rst(rst), .hsync(hsync), .vsync(vsync), .video_on(video_on),
					  .pixel_x(pixel_x), .pixel_y(pixel_y));
					
//Pong Graph Animation

pga_final pga1( .clk(clk), .rst(rst), .btn(btn), .video_on(video_on), 
			.pixel_x(pixel_x), .pixel_y(pixel_y), .g_rgb(rgb_next));

assign rgb = rgb_next; 								  



endmodule
