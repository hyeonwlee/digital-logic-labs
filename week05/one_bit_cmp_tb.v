`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/25 15:26:26
// Design Name: 
// Module Name: one_bit_cmp_tb
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


module one_bit_cmp_tb;

reg aa,bb;

wire c,d,e,f;

one_bit_cmp u_one_bit_cmp (
.a(aa),
.b(bb),
.c(c),
.d(d),
.e(e),
.f(f));

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
