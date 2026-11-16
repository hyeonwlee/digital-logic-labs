`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/13 16:05:35
// Design Name: 
// Module Name: adder_bcd
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


module adder_bcd(a,b,cin,s,cout);

    input[3:0] a,b;
    input cin;
    output[3:0] s;
    output cout;
    wire k;
    wire t1,t2,t3;
    wire c1,c2,c3;
    wire[3:0] temp;
    
    assign temp[0] = a[0]^b[0]^cin;
    assign t1 = (a[0]&b[0]) | (a[0]&cin) | (b[0]&cin);
    
    assign temp[1] = a[1]^b[1]^t1;
    assign t2 = (a[1]&b[1]) | (a[1]&t1) | (b[1]&t1);
        
    assign temp[2] = a[2]^b[2]^t2;
    assign t3 = (a[2]&b[2]) | (a[2]&t2) | (b[2]&t2);
    
    assign temp[3] = a[3]^b[3]^t3;
    assign k = (a[3]&b[3]) | (a[3]&t3) | (b[3]&t3);
    
    
    assign cout = k | (temp[3]&temp[2]) | (temp[3]&temp[1]);
    
    assign s[0] = 1'b0^temp[0];
    assign c1 = (1'b0&temp[0]) | (1'b0&cin);
        
    assign s[1] = cout^temp[1]^c1;
    assign c2 = (cout&temp[1]) | (cout&c1) | (temp[1]&c1);
            
    assign s[2] = cout^temp[2]^c2;
    assign c3 = (cout&temp[2]) | (cout&c2) | (temp[2]&c2);
        
    assign s[3] = 1'b0^temp[3]^c3;
    

endmodule
