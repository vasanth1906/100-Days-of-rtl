module BCD_to_sevensegment_tb();
reg [3:0]bcd;
wire [6:0]seven_seg;
BCD_to_sevensegment s1(.bcd(bcd),.seven_seg(seven_seg));
initial
begin
$monitor(bcd,seven_seg);
bcd=4'd0;#5
bcd=4'd1;#5
bcd=4'd2;#5
bcd=4'd3;#5
bcd=4'd4;#5
bcd=4'd5;#5
bcd=4'd6;#5
bcd=4'd7;#5
bcd=4'd8;#5
bcd=4'd9;#5
$stop;
end
endmodule
