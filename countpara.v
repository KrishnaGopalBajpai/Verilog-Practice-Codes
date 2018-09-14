// simple counter using Parameter key word.
Parameter N=6;
module countpara (clear,clk,count);
input clear,clk;
output reg [0:N] count;

always@(negedge clk)
begin
if(rst)
 count<=0;
 else
 count<=count+1;
 end
 endmodule
