`timescale 1ns / 1ps

module add3(
    input [3:0] in,
    output reg [3:0] out
    );
    
    
    
    always@*
    begin
    if( in > 4'd4 )
        out = in + 4'd3;
    else
        out = in; 
    end
    
endmodule
