module pe_vl(D,Y);
  input [3:0]D;
  output [1:0]Y;
  reg [1:0]Y;
  //wire [3:0]D;
  
  always @(D)
  begin
    if (D == 4'b0000)
      Y = 2'bzz;
    else if (D[0] == 1'b1)
      Y = 2'b00;
    else if (D[1] == 1'b1)
      Y = 2'b01;
    else if (D[2] == 1'b1)
      Y = 2'b10;
    else if (D[3] == 1'b1)
      Y = 2'b11;
    end 
endmodule
  
