`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/11 16:33:43
// Design Name: 
// Module Name: four_and
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


module four_and(
    input a,b,c,d,
    output e,f,g
    );
    
    assign e = a&b;
    assign f = e&c;
    assign g = f&d;
    
endmodule
