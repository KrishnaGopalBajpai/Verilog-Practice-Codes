// counter using procedural statement. 
module up_down_counter (mode, clr, ld, d_in, clk,count);
input mode, clr, ld,clk;
input [7:0]d_in;
output reg [7:0]count;

always@ (posedge clk)
  if(ld)       count<=d_in;       //if ld is 1 then lode d_in. 
  elseif (clr) count<=0;          //if clear is 1 then lode only 0.
  elseif (mode)count<=count+1;    //mode is 1 then count up.
  else         count<=count-1;    //mode is 0 then count down.
 endmodule
 
 
 // Parameterized design : : an N-bit counter.
 
 module counter (clear, clk,count);
 parameter N=7;
 input clk,clear;
 output reg [N:0]count;
 
 always@(nededge clk)
   if(clear) 
     count<=0;
    else
     count<=count+1;
 endmodule
 
