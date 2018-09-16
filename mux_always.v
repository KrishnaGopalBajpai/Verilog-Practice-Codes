// mux using always block.

module mux_alwys (a,b,s,f);
input a,b,s;
output reg f;
always@(a or b or s) // always(a,b,s) or always(*)
if(s)
f=a
else
f=b;
endmodule
