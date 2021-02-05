module ALU001_tb();
  reg [15:0]A,B;
  reg [2:0]S;
  wire [15:0]Y;
  
  ALU001 A1(A,B,S,Y);
  initial 
  begin
    $display("Start");
    $monitor($time,"Value of A=%b , B=%b , S=%b , Y=%b",A,B,S,Y);
    A = 16'b1000100010001000; B=16'b1110111011101110; S=3'b000;
    #10 S=3'b001;
    #10 S=3'b010;
    #10 S=3'b011;
    #10 S=3'b100;
    #10 S=3'b101;
    #10 S=3'b110;
    #10 S=3'b111;
    
    #10 $display("GAURAV GUPTA [19BEC0047]");
    $stop;
  end
endmodule

    
