module practicef(A,B,C,D,Y,Bin,Bout,Diff,Borrow,S0,S1,I0,I1,I2,I3,Y);
  input A,B,C,Bin,S0,S1,I0,I1,I2,I3;
  output D,Y,Bout,Diff,Borrow,Y;
  test1 k1(S0,S1,I0,I1,I2,I3,Y);
  test2 k2(A,B,C,D,Y);
  test3 k3(A,B,Bin,D,Bout);
  test4 k4(A,B,Diff,Borrow);
endmodule