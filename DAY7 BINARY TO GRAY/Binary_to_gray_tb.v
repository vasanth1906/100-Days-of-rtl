module Gray_code_tb();
reg [3:0]a;
wire [3:0]b;
Gray_code s1(.a(a),.b(b));
initial
begin
a=0;#5
a=1;#5
a=2;#5
a=3;#5
a=4;#5
a=5;#5
a=6;#5
a=7;#5
a=8;#5
a=9;#5
a=10;#5
a=11;#5
a=12;#5
a=13;#5
a=14;#5
a=15;#5
$stop;
end
endmodule
