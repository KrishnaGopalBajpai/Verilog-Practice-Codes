// use of wand in codes.

module use_wire (f, a,b,c,d,);
input a,b,c,d;
output f;
wand f;    //net f is as wire.

assign f=a&b;
assign f=c|d;
endmodule
