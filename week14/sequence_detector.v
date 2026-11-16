`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/11 15:21:07
// Design Name: 
// Module Name: sequence_detector
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


module sequence_detector(clk,rst,i,out);

input clk, rst, i;
output out;

reg [3:0] tmp;

always @(posedge clk) begin
if(rst==1'b1) begin
    tmp <= 4'b0000;
end else begin
    tmp <= {tmp[2:0], i};
end
end

assign out = (tmp[3:1] == 3'b110) & i;

endmodule
