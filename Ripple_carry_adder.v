// structral adder.
module full_adder (a,b,c,sum,count);
input a,b,c;
output sum,count;
wire t1,t2,t3;
xor G1(t1,a,b),G2(sum,t1,c);
and G3(t2,a,b),G4(t3,t1,c);
or (count,t2,t3);
endmodule 

// ripple carry adder using genvar....

module RCA (c_out,sum,a,b,c_in);
parameter N=8;
input [N-1:0] a,b; input c_in;
output [N-1:0] sum; output c_out;
wire [N:0] ca;  ///c is carry out.
 assign ca[0]=c_in;
 assign c_out=ca[N];
 
  genvar i;
   generate for(i=0;i<N;i++)
     begin: fa_loop
       wire t1,t2,t3;
         xor G1(t1,a[i],b[i]),G2(sum[i],t1,ca[i]);
         and G3(t2,a[i],b[i]),G4(t3,t1,ca[i]);
         or (ca[i+1],t2,t3);
        end
      endgenerate
   endmodule
