// pure behavioural modeling.

module mux1 (in, sel, out);
input [7:0]in;
input [2:0]sel;
output out;
assign out=in[sel];   // data select on the basis of select line.
endmodule


//testcode for above mux.

module tb();
reg [7:0]a;
reg [2:0]s;
wire f;
mux1 dut (.in(a),.sel(s),.out(f));
initial
begin
$dumpfile(mux8X1.vcd);
$dumpvars(0,muxtb);
$monitor ($time,"a=%b,s=%b,f=%b",a,s,f);
#5 A=8'b11110001;sel=3'b101;
#5 sel=3'b100;
#5 sel=3'b111;
#5 $finish;
end
endmodule
