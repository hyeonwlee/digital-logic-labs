`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/02 15:15:16
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;

reg xx,yy,bb;

wire d,b;

full_subtractor u_full_subtractor (
.x(xx),
.y(yy),
.bi(bb),
.d(d),
.b(b));

initial begin
    xx = 1'b0;
    yy = 1'b0;
    bb = 1'b0;
end

always begin
    xx = #20 ~xx;
    yy = #40 ~yy;
    bb = #60 ~bb;
end

initial begin
    #1000
    $finish;
end

endmodule
