`timescale 1ns / 1ps


module add3_2_test();


reg [5:0] in3;
wire [7:0] finalout1;
integer i;   
    
add3_2 add1(.in2(in3),.finalout(finalout1));


initial begin  
      in3 = 6'b0;
    for(i=0; i<16; i=i+1)
    begin
        in3 =i; #10;
    end
end    

endmodule
