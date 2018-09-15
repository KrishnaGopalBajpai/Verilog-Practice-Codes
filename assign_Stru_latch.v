//Strectural discription of latch.
module latch_strc (r,s,q,qbar);
input r,s;
output q,qbar;
assign q=~(r & qbar);
assign qbar=~(s & q);
endmodule


//tb for the latch.
module tb();
reg R,S;
wire Q,QBAR;
latch_strc LATCH (QBAR,Q,S,R);
initial 
begin
$monitor ($time,"QBAR=%b,Q=%b,S=%b,R=%b",QBAR,Q,S,R);
S=$random;R=$random;
#5 S=$random;R=$random;
#100 $finish;
end
endmodule
