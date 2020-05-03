`timescale 1ns / 1ps

module  alu_test ();
reg  [3:0] in0,in1,op;


wire [3:0] out;
alu  #(.N(4)) r(.in0(in0), .in1(in1),
    .op(op), .out(out) );
    // clock  runs  continuously

    initial  begin
    in0=0; in1=1; op=0 ; #10;
    in0=2; in1=1; op=1 ; #10;
    in0=2; in1=3; op=2 ; #10;
    in0=4; in1=5; op=3 ; #10;
    in0=5; in1=6; op=4 ; #10;
    in0=2; in1=4; op=3 ; #10;
    in0=3; in1=4; op=4 ; #10;
    $finish;
    end
    endmodule