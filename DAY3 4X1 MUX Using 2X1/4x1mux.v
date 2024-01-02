module mux_4x1(a,b,s,y);
input [1:0]a,b,s;
output y;
wire x1,x2;
mux2x1 s1(a[0],b[0],s[0],x1);
mux2x1 s2(a[1],b[1],s[0],x2);
mux2x1 s3(x1,x2,s[1],y);
endmodule
module mux2x1(a,b,s,y);
input a,b,s;
output y;
assign y=s?a:b;
endmodule
