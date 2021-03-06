`timescale 1ns / 1ps


module sseg_4_TDM(
    input [15:0] data,
    input hex_dec,
   
    input sign,
    input rst,
    input clk,
    
    
    output [6:0] seg,
    output [3:0] an,
    output reg dp = 1
    
    );
    
    wire [15:0] finalout1;
    bcd11 UUT(.in2(data[10:0]),.finalout(finalout1));
    
    wire [15:0] finalout2;
    mux2 #(.N(16)) mux_hexdec(.in0(data),.in1(finalout1),.sel(hex_dec),.out(finalout2));
    
    wire tick_out;
    counter1 #(.N(18)) timer(.clk(clk), .rst(rst), .en(1), .tick(tick_out));
    
    wire [1:0] sel;
    counter1 #(.N(2)) counter2(.clk(clk), .rst(rst), .en(tick_out), .count(sel) ) ;
    
    wire [3:0] finalout3;
    mux4 #(.N(4)) mux4Call(.in0(finalout2[3:0]),.in1(finalout2[7:4]),.in2(finalout2[11:8]),.in3(finalout2[15:12]),.sel(sel),.out(finalout3));
    
    wire [6:0] finalout4;
    sseg_decoder UUT2(.num(finalout3),.sseg(finalout4));
    
    an_decoder deco1(.digit_sel(sel),.an(an));
    
    mux2 #(.N(7)) mux_final(.in0(finalout4),.in1(7'b0111111),.sel((!an[3])&sign),.out(seg));
    
    
endmodule
