module mux_4x1_tb();
reg [1:0]a,b,s;
wire y;
mux_4x1 s1(.a(a),.b(b),.s(s),.y(y));
initial
begin
a[0]=1;b[0]=0;a[1]=0;b[1]=1;
s=2'b00;#5
s=2'b01;#5
s=2'b10;#5
s=2'b11;#5
$stop;
end
endmodule
