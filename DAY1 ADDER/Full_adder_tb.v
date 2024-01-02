module full_adder_gate_level_tb();
reg a,b,cin;
wire s,cout;
full_adder_gate_level s1(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
a=1'b0;b=1'b0;cin=1'b0;#5
a=1'b0;b=1'b0;cin=1'b1;#5
a=1'b0;b=1'b1;cin=1'b0;#5
a=1'b0;b=1'b1;cin=1'b1;#5
a=1'b1;b=1'b0;cin=1'b0;#5
a=1'b1;b=1'b0;cin=1'b1;#5
a=1'b1;b=1'b1;cin=1'b0;#5
a=1'b1;b=1'b1;cin=1'b1;#5
$stop;
end
endmodule
