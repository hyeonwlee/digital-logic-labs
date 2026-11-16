`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/18 15:16:56
// Design Name: 
// Module Name: four_nor_tb
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


module four_nor_tb;

reg aa,bb,cc,dd;

wire e,f,g;

four_nor u_four_nor (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(e),
.f(f),
.g(g) );

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always begin
    aa = #20 ~aa;
    bb = #30 ~bb;
    cc = #30 ~cc;
    dd = #30 ~dd;
end

initial begin
    #1000
    $finish;
end

endmodule
