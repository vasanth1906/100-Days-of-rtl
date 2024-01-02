module excess_3(a,xs3);
input [3:0]a;
output [3:0]xs3;
reg [3:0]xs3;
always @(a)
begin
xs3 = a + 3;
end
endmodule
