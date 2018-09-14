  module supply_wr (a,b,c,f);
  input a,b,c;
  output f;
  supply0 gnd;
  supply1 vdd;
  nand g1 (t1,vdd,a,b);
  xor g2 (t2,c,gnd);
  and g3 (f,t1,t2);
  endmodule
