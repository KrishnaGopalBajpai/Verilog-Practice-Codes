//use more then one clk in a module.

module multi_clk (clk1,clk2,a,b,c,f1,f2);
input clk1,clk2,a,b,c;
output reg f1,f2;
   always@(posedge clk1)
   f1<= a&b;
   always@(negedge clk2)
   f1<= a^b;
endmodule


//using both the edge of the clk.

module multi_use_of_bothedge_of_a_clk (a,b,f,clk);
input clk,a,b;
output reg f; reg t;
   always@(posedge clk)
    f<= t&b;
   always@(negedge clk)
    t<= a^b;
endmodule


//example of addition and subtraction on both the edge of clk. 

module multi_edge_clk (a,b,c,d,f, clk);
   input clk;
   input [7:0] a,b,c,d;
   output [7:0] f;
   always@(Posedge clk)
      c<=a+b;
   always@(negedge clk)
      f<=c-d;
   endmodule
   
   //addition and subtraction can be completed in half of the clk in the above code.
   
