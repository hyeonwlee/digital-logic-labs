`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/04 15:24:24
// Design Name: 
// Module Name: shift_register
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


module shift_register(clk, rst, in, out);

input clk, rst, in;
output [3:0] out;
reg [3:0] out;

initial out = 4'b0000;

always @(posedge clk) begin
if(rst==1'b1) out = 4'b0000;
else begin
out = out>>1;
out[3] = in;
end
end

endmodule
