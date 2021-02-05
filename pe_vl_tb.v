module pe_vl_tb();
  reg [3:0]D;
  wire [1:0]Y;
  
  pe_vl pe_inst(D,Y);
  
  initial 
  begin
    $display("Gaurav Gupta[19BEC0047]");
    $monitor($time, "Value of D = %b, Y = %b", D,Y);
    D = 4'b0000;
    #10 D = 4'b0001;
    #10 D = 4'b0011;
    #10 D = 4'b0111;
    #10 D = 4'b1111;
    #10 $stop;
  end 
endmodule

