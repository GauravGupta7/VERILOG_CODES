module DA1(A,B,P);
  input [1:0]A,B;
  output [3:0]P;
  assign P[0] = A[0]&B[0];
  assign P[1] = (A[0]&B[1])^(A[1]&B[0]);
  assign P[2] = ((A[0]&B[1])&(A[1]&B[0]))^(A[1]&B[1]);
  assign P[3] = ((A[0]&B[1])&(A[1]&B[0]))&(A[1]&B[1]);
endmodule
