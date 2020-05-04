`timescale 1ns / 1ps

module  counter_test ();

reg clk , en , rst;
wire  [1:0] count;
wire tick;
counter1  #(.N(2)) c1(.clk(clk),
    .en(en), .rst(rst), .count(count), .tick(tick) );
    // clock  runs  continuously
    always  begin
    clk = ~clk; #5;
    end
    // this  block  only  runs  once
    initial  begin
    clk=0; en=0; rst =0; #7;
    rst = 1; #3;    //  reset
    ; en = 1; rst = 0; #10;
     ;    #2;
    en = 0;      #5;
    en = 1;      #3;
   ;    #2;
    en = 0;      #10;
    en = 1;      #2;
    ;    #11;
    
    end
    endmodule