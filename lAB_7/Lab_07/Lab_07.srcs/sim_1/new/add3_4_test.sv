`timescale 1ns / 1ps


module add3_4_test();

reg [10:0] in3;
wire [15:0] finalout1;
integer i;   
    
add3_4 add02(.in2(in3),.finalout(finalout1));


initial begin  
      in3 = 11'b0;
    for(i=0; i<16; i=i+1)
    begin
        in3 = i; #10;
    end
end    

endmodule