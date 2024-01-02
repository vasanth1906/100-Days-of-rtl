module tb_top;
  reg a, b, Bin;
  wire D, Bout;
  
  full_subtractor fs(a, b, Bin, D, Bout);
  
initial 
begin
    a = 0; b = 0; Bin = 0; #1;
    a = 0; b = 0; Bin = 1; #1;
    a = 0; b = 1; Bin = 0; #1;
    a = 0; b = 1; Bin = 1; #1;
    a = 1; b = 0; Bin = 0; #1;
    a = 1; b = 0; Bin = 1; #1;
    a = 1; b = 1; Bin = 0; #1;
    a = 1; b = 1; Bin = 1; 
  $stop;
  end
endmodule
