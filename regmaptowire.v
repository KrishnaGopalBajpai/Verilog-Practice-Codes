module regmapwire (a,b,c,f1,f2);
input a,b,c;
output f1,f2;
wire a,b,c;
reg f1,f2;
always@(a or b or c)
begin
f1=~(a&b);
f2=f1^c;    
end
endmodule
