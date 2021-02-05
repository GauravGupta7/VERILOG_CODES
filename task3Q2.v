module task3Q2(A,Y);
  input [3:0]A;
  output Y;
  wire [1:0]I;
  
  assign I[0]=(A[2]&A[1])|((~A[2])&(~A[1])&(~A[0]));
  assign I[1]=(~A[2]&A[0])|(A[2]&(~A[0]))|(A[2]&A[1]);
  
  mux2x1 M1(A[3],I,Y);
endmodule
  


