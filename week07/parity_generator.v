`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/16 15:10:21
// Design Name: 
// Module Name: parity_generator
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


module parity_generator(
    input a,b,c,d,
    output e
    );
    
    assign e = ((~a&b | a&~b) & (~c&~d | c&d)) | ((~a&~b | a&b) & (~c&d | c&~d));
    
endmodule
