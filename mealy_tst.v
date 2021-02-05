module mealy_tst();
  reg clk,reset,in_seq;
  wire out_seq,w1,w2;
  
  mealy_fsm M_inst(reset, clk, in_seq, out_seq);
  mealy_001 m_inst(reset,clk,in_seq,w1);
  mealy_110 n_inst(reset,clk,in_seq,w2);
  
always #5 clk=~clk;
initial begin
   clk=1'b0;reset=1'b1;in_seq=1;
   $display("Gaurav Gupta 19BEC0047");
   $monitor($time,"in_seq=%b;out_seq=%b",in_seq,out_seq);
   @(posedge clk);
    #25 reset=1'b0;
    #10 in_seq=1'b1;
    #10 in_seq=1'b1;
    #10 in_seq=1'b0;
    #10 in_seq=1'b0;
    #10 in_seq=1'b1;
    #10 in_seq=1'b1;
    #10 in_seq=1'b1;
    #10 in_seq=1'b1;
    #10 in_seq=1'b0;
    #10 in_seq=1'b0;
    #10 in_seq=1'b1;
    #100 $stop;
  end
endmodule

