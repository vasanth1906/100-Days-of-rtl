module sop_nodelay(a,b,c,y); // Sum of Products, y=f(a,b,c)
  input logic a,b,c;
  output logic y;
  logic a_n,b_n,c_n;
  not not00(a_n,a);
  not not01(b_n,b);
  not not02(c_n,c);
  and and00(p0, a, b);
  and and01(p1,b, c_n);
  or or00(y,p0,p1);
endmodule
