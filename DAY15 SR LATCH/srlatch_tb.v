module sr_latch_tb();

  logic S, R;
  logic Q, Q_n;
  sr_latch uut(.S(S), .R(R), .Q(Q), .Q_n(Q_n));
initial
  begin
    S=1'b1; R=1'b0; 
    #1000 
    S=1'b0; R=1'b0; 
    #1000 
    S=1'b0; R=1'b1; 
    #1000 
    S=1'b0; R=1'b0; 
    #1000 
    S=1'b1; R=1'b1; 
    #1000 
    S=1'b0; R=1'b0; 
    #1000 
    $stop;
  end
endmodule
