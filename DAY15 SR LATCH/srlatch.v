module sr_latch(S, R, Q, Q_n);

	input logic S, R;
	output logic Q, Q_n;
	
	nor #10 i1(Q, R, Q_n);
	nor #10 i2(Q_n, S, Q);
	
endmodule
