//this is level triggered.
module traplatch (q,qbar,din,enable);
input din,enable;
output reg q; output wire qbar;
assign qbar=~q;
always@(din or enable)
begin
if(enable) q=din;
end
endmodule
