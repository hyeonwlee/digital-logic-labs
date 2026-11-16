`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/20 15:31:55
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
    input Clk,D,E,
    output reg Q,
    output Qbar
    );
    
    always @(posedge Clk) begin
         if(E) Q <= D;   
    end
    
    assign Qbar = ~Q;
    
endmodule
