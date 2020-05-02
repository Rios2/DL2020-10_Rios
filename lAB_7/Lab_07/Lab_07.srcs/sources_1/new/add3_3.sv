`timescale 1ns / 1ps


module add3_3(input reg [8:0] in2,
output reg [11:0] finalout);


    //c1
    wire [3:0] out3;
    add3 add00(.in({1'b0,in2[8:6]}),.out(out3[3:0]));
    
    //c2
    wire [3:0] out4;
    add3 add01(.in({out3[2:0],in2[2]}),.out(out4[3:0]));
     
    //c3
    wire [3:0] out5;
    add3 add02(.in({out4[2:0],in2[1]}),.out(out5[3:0]));
    
    //c7
    wire [3:0] out6;
    add3 add03(.in({1'b0,out3[3],out4[3],out5[3]}),.out(out6[3:0]));
    
    //c4
    wire [3:0] out7;
    add3 add04(.in({out5[2:0],in2[3]}),.out(out7));

    //c8
    wire [3:0] out8;
    add3 add05(.in({out6[2:0],out7[3]}),.out(out8));

    //c5
    wire [3:0] out9;
    add3 add06(.in({out7[2:0],in2[2]}),.out(out9));
    
    //c9
    wire [3:0] out10;
    add3 add07(.in({out8[2:0],out9[3]}),.out(out10)); 
    
    //c6
    wire [3:0] out11;
    add3 add08(.in({out9[2:0],in2[1]}),.out(out11));   
    
    assign finalout = {1'b0,out6[3],out8[3],out10,out11,in2[0]};

endmodule
