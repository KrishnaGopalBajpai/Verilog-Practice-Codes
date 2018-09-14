// two level combinational ckt.

module twolevel (f,a,b,c,d);
input a,b,c,d;
output f;
wire t1,t2;        //internal wire connections.
assign t1=a&b;
assign t2=~(c&D);
assign f=~(t1&t2);
endmodule
