`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/02 15:20:54
// Design Name: 
// Module Name: code_converter_tb
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


module code_converter_tb;

reg aa,bb,cc,dd;

wire e,f,g,h;

code_converter u_code_converter (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(e),
.f(f),
.g(g),
.h(h));

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always begin
    aa = #20 ~aa;
    bb = #40 ~bb;
    cc = #60 ~cc;
    dd = #80 ~dd;
end

initial begin
    #1000
    $finish;
end

endmodule
