`timescale 1ns / 1ps


module halfadder(
   input a, b, output s, c
    );
    
   and(c, a, b);
   xor(s, a, b);
endmodule
