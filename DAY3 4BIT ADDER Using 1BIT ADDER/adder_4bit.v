module adder_4(a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output [3:0]sum;
output carry;
wire [3:1]c;
fa s1(a[0],b[0],cin,sum[0],c[1]);
fa s2(a[1],b[1],c[1],sum[1],c[2]);
fa s3(a[2],b[2],c[2],sum[2],c[3]);
fa s4(a[3],b[3],c[3],sum[3],carry);
endmodule


module fa(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
assign sum=a^b^cin;
assign carry=(a&b)|(b&cin)|(a&cin);
endmodule
