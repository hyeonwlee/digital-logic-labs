`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/02 15:20:32
// Design Name: 
// Module Name: code_converter
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


module code_converter(
    input a,b,c,d,
    output e,f,g,h
    );
    
    assign e = a | b&d | b&c;
    assign f = a | b&c | b&(~d);
    assign g = a | b&(~c)&d | (~b)&c;
    assign h = d;
    
    
endmodule
