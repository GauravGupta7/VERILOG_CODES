module siso_tb();
  reg si, clk, rst;
  wire so;
  
  siso_beh SISO(clk, si, rst, so);
  always #10 clk = ~clk;
  initial 
  begin
    $monitor($time, "clk=%b, si=%b, rst=%b, so=%b",clk, si, rst, so);
    $display("GAURAV GUPTA[19BEC0047]");
    clk = 1'b0; si = 1'b0; rst = 1'b1;
    repeat(2)
    @(posedge clk);
    rst = 1'b0; si = 1'b1;
    @(posedge clk) si = 1'b0;
    @(posedge clk) si = 1'b1;
    @(posedge clk) si = 1'b0;
    repeat(5)
    @(posedge clk);
    $stop;
    
  end
endmodule

