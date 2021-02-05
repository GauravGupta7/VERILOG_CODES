module mux2x1(s,i,y);
  input [1:0]i;
  input s;
  output y;
  reg y;
  always @(s or i)
  begin
     y=s?i[1]:i[0];
  end
endmodule


