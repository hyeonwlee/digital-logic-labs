`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/27 15:32:53
// Design Name: 
// Module Name: two_bit_counter
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

module two_bit_counter(clk,rst,out);

output[1:0] out;
input clk,rst;
reg[1:0] out;

always @(posedge clk)
    
    begin
        if(!rst)
            out <= 0;
        else    
            out <= out+1;

end

endmodule
