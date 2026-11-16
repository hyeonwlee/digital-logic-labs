`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/16 15:17:35
// Design Name: 
// Module Name: parity_generator_tb
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


module parity_generator_tb;

reg aa,bb,cc,dd;

wire e;

parity_generator u_parity_generator (
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(e));

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
