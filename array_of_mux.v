module array_mux (in,sel,out);
input [3:0]in;
input sel;
output [3:0]out;
assign f=sel?a:b;
endmodule
