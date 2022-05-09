`timescale 1ns / 1ps


module muxc(a,b,sel,out); // in in in out
    input  sel;   // select line
    input  [3:0] a;  // c1   
    input  [3:0] b;  //c2  
    output reg[3:0] out;  //output



always @( a or b or sel) begin
    case (sel)
        1: out <= a;
        0: out <= b;
    endcase
end

endmodule  