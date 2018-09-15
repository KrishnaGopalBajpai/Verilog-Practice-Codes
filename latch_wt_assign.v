module latch-asgn (d,q,en);
input d,en;
output q;

assign q=en?d:q;
endmodule
