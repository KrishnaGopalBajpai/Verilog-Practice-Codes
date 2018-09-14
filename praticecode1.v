// Practice code ....

module expml (a,b,c,d,e,f,y);
input a,b,c,d,e,f;
wire t1,t2,t3,y;
nand #5 (t1,a,b);
and #5 (t2,b,~c,d);
nor #5 (t3,e,f);
nand #5 (y,t1,t2,t3);
endmodule


// test code for the above dut.

module tb();
reg x1,x2,x3,x4,x5,x6;
wire OUT;
expml dut (.x1(a),.x2(b),.x3(c),.x4(d),.x5(e),.x6(f),.OUT(y));
initial 
begin
$monitor ($time,"x1=%b,x2=%b,x3=%b,x4=%b,x5=%b,x6=%b,OUT=%b",x1,x2,x3,x4,x5,x6,OUT);
#5 x1=1,x2=0,x3=0,x4=1,x5=0,x6=0;
#5 x1=0,x3=1;
#5 x1=1;x3=0;
#5 x6=1;
end
endmodule
