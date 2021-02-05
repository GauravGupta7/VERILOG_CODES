// SR flip flop test bench
module SR_TB();
  reg s,r,clk,rst;
  wire q,q_;
  
  SR_FF SR_inst(s,r,clk,rst,q,q_);
  
  always #10 clk = ~clk;
  
  initial 
  begin
    s = 1'b0 ; r = 1'b0 ; clk = 1'b0 ; rst = 1'b1;
    $display("GAURAV GUPTA[19BEC0047]");
    $monitor($time,"s=%b , r=%b , q=%b , q_=%b",s,r,q,q_);
    #40 rst = 1'b0;
    @(posedge clk) s = 1'b0; r = 1'b0;
    repeat(2)
    @(posedge clk);
    s = 1'b0; r = 1'b1;
    #20 s = 1'b1; r = 1'b0;
    #20 s = 1'b1; r = 1'b1;
    repeat(2)
     @(posedge clk);
    $stop;
  end

endmodule
     
  
