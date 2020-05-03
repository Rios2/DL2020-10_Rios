`timescale 1ns / 1ps

module an_decoder(
    input [1:0] digit_sel,
    output reg [3:0] an
    );
    
    always @*
        case(digit_sel)
        2'b00 : an = 4'b1110;
        2'b01 : an = 4'b1101;
        2'b10 : an = 4'b1011;
        2'b11 : an = 4'b0111;
        endcase
    
endmodule