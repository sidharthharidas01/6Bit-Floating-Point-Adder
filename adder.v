`timescale 1ns / 1ps
//Working
module adder(
    input wire [3:0] a_shft,   
    input wire [3:0] b_mux,
    output reg [3:0] sum,
    output reg carry
    );
    always @ (a_shft or b_mux)
    begin
    
    {carry, sum}=a_shft+b_mux;
    end
endmodule
