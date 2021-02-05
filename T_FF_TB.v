module T_FF_TB;
  reg clk,rst,t;
  wire q;
  t_FF t1(t,clk,rst,q);
  always #10 clk=~clk;
  initial begin
    $monitor($time,"clk=%b,rst=%b,t=%b,q=%b",clk,rst,t,q);
    $display("GAURAV GUPTA[19BEC0047]");
    clk=1'b0; rst=1'b1; 
    #20 rst=1'b0;
    @(posedge clk)t=1'b0;
    #20 t=1'b1;
    repeat(4)
      @(posedge clk)
    #40 $finish;
  end
endmodule
