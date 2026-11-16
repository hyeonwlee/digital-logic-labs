`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/02 15:04:56
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb;

reg xx,yy;

wire d,b;

half_subtractor u_half_subtractor (
.x(xx),
.y(yy),
.d(d),
.b(b));

initial begin
    xx = 1'b0;
    yy = 1'b0;
end

always begin
    xx = #20 ~xx;
    yy = #40 ~yy;
end

initial begin
    #1000
    $finish;
end

endmodule
