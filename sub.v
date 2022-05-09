module sub_2bit(d,bo,a,b);
  output[1:0]d;
  output bo;
  input [1:0]a,b;
  wire bi;
  full_2bit sub1(d[0],bi,a[0],~b[0],1);
  full_2bit sub2(d[1],~bo,a[1],~b[1],bi);

endmodule

module full_2bit(s,co,a,b,c);
  input a,b,c;
  output reg s,co;
  always @ (*)
    begin
      s=a^b^c;
      co = (a&b)|(b&c)|(a&c);
    end
endmodule