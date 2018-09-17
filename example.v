// any incomplete code is generating latch.

module incomplete_code (current_state,flag);
input [0:1] current_state;
output reg [0:1] flag;

always@(current_state)
begin
case (current_state)
    0,1: flag =2;
    3    flag =0;
    endcase
end
endmodule

// complete code will give combilogic.

module incomplete_code (current_state,flag);
input [0:1] current_state;
output reg [0:1] flag;

always@(current_state)
begin
flag=0;
case (current_state)
    0,1: flag =2;
    3    flag =0;
    endcase
end
endmodule

// new incomplete code .

module xyz (input a,b,c,output reg f);
    always@ (*)
        if(a=1) f=a&b;
endmodule

//complete code wil give combilogic.

module xyz (input a,b,c,output reg f);
    always@ (*)
        f=c;
        if(a=1) f=a&b;
endmodule
