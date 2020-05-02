`timescale 1ns / 1ps


module sseg4(
    input [15:0] data,
    input hex_dec,
    input sign,
    input [1:0] digit_sel,
    output [6:0] seg,
    output [3:0] an,
    output reg dp = 1
    );
    
    wire [15:0] finalout1;
    bcd11 UUT(.in2(data[10:0]),.finalout(finalout1));
    
    wire [15:0] finalout2;
    mux2 #(.N(16)) mux_hexdec(.in0(finalout1),.in1(data),.sel(hex_dec),.out(finalout2));
    
    wire [3:0] finalout3;
    mux4 #(.N(4)) mux4Call(.in0(finalout2[3:0]),.in1(finalout2[7:4]),.in2(finalout2[11:8]),.in3(finalout2[15:12]),.sel(digit_sel),.out(finalout3));
    
    wire [6:0] finalout4;
    sseg_decoder UUT2(.num(finalout3),.sseg(finalout4));
    
    an_decoder deco1(.digit_sel(digit_sel),.an(an));
    
    mux2 #(.N(7)) mux_final(.in0(finalout4),.in1(7'b0111111),.sel((!an[3])&sign),.out(seg));
    
    
endmodule