// blocking shift reg.

module shift_reg_4bit (clk,clear,a,e);
input clk,clear,a;
output reg e;
  reg b,c,d;
  
  always@(posedge clk or negedge clear)
    begin
      if(!clear)
      begin
        b=0;c=0;d=0;e=0;
      end
      else
      begin
         e=d;
         d=c;
         c=b;
         b=a;
      end
    end        //i.e. for-bit shift reg. 
    endmodule
    
 // reverse the order of procedural statement generate a single flip-flop.   
 module shift_reg_4bit (clk,clear,a,e);
input clk,clear,a;
output reg e;
  reg b,c,d;
  
  always@(posedge clk or negedge clear)
    begin
      if(!clear)
      begin
        b=0;c=0;d=0;e=0;
      end
      else
      begin     // over-writting the value i.e d=a.
         b=a;   // that statement genrating a single flip-flop.
         c=b;
         d=c;
         e=d;
      end
    end
    endmodule
    

//shift reg using non-blocking statements ypu are free to write in any order means no orer of execution matters hare.

module shift_reg_4bit (clk,clear,a,e);
input clk,clear,a;
output reg e;
  reg b,c,d;
  
  always@(posedge clk or negedge clear)
    begin
      if(!clear)
      begin
        b<=0;c<=0;d<=0;e<=0;
      end
      else
      begin     
         b<=a;   // that statement genrating a shift reg.
         c<=b;
         d<=c;
         e<=d;
      end
    end
    endmodule
