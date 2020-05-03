`timescale 1ns / 1ps

module top_lab9(
    input [15:0] sw,
    input clk,
    input btnC,
    input btnU,
    input btnD,
    
    output [15:0]led
    );
    
    wire [7:0] finalout1;
    register reg1(.D(sw[7:0]),.en(btnD),.clk(clk),.rst(btnC),.Q(finalout1));
    
     
      
    wire [7:0] finalout2;
    alu a1(.in0(sw[7:0]),.in1(finalout1),.op(sw[11:8]),.out(finalout2));
    
    wire [7:0] finalout3;
    register reg2(.D(finalout2),.en(btnU),.clk(clk),.rst(btnC),.Q(finalout3));
    

     assign led  = {finalout3,finalout1};
   
     
    
endmodule