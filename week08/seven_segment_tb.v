`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/30 15:43:35
// Design Name: 
// Module Name: seven_segment_tb
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


module seven_segment_tb;

reg aa,bb,cc,dd;

wire a,b,c,d,e,f,g,dp,d3;

seven_segment u_seven_segment (
.A(aa),
.B(bb),
.C(cc),
.D(dd),
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g),
.dp(dp),
.d3(d3));

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
