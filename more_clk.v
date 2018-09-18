//use more then one clk.

module multi_clk (clk1,clk2,a,b,c,f1,f2);
input clk1,clk2,a,b,c;
output reg f1,f2;
always@(posedge clk)
   f1<= a&b;
always@(negedge clk)
   f1<= a^b;
endmodule
