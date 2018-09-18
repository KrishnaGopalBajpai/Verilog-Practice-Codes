// order of writting is also matters in blocking assignments.
// generate parallel flip flop.

always@(posedge clk)
 begin
  q1=a;
  q2=q1;   //Hardware is generated as per order of statements .
 end
 
 // generate shift reg flip flop.

always@(posedge clk)
 begin
  q2=q1;
  q1=a;   //Hardware is generated as per order of statements .
 end
 
 // generate shfit reg flip flop.

always@(posedge clk)
 begin
  q1<=a;
  q2<=q1;   //Hardware is generated as per order of statements .
 end
 
 // generate shift reg flip flop.

always@(posedge clk)
   q2<=q1;           //Hardware is generated as per order of statements .
always@(posedge clk)
  q2<=q1;
  
  
   // generate two parallel flip flop where input of second ff is indeterminate.

always@(posedge clk)
   q1 = a;           //Hardware is generated as per order of statements .
always@(posedge clk)
   q2 = q1;
   
   // in triggered assignment we need not use blocking statement.
