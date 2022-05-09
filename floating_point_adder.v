module  FloatingPointAdder(  
input [5:0] A,
input [5:0] B,
output[5:0] Out
);

wire [3:0]MA; 
wire [3:0]MB; 
wire [1:0]EA; 
wire [1:0]EB;

// Assigning values  
assign MA[3:0]=A[3:0];
assign MB[3:0]=B[3:0];

// Assigning values  
assign EA = A[5:4];
assign EB = B[5:4];

wire [3:0]mag; // magnitude
wire ss;  // sign bit
sub(mag,ss,EA,EB); // Out Out In In  S1

wire [3:0]mc1; // magnitude -  selected C out of C1 and C2 - given to shifter
muxc(MA,MB,ss,mc1); // in in in out   M1 

wire [1:0]me; // magnitude -  (MAIN E) output of shifter
muxe(EA,EB,ss,me); // in in in out M2


wire [3:0]mmc2; // magnitude -  selected C out of C1 and C2
wire [3:0]mmc1; // magnitude selected C out of C1 and C2

shifter(mc1,mag,mmc1); // in in out S1
muxc(MA,MB,~ss,mmc2); // in in in out M3

wire [3:0]fc; // output of adder C
wire over; // overflow
addder(mmc1,mmc2,fc,over); // in in out out A1

wire [3:0]ffc; // output of adder C
shifter(fc,over,ffc); // Final Mantissa Output - ffc

wire [1:0]fe; // magnitude -  (MAIN E) output of shifter
inc(me,over,fe);

assign Out[3:0] =ffc;
 
assign Out[5:4] =fe;


endmodule






