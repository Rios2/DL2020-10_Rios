
  
`timescale 1ns / 1ps


module add3_4(input reg [10:0] in2,
output reg [15:0] finalout);


    //c1
    wire [3:0] out1;
    add3 add01(.in({1'b0,in2[10:8]}),.out(out1));
    
    //c2
    wire [3:0] out2;
    add3 add02(.in({out1[2:0],in2[7]}),.out(out2));    
 
    //c3
    wire [3:0] out3;
    add3 add03(.in({out2[2:0],in2[6]}),.out(out3));  
    
    //c4
    wire [3:0] out4;
    add3 add04(.in({out3[2:0],in2[5]}),.out(out4));  
 
    //c5
    wire [3:0] out5;
    add3 add05(.in({out4[2:0],in2[3]}),.out(out5)); 
    
    //c6
    wire [3:0] out6;
    add3 add06(.in({out5[2:0],in2[3]}),.out(out6));     
    
    //c7
    wire [3:0] out7;
    add3 add07(.in({out6[2:0],in2[3]}),.out(out7));     
    
    //c8
    wire [3:0] out8;
    add3 add08(.in({out7[2:0],in2[3]}),.out(out8));    
    
    //c9
    wire [3:0] out9;
    add3 add09(.in({1'b0,out1[3],out2[3],out3[3]}),.out(out9));  

    //c10
    wire [3:0] out10;
    add3 add10(.in({out9[2:0],out4[3]}),.out(out10));  

    //c11
    wire [3:0] out11;
    add3 add11(.in({out10[2:0],out5[3]}),.out(out11));
                        
    //c12
    wire [3:0] out12;
    add3 add12(.in({out11[2:0],out6[3]}),.out(out12));                        
                        
    //c13
    wire [3:0] out13;
    add3 add13(.in({out12[2:0],out7[3]}),.out(out13));  
    
    //c14
    wire [3:0] out14;
    add3 add14(.in({1'b0,out9[3],out10[3],out11[3]}),.out(out14));   
    
    //c15
    wire [3:0] out15;
    add3 add15(.in({out14[2:0],out12[3]}),.out(out15));   
                           
    assign finalout = {1'b0,1'b0,out14[3],out15,out13,out8,in2[0]};
endmodule
