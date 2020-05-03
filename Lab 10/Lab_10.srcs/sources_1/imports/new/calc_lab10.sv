`timescale 1ns / 1ps


module calc_lab10( 
    input [15:0] sw,
    output [6:0] seg,
    
    output [15:0] led,
    
    input clk,
    input btnC,
    input btnU,
    input btnD,
    
    
    
    output [3:0] an,
     output dp
     
  
    
        );
    
    
    
    
    top_lab9 calc_unit(
        .sw({4'b0000,sw[11:0]}),
        .clk(clk),
        .btnC(btnC),
        .btnU(btnU),
        .btnD(btnD),
        .led(led)
    );
    
      
       
    
    sseg_4_TDM disp_unit(
        .data({8'b00000000,led [15:8]}),
        .clk(clk),
        .rst(btnC),
        .hex_dec(sw[15]),
        .sign(sw[14]),
        
        .seg(seg),
        .an(an),
        .dp(dp)
        
    );
 
  
 
 
endmodule