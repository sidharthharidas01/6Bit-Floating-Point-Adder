`timescale 1ns / 1ps
//Working
module lshift (c, SEL, SO); // in in out 
input  [3:0] c;  // output of mux C
input  [1:0] SEL;  // magnitude |e1=e2|
output [3:0] SO;   // // output
reg    [3:0] SO;  
 
  always @(c or SEL)  
  begin  
    case (SEL)  
      2'b00   : SO <= c;  
      2'b01   : SO <= c >> 1;  
      2'b10   : SO <= c >> 2;  
      2'b11   : SO <= c >> 3; 
    endcase  
  end  
endmodule
