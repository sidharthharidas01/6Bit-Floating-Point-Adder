`timescale 1ns / 1ps


module inc(e,over,out); // in in in out
    input  [1:0] e ;   // select line
    input  over;  // 
    output reg [1:0] out;  //output



always @( e or over) begin
    case (over)
        0: out <= e;
        1: out <= e+1;
    endcase
end

endmodule  