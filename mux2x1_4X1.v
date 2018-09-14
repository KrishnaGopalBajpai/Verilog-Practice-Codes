//pure behavioral modelling of 2x1mux
module mux2x1 (in,sel,out);
input [1:0]in;
input sel;
output out;
assign out=in[sel];
endmoule


//Structural modelling of 4x1mux

module mux4X1 (in,sel,out);
input [3:0] in;
input [1:0]sel;
output out;
wire [1:0]t;
mux2x1 m1 (in[1:0],sel[0],t[0]);
mux2x1 m2 (in[3:2],sel[0],t[1]);
mux2x1 m3 (t[1:0],sel[1],out);
endmodule
