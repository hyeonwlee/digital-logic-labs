`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/27 15:48:08
// Design Name: 
// Module Name: decade_2421_counter
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


module decade_2421_counter(clk,rst,out);

output[3:0] out;
input clk,rst;

reg[3:0] temp;
wire a,b,c,d;


always @(posedge clk)
    
    begin
        if(!rst)
            temp <= 0;
        else begin
            if (temp==4'd9)
                temp <= 0;
            else    
                temp <= temp+1;
        end

    end
    
    
 assign a = temp[3];
 assign b = temp[2];
 assign c = temp[1];
 assign d = temp[0];
 
 assign out[3] = a | b&d | b&c;
 assign out[2] = a | b&c | b&(~d);
 assign out[1] = a | b&(~c)&d | (~b)&c;
 assign out[0] = d;


endmodule
