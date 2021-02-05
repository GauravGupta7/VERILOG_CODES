//SIPO Test Bench
module SIPO_tb();
  reg si,clk,rst;
  wire so;

  SIPO s2(clk,rst,si,so);
  always #10 clk=~clk;

  initial begin
    clk=1'b0;si=1'b0;rst=1'b1;
    $monitor($time, "clk=%b, si=%b, rst=%b, so=%b",clk, si, rst, so);
    $display("Gaurav Gupta [19BEC0047]");
    repeat(2)
    @(posedge clk);
    rst=1'b0;si=1'b1;
    @(posedge clk) si=1'b0;
    @(posedge clk) si=1'b1;
    @(posedge clk) si=1'b0;
    repeat(5)
    @(posedge clk);
    $stop;
  end
endmodule
