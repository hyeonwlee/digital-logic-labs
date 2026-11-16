`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/04 15:47:30
// Design Name: 
// Module Name: updown_counter
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


module updown_counter(
clk, rst, up, out,
segments, dig);

input clk, rst, up;
output [3:0] out;
reg [3:0] out;

output [6:0] segments;
reg [6:0] segments;
output dig;
assign dig = 1;

initial out = 4'b0000;

always @(posedge clk) begin
if(rst==1'b1) out = 4'b0000;
else begin
    if(up==1'b1) begin
        out <= out+1;
        segments = {1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0};
    end
    else begin 
        out <= out-1;
        segments = {1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1};
    end
end
end


endmodule
