// else part is missing so it will generated late for "t".
module simp_latch (data, load, dataout);
input data,load;
output dataout;
wire t;
always@ (data or load)
begin 
if(!load)
t=data;
dataout=!t;
end
endmodule
