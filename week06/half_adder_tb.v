`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/02 14:56:57
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;

reg aa,bb;

wire s,c;

half_adder u_half_adder (
.a(aa),
.b(bb),
.s(s),
.c(c));

initial begin
    aa = 1'b0;
    bb = 1'b0;
end

always begin
    aa = #20 ~aa;
    bb = #40 ~bb;
end

initial begin
    #1000
    $finish;
end


endmodule
