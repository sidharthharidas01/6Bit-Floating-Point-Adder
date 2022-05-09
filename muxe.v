`timescale 1ns / 1ps


module muxe(a,b,sel,out); 
    input  sel;   // select line
    input  [1:0] a;  // e1
    input  [1:0] b;  //e2  
    output reg[3:0] out;  //output



always @( a or b or sel) begin
    case (sel)
        0: out <= a;
        1: out <= b;
    endcase
end

endmodule  