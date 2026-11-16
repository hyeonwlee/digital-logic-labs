`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 16:04:54
// Design Name: 
// Module Name: decoder_bcd
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


module decoder_bcd(
    input a0,a1,a2,a3,
    output a,b,c,d,e,f,g,h,i,j
    );
    
    assign a = (~a0) & (~a1) & (~a2) & (~a3);
    assign b = (~a0) & (~a1) & (~a2) & (a3);
    assign c = (~a0) & (~a1) & (a2) & (~a3);
    assign d = (~a0) & (~a1) & (a2) & (a3);
    assign e = (~a0) & (a1) & (~a2) & (~a3);
    assign f = (~a0) & (a1) & (~a2) & (a3);
    assign g = (~a0) & (a1) & (a2) & (~a3);
    assign h = (~a0) & (a1) & (a2) & (a3);
    assign i = (a0) & (~a1) & (~a2) & (~a3);
    assign j = (a0) & (~a1) & (~a2) & (a3);
    
    
    
endmodule
