`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/25 15:18:40
// Design Name: 
// Module Name: boolean_aa_tb
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


module boolean_aa_tb;

reg aa,bb,cc;

wire d;

boolean_aa u_boolean_aa (
.a(aa),
.b(bb),
.c(cc),
.d(d));

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
end

always begin
    aa = #20 ~aa;
    bb = #30 ~bb;
    cc = #30 ~cc;
end

initial begin
    #1000
    $finish;
end

endmodule
