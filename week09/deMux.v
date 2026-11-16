`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/06 16:27:46
// Design Name: 
// Module Name: deMux
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


module deMux(
    input a,b,F,
    output A,B,C,D
    );
    
    assign A = F & (~a) & (~b);
    assign B = F & a & (~b);
    assign C = F & (~a) & b;
    assign D = F & a & b;
    
endmodule
