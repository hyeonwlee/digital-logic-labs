`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 15:59:45
// Design Name: 
// Module Name: encoder_4to2_tb
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


module encoder_4to2_tb;


reg aa,bb,cc,dd;

wire e0,e1;

encoder_4to2 u_encoder_4to2 (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e0(e0),
.e1(e1));

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always begin
    aa = #10 ~aa;
    bb = #20 ~bb;
    cc = #30 ~bb;
    dd = #40 ~bb;
end

initial begin
    #1000
    $finish;
end 

endmodule
