`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/16 15:25:24
// Design Name: 
// Module Name: parity_checker
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


module parity_checker(
    input a,b,c,d,e,
    output pec
    );
    
    assign pec = ((~b&~c | b&c) & ( ~d & (~a&e | a&~e) | d & (~a&~e | a&e) )) |  ((~b&c | b&~c) & ( ~d & (~a&~e | a&e) | d & (~a&e | a&~e) ));
    
endmodule
