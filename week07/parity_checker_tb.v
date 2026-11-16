`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/16 15:25:48
// Design Name: 
// Module Name: parity_checker_tb
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


module parity_checker_tb;

reg aa,bb,cc,dd,ee;

wire pec;

parity_checker u_parity_checker (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee),
.pec(pec));

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
    ee = 1'b0;
end

always begin
    aa = #10 ~aa;
    bb = #20 ~bb;
    cc = #40 ~cc;
    dd = #80 ~dd;
    ee = #100 ~ee;
end

initial begin
    #1000
    $finish;
end

endmodule
