`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/04 15:29:19
// Design Name: 
// Module Name: shift_register_tb
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


module shift_register_tb;

reg clk, rst, in;
wire [3:0] out;

shift_register shift_register_tb(clk, rst, in, out);

initial begin
clk = 1'b0;
rst = 1'b0;
in = 1'b1;
end

always clk = #10 ~clk;
always in = #50 ~in;
initial rst <= #400 ~rst;

endmodule
