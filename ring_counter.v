module ring_counter (clk, init, count);
 input clk,init;
 output reg [7:0] count;
 always@(posedge clk)
 begin
  if(init) count=8'b10000000;
  else begin 
         count = count<<1;   //wrong code of ring counter.
         count[0]=count[7]; //wrong line.
      end
 end
 endmodule
 
 
 module ring_counter (clk, init, count);
 input clk,init;
 output reg [7:0] count;
 always@(posedge clk)
 begin
  if(init) count=8'b10000000;
  else begin 
         count <= count<<1;   //by changing blocking to non-blocking we can correct code of ring counter.
         count[0]<=count[7];   //rotation happen by non-blocking.
      end
 end
 endmodule
 
 
 // modified version of ring counter.
 module ring_counter (clk, init, count);
 input clk,init;
 output reg [7:0] count;
 always@(posedge clk)
 begin
  if(init) count=8'b10000000;
  else begin 
         count = {count[6:0],count[7]};
      end
 end
 endmodule
