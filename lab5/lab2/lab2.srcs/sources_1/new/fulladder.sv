`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2020 05:13:14 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    wire s0, c0, c1;
    
    halfadder h0(.a(a), .b(b), .s(s1), .c(c0));
    
    halfadder h1(.a(cin), .b(s0), .s(s), .c(c1));
    
    or(cout, c0, c1);
    
endmodule
