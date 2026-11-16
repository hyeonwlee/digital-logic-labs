`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/27 15:40:06
// Design Name: 
// Module Name: decade_counter
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


module decade_counter(clk,rst,out);

output[3:0] out;
input clk,rst;
reg[3:0] out;

always @(posedge clk)
    
    begin
        if(!rst)
            out <= 0;
        else begin
            if (out==4'd9)
                out <= 0;
            else    
                out <= out+1;
        end
        
    end

endmodule
