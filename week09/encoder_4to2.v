`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 15:53:19
// Design Name: 
// Module Name: encoder_4to2
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


module encoder_4to2(
    input a,b,c,d,
    output e0, e1
    );
    
    assign e0 = (~a)&b&(~c)&(~d) | a&(~b)&(~c)&(~d);
    assign e1 = (~a)&(~b)&c&(~d) | a&(~b)&(~c)&(~d);
    
    
endmodule
