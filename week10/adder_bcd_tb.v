`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/13 16:05:51
// Design Name: 
// Module Name: adder_bcd_tb
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


module adder_bcd_tb;

reg[3:0] a,b;
reg cin;
wire[3:0] s;
wire cout;

adder_bcd u_adder_bcd (
.a(a),
.b(b),
.cin(cin),
.s(s),
.cout(cout));


initial begin
a = 4'D0;
b = 4'D0;
cin = 1'b0;
end

always@(a or b or cin)begin
a <= #10 a+4'D1;
b <= #20 b+4'D2;
cin <= #30 ~cin;
end

initial begin
#200
$finish;
end 

endmodule
