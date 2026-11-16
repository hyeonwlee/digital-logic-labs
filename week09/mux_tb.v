`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 16:19:38
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;

reg a,b,aa,bb,cc,dd;

wire m;

mux u_mux (
.a(a),
.b(b),
.A(aa),
.B(bb),
.C(cc),
.D(dd),
.m(m));

initial begin
    a = 1'b0;
    b = 1'b0;
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always begin
    a = #10 ~a;
    b = #20 ~b;
    aa = #30 ~aa;
    bb = #40 ~bb;
    cc = #50 ~cc;
    dd = #60 ~dd;
end

initial begin
    #1000
    $finish;
end 


endmodule
