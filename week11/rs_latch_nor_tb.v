`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/20 15:56:07
// Design Name: 
// Module Name: rs_latch_nor_tb
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


module rs_latch_nor_tb;

reg E,r,s;
wire Q,Qbar;

rs_latch_nor u_rs_latch_nor (
.E(E),
.r(r),
.s(s),
.Q(Q),
.Qbar(Qbar));


initial begin
    E = 1;
    
    r = 0; #10;
    s = 1; #10;
    
    r = 0; #10;
    s = 0; #10;
    
    r = 1; #10;
    s = 0; #10;
    
    r = 0; #10;
    s = 0; #10;
    
    r = 1; #10;
    s = 0; #10;
    
    r = 1; #10;
    s = 1; #10;
    
    $finish;
    
end



endmodule