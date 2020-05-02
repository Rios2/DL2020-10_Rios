`timescale 1ns / 1ps



module sseg1_BCD(
    input [15:0]sw,
    output dp,
    output reg [3:0] an,
    output reg [6:0] seg
    );

assign dp = 1;
assign an[3:2] = 1;
reg [15:0] finalout2;
wire [3:0] into;

add3_4  addstuff( .in2(sw[10:0]), .finalout(finalout2[10:0]));
mux2_4b mux1(.sel(sw[15]), .in0(finalout2[3:0]), .in1(finalout2[7:4]), .out(into));
sseg_decoder deco1(.num(into),.sseg(seg));



endmodule 

