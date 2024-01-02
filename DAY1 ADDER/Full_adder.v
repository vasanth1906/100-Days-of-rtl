module full_adder_gate_level(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire x1,x2,x3;
xor(x1,a,b);
and(x2,a,b);
xor(s,x1,cin);
and(x3,x1,cin);
or(cout,x2,x3);
endmodule
