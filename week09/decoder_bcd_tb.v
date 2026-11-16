`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 16:10:51
// Design Name: 
// Module Name: decoder_bcd_tb
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


module decoder_bcd_tb;

reg a0,a1,a2,a3;

wire a,b,c,d,e,f,g,h,i,j;

decoder_bcd u_decoder_bcd (
.a0(a0),
.a1(a1),
.a2(a2),
.a3(a3),
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g),
.h(h),
.i(i),
.j(j));

initial begin
    a0 = 1'b0;
    a1 = 1'b0;
    a2 = 1'b0;
    a3 = 1'b0;
end

always begin
    a0 = #10 ~a0;
    a1 = #20 ~a1;
    a2 = #30 ~a2;
    a3 = #40 ~a3;
end

initial begin
    #1000
    $finish;
end 



endmodule
