`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 15:44:27
// Design Name: 
// Module Name: decoder_2to4
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


module decoder_2to4(
    input a,b,
    output d0, d1, d2, d3
    );
    
    assign d0 = ~a & ~b;
    assign d1 = ~a & b;
    assign d2 = a & ~b;
    assign d3 = a & b;
    
endmodule
