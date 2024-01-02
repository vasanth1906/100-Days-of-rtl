module parity_tb();
reg [3:0]a;
wire b;
parity s1(.a(a),.b(b));
initial
begin
$monitor(a,b);
a=4'b1011;#5
a=4'b1010;#5
a=4'b0000;#5
a=4'b0101;#5
a=4'b1111;#5
$stop;
end
endmodule
