`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/04 15:47:51
// Design Name: 
// Module Name: updown_counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module updown_counter_tb;

reg clk, rst, up;
wire [3:0] out;
wire [6:0] segments;
wire dig;

updown_counter updown_counter_tb(clk, rst, up, out, segments, dig);

initial begin
clk = 1'b0;
rst = 1'b0;
up = 1'b1;
end

always clk = #10 ~clk;
always up = #160 ~up;
initial rst <= #400 ~rst;

endmodule
