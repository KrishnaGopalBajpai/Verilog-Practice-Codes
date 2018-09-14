// behavioral description of a 4 bit adder
module adder4bt (s,cout,a,b,cin);
input [3:0]a,b; input cin;
output [3:0]s; output cout;

assign {cout,s}=a+b+cin;
endmodule


//
module ALU12 (X,Y,Z,sign,zero,carry,parity,overflow);
input [15:0]X,Y;
output [15:0]z;
output sign,zero,carry,parity,overflow;
wire c[3:1];

assign sign=Z[15];
assign zero=~|Z;
assign parity=~^Z;
assign overflow=(X[15]&Y[15]&~Z[15])|(~X[15]&~Y[15]&Z[15]);
adder4bt A0 (Z[3:0],c[1],X[3:0],Y[3:0],1'b0);
adder4bt A1(Z[7:4],c[2],X[7:4],Y[7:4],c[1]);
adder4bt A2(Z[11:8],c[3],X[11:8],Y[11:8],c[2]);
adder4bt A3(Z[15:12],carry,X[15:12],Y[15:12],c[3]);
endmodule
