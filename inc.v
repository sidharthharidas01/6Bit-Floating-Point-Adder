`timescale 1ns / 1ps
//Working
module inc(
    input wire [1:0] e,
    input wire over,
    output wire [1:0] out
    );
    
    assign out = e+over;
endmodule
