module adder_subtractor_tb();
reg [7:0] a, b;
reg mode;
wire [7:0] result;
wire ovfl;
adder_subtractor inst1 (a, b, mode, result, ovfl);
initial 
begin
#0 a = 8'b0000_0000; b = 8'b0000_0001; mode = 1'b0;
#10 a = 8'b0000_0000; b = 8'b0000_0001; mode = 1'b1;
#10 a = 8'b0000_0001; b = 8'b1111_1001; mode = 1'b0;
#10 a = 8'b0000_0001; b = 8'b1111_1001; mode = 1'b1;
#10 a = 8'b0000_0001; b = 8'b1000_0001; mode = 1'b0;
#10 a = 8'b0000_0001; b = 8'b1000_0001; mode = 1'b1;
//ovfl = 1
#10 a = 8'b1111_0000; b = 8'b0000_0001; mode = 1'b0;
#10 a = 8'b1111_0000; b = 8'b0000_0001; mode = 1'b1;
#10 a = 8'b0110_1101; b = 8'b0100_0101; mode = 1'b0;
//ovfl = 1
#10 a = 8'b0010_1101; b = 8'b0000_0101; mode = 1'b1;
#10 a = 8'b0000_0110; b = 8'b0000_0001; mode = 1'b0;
#10 a = 8'b0000_0110; b = 8'b0000_0001; mode = 1'b1;
#10 a = 8'b0001_0101; b = 8'b0011_0001; mode = 1'b0;
#10 a = 8'b0001_0101; b = 8'b0011_0001; mode = 1'b1;
#10 a = 8'b1000_0000; b = 8'b1001_1100; mode = 1'b0;
//ovfl = 1
#10 a = 8'b1000_0000; b = 8'b1001_1100; mode = 1'b1;
#10 a = 8'b1000_0101; b = 8'b0010_0001; mode = 1'b0;
#10 a = 8'b1000_0101; b = 8'b0010_0001; mode = 1'b1;
//ovfl = 1
end 

initial
begin
 //display variables
$monitor ("a=%b| b=%b| mode=%b| result=%b| ovfl=%b",
a, b, mode, result, ovfl);
#200 $finish;
end
endmodule
