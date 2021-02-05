module dec_t3(A,X);
  
  input [3:0]A;
  output X;
  reg X;
  
  always @(A)
  begin
    case(A)
      4'b0111: X=1;
      4'b1011: X=1;
      4'b1101: X=1;
      4'b1110: X=1;
      4'b1111: X=1;
      default: X=0;
  endcase
end
endmodule


