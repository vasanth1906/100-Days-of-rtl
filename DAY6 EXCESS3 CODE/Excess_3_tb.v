module excess_3_tb();
reg [3:0]a;
wire [3:0]xs3;
excess_3 s1(.a(a),.xs3(xs3));
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
$stop;
end
endmodule
