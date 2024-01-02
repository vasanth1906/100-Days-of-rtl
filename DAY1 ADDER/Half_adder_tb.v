module half_adder_gate_level_tb();
reg a,b;
wire s,c;
half_adder_gate_level s1(.a(a),.b(b),.s(s),.c(c));
initial
begin
a=1'b0;b=1'b0;#5
a=1'b0;b=1'b1;#5
a=1'b1;b=1'b0;#5
a=1'b1;b=1'b1;#5
$stop;
end
endmodule
