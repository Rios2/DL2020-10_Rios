`timescale 1ns / 1ps



module bitBCD( input reg [5:0] in2,
output reg [7:0] finalout);

    wire [3:0] out3;
    add3 add00(.in({1'b0,in2[5:3]}),.out(out3[3:0]));
    
    wire [3:0] out4;
    add3 add01(.in({out3[2:0],in2[2]}),.out(out4[3:0]));
     
    wire [3:0] out5;
    add3 add02(.in({out4[2:0],in2[1]}),.out(out5[3:0]));
    
    assign finalout = {1'b0,out3[3],out4[3],out5,in2[0]};
    
endmodule