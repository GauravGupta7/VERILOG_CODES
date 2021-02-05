module task3Q2_tb();
  reg [3:0]A;
  wire Y;
  
  task3Q2 T3(A,Y);
  initial 
  begin
    $display("Start of Simulation");
    $monitor($time,"Value of A = %b, B = %b, C = %b, D = %b, y = %b",A[3],A[2],A[1],A[0],Y);
    A=4'b0000;
    #10 A=4'b0001;
    #10 A=4'b0010;
    #10 A=4'b0011;
    #10 A=4'b0100;
    #10 A=4'b0101;
    #10 A=4'b0110;
    #10 A=4'b0111;
    #10 A=4'b1000;
    #10 A=4'b1001;
    #10 A=4'b1010;
    #10 A=4'b1011;
    #10 A=4'b1100;
    #10 A=4'b1101;
    #10 A=4'b1110;
    #10 A=4'b1111;
    
    #10 $display("GAURAV GUPTA [19BEC0047]");
    $stop;
 end
endmodule

