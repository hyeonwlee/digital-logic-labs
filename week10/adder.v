`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/13 15:17:04
// Design Name: 
// Module Name: adder
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


module adder(a,b,cin,s,cout);
    
    input[3:0] a,b;
    input cin;
    output[3:0] s;
    output cout;
    wire c1,c2,c3;
    
    assign s[0] = a[0]^b[0]^cin;
    assign c1 = (a[0]&b[0]) | (a[0]&cin) | (b[0]&cin);
    
    assign s[1] = a[1]^b[1]^c1;
    assign c2 = (a[1]&b[1]) | (a[1]&c1) | (b[1]&c1);
        
    assign s[2] = a[2]^b[2]^c2;
    assign c3 = (a[2]&b[2]) | (a[2]&c2) | (b[2]&c2);
    
    assign s[3] = a[3]^b[3]^c3;
    assign cout = (a[3]&b[3]) | (a[3]&c3) | (b[3]&c3);
    
endmodule
