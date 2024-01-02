module bcd_addition_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
bcd_addition s1(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial
begin
a=0;b=0;cin=0;#5
a=3;b=3;cin=0;#5
a=9;b=6;cin=0;#5
a=7;b=1;cin=0;#5
a=8;b=7;cin=0;#5
a=9;b=9;cin=0;#5
a=4;b=3;cin=0;#5
$stop;
end
