`timescale 1ns / 1ps

module adder(
    input [0:3] a_shft,   
    input [0:1] b_mux,
    output [0:3] sum,
    output carry
    );
    
assign s= a_shft ^ b_mux;
assign c= a_shft & b_mux;

endmodule

