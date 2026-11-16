`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/20 15:43:03
// Design Name: 
// Module Name: rs_latch_nand_tb
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


module rs_latch_nand_tb;

reg E,r,s;
wire Q,Qbar;

rs_latch_nand u_rs_latch_nand (
.r(r),
.s(s),
.E(E),
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
