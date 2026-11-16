`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 15:47:44
// Design Name: 
// Module Name: decoder_2to4_tb
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


module decoder_2to4_tb;


reg aa,bb;

wire d0,d1,d2,d3;

decoder_2to4 u_decoder_2to4 (
.a(aa),
.b(bb),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3));

initial begin
    aa = 1'b0;
    bb = 1'b0;
end

always begin
    aa = #10 ~aa;
    bb = #20 ~bb;
end

initial begin
    #1000
    $finish;
end 


endmodule
