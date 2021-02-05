module moore_fsm(reset,clk,in_seq,out_seq);
input reset;
input clk;
input in_seq;
output out_seq;

wire w1,w2;
moore_001 m_inst(reset,clk,in_seq,w1);
moore_110 n_inst(reset,clk,in_seq,w2);
or O1(out_seq,w1,w2);

endmodule