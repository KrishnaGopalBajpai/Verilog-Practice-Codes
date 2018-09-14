An 8-bit adder description.

module Paralleladder (sum,cout,in1,in2,cin);
input [7:0] in1,in2;
input cin;
output [7:0]sum;
output cout;

assign #5 {cout,sum}=in1+in2+cin;
endmodule
