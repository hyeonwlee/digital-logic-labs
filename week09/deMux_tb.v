`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 16:27:58
// Design Name: 
// Module Name: deMux_tb
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


module deMux_tb;


reg aa,bb,ff;

wire A,B,C,D;

deMux u_deMux (
.a(aa),
.b(bb),
.F(ff),
.A(A),
.B(B),
.C(C),
.D(D));

initial begin
    aa = 1'b0;
    bb = 1'b0;
    ff = 1'b0;
end

always begin
    aa = #10 ~aa;
    bb = #20 ~bb;
    ff = #80 ~ff;
end

initial begin
    #1000
    $finish;
end 


endmodule
