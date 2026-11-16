`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/20 15:30:43
// Design Name: 
// Module Name: rs_latch_nor
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


module rs_latch_nor(
    input E,r,s,
    output Q,Qbar
    );
    
    assign Q = ~ (r&E|Qbar);
    assign Qbar = ~ (s&E|Q);
    
endmodule
