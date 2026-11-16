`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/18 15:23:40
// Design Name: 
// Module Name: four_aoi
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


module four_aoi(
    input a,b,c,d,
    output e,f,g
    );
    
    assign e = a&b;
    assign f = c&d;
    assign g = ~(e|f);
    
endmodule
