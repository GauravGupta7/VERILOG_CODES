module mux2x1_tb();
  reg s;
  reg [1:0] i;
  wire y;
  
  mux2x1 mux_inst(s,i,y);
  
  initial
  begin
    $display("***MULTIPLEXER2X1***\n");
    $display("Start of Simulation");
    $monitor($time,"Value of s = %b, i = %b, y = %b",s,i,y);
    s = 1'b0; i = 2'b00;
    #10 s=1'b0; i=2'b01;
    #10 s=1'b0; i=2'b10;
    #10 s=1'b0; i=2'b11;
    #10 s=1'b1; i=2'b00;
    #10 s=1'b1; i=2'b01;
    #10 s=1'b1; i=2'b10;
    #10 s=1'b1; i=2'b11;
    #10 $display("GAURAV GUPTA [19BEC0047]");
    $stop;
  end
  
endmodule