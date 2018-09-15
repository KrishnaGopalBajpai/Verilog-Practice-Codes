module gen_clk ();
output reg clk;
initial
clk=1'b0;   //initialized to 0 at time 0.

always
#5 clk=~clk;   //toggle after time 5 units.

initial
#500 $finish;

endmodule
