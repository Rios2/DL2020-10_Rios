`timescale 1ns / 1ps


module add3_3_test();

reg [8:0] in3;
wire [11:0] finalout1;
integer i;   
    
add3_3 add01(.in2(in3),.finalout(finalout1));


initial begin  
      in3 = 8'b0;
    for(i=0; i<16; i=i+1)
    begin
        in3 = in3 + i; #10;
    end
end    

endmodule