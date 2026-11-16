`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/20 15:29:13
// Design Name: 
// Module Name: rs_latch_nand
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


module rs_latch_nand(
    input E,r,s,
    output Q,Qbar
    );
    
    assign Q = ~ (~(s&E)&Qbar);
    assign Qbar = ~ (~(r&E)&Q);
    
endmodule
