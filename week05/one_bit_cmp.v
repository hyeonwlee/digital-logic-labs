`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/25 15:25:49
// Design Name: 
// Module Name: one_bit_cmp
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


module one_bit_cmp(
    input a,b,
    output c,d,e,f
    );
    
    assign c = ~(a^b);
    assign d = a^b;
    assign e = a & ~b;
    assign f = ~a & b;
    
endmodule
