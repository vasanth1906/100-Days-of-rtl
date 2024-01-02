module 2bit-comparator(input [1:0] A,B, output A-equal-B, A-less-B, A-greater-B);  
 wire w0,w1,w2,w3,w4,w5,w6,w7;  
 xnor x1(w0,A[1],B[1]);  
 xnor x2(w1,A[0],B[0]);  
 and x3(A-equal-B,w0,w1);     
 assign w2 = (~A[0])& (~A[1])& B[0];  
 assign w3 = (~A[1])& B[1];  
 assign w4 = (~A[0])& B[1]& B[0];  
 assign A-less-B = w2 | w3 | w4;   
 assign w5 = (~B[0])& (~B[1])& A[0];  
 assign w6 = (~B[1])& A[1];  
 assign w7 = (~B[0])& A[1]& A[0];  
 assign A-greater-B = w5 | w6 | w7;  
 endmodule   
