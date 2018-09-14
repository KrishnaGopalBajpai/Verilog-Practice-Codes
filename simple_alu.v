module alu1 (x,y,z,sign,zero,carry,parity,overflow);
input [15:0]x,y;
output [15:0]z;
output sign,zero,carry,parity,overflow;
assign {carry,z}=x+y;
assign sign =z[15];
assign zero =~|z;
assign parity=~^z;
assign overflow=(x[15]&y[15]&~z[15])|(~x[15]&~y[15]&z[15]);
endmodule


//test code for alu.

module alutb();
reg [15:0]X,Y;
wire [15:0]Z;
wire S,ZR,CY,P,OV;
alu1 DUT (X,Y,Z,S,ZR,CY,P,OV);
initial 
begin
$monitor ($time,"X=%h,Y=%h,Z=%h,S=%b,ZR=%b,CY=%b,P=%b,OV=%b",X,Y,Z,S,ZR,CY,P,OV);
#5 X=$random; Y=$random;
#5 X=$random; Y=$random;
#5 $finish;  
end
endmodule
