//Pure structural modelling using basic gate.
module mux2X1 (in,sel,out);
input [1:0]in;
input sel;
output out;
wire t1,t2,t3;

NOT g1 (t1,sel);
AND g2 (t2,in[0],t1);
AND g3 (t3in[1],sel);
OR g4 (out,t2,t3);
endmodule
