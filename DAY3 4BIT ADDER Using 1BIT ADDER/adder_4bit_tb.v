module adder_4_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
adder_4 s1(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial
begin
a=4'b1010;b=4'b0101;cin =0;#10
a=4'b0110;b=4'b1011;#10
$stop;
end
endmodule
