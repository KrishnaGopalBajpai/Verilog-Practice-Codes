module comp (a,b,lt,gt,eq);
parameter wordsize =16;
input [wordsize-1:0]a,b;
output reg lt,gt,eq;
always@(*)
  begin
  gt=0; lt=0; eq;
  if(a>b) gt=1;
  else if(a<b) lt=1;
  else eq=1;
  end
endmodule

//2bit comparator.

module comp2bit (a1,a0,b1,b0,lt,gt,eq);
input a1,a0,b1,b0;
output lt,gt,eq;
always@(*)
begin
lt=({a1,a0} < {b1,b0});
gt=({a1,a0} > {b1,b0});
eq=({a1,a0} < {b1,b0});
end
endmodule

