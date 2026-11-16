`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/13 15:44:53
// Design Name: 
// Module Name: subtractor_tb
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


module subtractor_tb;

reg[3:0] a,b;
reg m;
wire[3:0] s;
wire cout;

subtractor u_subtractor (
.a(a),
.b(b),
.m(m),
.s(s),
.cout(cout));


initial begin
a = 4'D0;
b = 4'D0;
m = 1'b0;
end

always@(a or b or m)begin
a <= #10 a-4'D1;
b <= #20 b+4'D1;
m <= #30 ~m;
end

initial begin
#100
$finish;
end 


endmodule
