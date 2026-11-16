`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/11 15:37:42
// Design Name: 
// Module Name: sequence_detector_tb
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


module sequence_detector_tb;

reg clk=0, rst, i;
wire out;

sequence_detector sequence_detector_tb(clk, rst, i, out);

always #10 clk = ~clk;

initial begin
i = 0;
rst = 1'b0;

#20 i = 1;
#20 i = 1;
#20 i = 0;
#20 i = 1;

#20 i = 1;
#20 i = 0;
#20 i = 1;

#20 i = 0;

#20 i = 1;
#20 i = 1;
#20 i = 0;
#20 i = 1;

end

initial rst <= #300 ~rst;


endmodule
