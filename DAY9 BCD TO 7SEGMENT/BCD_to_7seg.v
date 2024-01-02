module BCD_to_sevensegment(bcd,seven_seg);
input [3:0]bcd;
output reg [6:0]seven_seg;
always @(bcd)
begin
case(bcd)
0:seven_seg=7'b1111110;
1:seven_seg=7'b0110000;
2:seven_seg=7'b1101101;
3:seven_seg=7'b1110011;
4:seven_seg=7'b0010011;
5:seven_seg=7'b1011011;
6:seven_seg=7'b1011111;
7:seven_seg=7'b1110000;
8:seven_seg=7'b1111111;
9:seven_seg=7'b1111011;
default seven_seg=7'b0000000;
endcase
end
