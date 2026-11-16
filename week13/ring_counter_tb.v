`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/04 15:37:32
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb;

reg clk, rst;
wire [3:0] out;

ring_counter ring_counter_tb(clk, rst, out);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always clk = #10 ~clk;
initial rst <= #400 ~rst;

endmodule
