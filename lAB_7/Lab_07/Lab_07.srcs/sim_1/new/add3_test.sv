`timescale 1ns / 1ps

module add3_test();
reg [3:0] in1;
wire [3:0] out1;
integer i;   
    
add3 add0(.in(in1),.out(out1));

initial begin  
      in1 = 4'b00;
    for(i=0; i<16; i=i+1)
    begin
        in1 =  i; #10;
    end
end    
endmodule
