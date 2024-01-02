module tb_top;
  reg a, b;
  wire D, B;
  
  half_subtractor hs(a, b, D, B);
  
  initial 
    begin
    a = 0; b = 0;#5
    a = 0; b = 1;#5
    a = 1; b = 0;#5
    a = 1; b = 1;#5
    Sstop;
  end
endmodule
