`timescale 1ns/1ps

module mux_tb;
    reg a,b,sel;
    wire y;
  mux dut(
    .a(a),
    .b(b),
    .sel(sel)
    .y(y)
    );
  initial begin
    $display("---------------------------------");
    $display(" A B SEL | Y ");
    $display("---------------------------------");

    $monitor("%b %b %b | %b ",a,b,sel,y);
    a=0; b=0; sel=0; #10;
    a=0; b=1; sel=0; #10;
    a=1; b=0; sel=0; #10;
    a=1; b=0; sel=1; #10;
    a=0; b=1; sel=1; #10;
    $finish;
  end
endmodule
    
