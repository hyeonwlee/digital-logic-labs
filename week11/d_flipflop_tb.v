`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/20 15:57:57
// Design Name: 
// Module Name: d_flipflop_tb
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


module d_flipflop_tb;

reg Clk,D,E;
wire Q,Qbar;

d_flipflop u_d_flipflop (
.Clk(Clk),
.D(D),
.E(E),
.Q(Q),
.Qbar(Qbar));

initial Clk = 0;
always #5 Clk = ~Clk;

initial begin
    E = 1;
    
    D = 0; #10;
    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;
    D = 1; #10;
    
    $finish;
end


endmodule
