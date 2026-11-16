`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/30 15:43:15
// Design Name: 
// Module Name: seven_segment
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


module seven_segment(
    input A, B, C, D,
    output a, b, c, d, e, f, g, dp, d3
    );
    
    assign a = ~A&C | B&C | A&~D | ~A&B&D | ~A&~B&~D | A&~B&~C;
    assign b = ~A&~B | ~A&~C&~D | ~A&C&D | A&~C&D | A&~B&~D;
    assign c = ~A&~C | ~A&D | A^B | ~C&D;
    assign d = ~B&~C&~D | ~A&C&~D | A&B&~D | D&(B^C);
    assign e = A&B | C&~D | A&C | ~B&~C&~D;
    assign f = ~C&~D | A&~B | A&C | ~A&B&~C | ~A&B&~D;
    assign g = C&~D | A&~B | A&C | ~B&C | ~A&B&~C | B&~C&D;
    assign dp = 1;
    assign d3 = 1;
    
    
endmodule
