module dff_test;
reg S,R, CLK;
wire Q, QBAR;
srff_behavior dut(.q(Q), .qbar(QBAR), .s(S), .r(R), .clk(CLK));
initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial 
begin 
 S= 1; R= 0;
 #100; S= 0; R= 1; 
 #100; S= 0; R= 0; 
 #100;  S= 1; R=1; 
$stop;
end 
endmodule  
