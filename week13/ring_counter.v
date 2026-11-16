`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/04 15:37:03
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(clk, rst, out);

input clk, rst;
output [3:0] out;
reg [3:0] out;

initial out = 4'b1000;

always @(posedge clk) begin
if(rst==1'b1) out = 4'b1000;
else begin
out = {out[0],out[3:1]};
end
end

endmodule
