`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/16 15:58:03
// Design Name: 
// Module Name: two_bit_cmp_tb
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


module two_bit_cmp_tb;

reg aa,bb,cc,dd;

wire f1,f2,f3;

two_bit_cmp u_two_bit_cmp (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.f1(f1),
.f2(f2),
.f3(f3));

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always begin
    aa = #10 ~aa;
    bb = #20 ~bb;
    cc = #40 ~cc;
    dd = #80 ~dd;
end

initial begin
    #1000
    $finish;
end



endmodule
