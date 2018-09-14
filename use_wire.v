// in this code i try to so why wire is not use in two level of code.

module use_wire (f, a,b,c,d,);
input a,b,c,d;
output f;
wire f;    //net f is as wire.

assign f=a&b;
assign f=c|d;
endmodule
