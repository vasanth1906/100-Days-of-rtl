module carry_look_ahead_tb();
reg [3:0]A,B;
reg Cin;
wire [3:0]sum;
wire Cout;
carry_look_ahead s1(.A(A),.B(B),.Cin(Cin),.sum(sum),.Cout(Cout));
initial
begin
A=5;B=4;Cin=0;#5
A=6;B=2;Cin=1;#5
$stop;
end
endmodule
