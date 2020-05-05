`timescale 1ns / 1ps


module sseg4_manual( 
    input [15:0] sw,
    output [6:0] seg,
    
    
    
    input clk,
    input btnC,
    input btnU,
    input btnD,
    
    
    output [3:0] an,
    output dp
    );
    
    sseg4 UUD(
        .data({4'b0000,sw[11:0]}),
        .hex_dec(sw[15]),
        .sign(sw[14]),
        .digit_sel(sw[13:12]),
        .seg(seg),
        .an(an),
        .dp(dp)
    );
    
   
endmodule