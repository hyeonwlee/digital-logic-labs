`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/16 15:57:47
// Design Name: 
// Module Name: two_bit_cmp
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


module two_bit_cmp(
    input a,b,c,d,
    output f1,f2,f3
    );
    
    assign f1 = a&~c | ~a&b&~c&~d | a&b&c&~d;
    assign f2 = ~a&~b&~c&~d | ~a&b&~c&d | a&b&c&d | a&~b&c&~d;
    assign f3 = ~a&c | ~a&~b&~c&d | a&~b&c&d;
    
endmodule
