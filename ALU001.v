module ALU001(A,B,S,Y);
  input [15:0]A,B;
  input [2:0]S;
  output [15:0]Y;
  reg [15:0]Y;
  
  always@(A or B or S)
  begin
     case(S)
       3'b000: Y = 16'b0000000000000000;
       3'b001: Y = A&B;
       3'b010: Y = A|B;
       3'b011: Y = A^B;
       3'b100: Y = ~A;
       3'b101: Y = A-B;
       3'b110: Y = A+B;
       3'b111: Y = 16'hFFFF; 
     endcase
  end
endmodule

