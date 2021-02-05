//implementing SISO using D flip flops
module siso_str(si, clk, rst, so);
  input si, clk, rst;
  output so;
  wire so;
  wire qa, qb, qc; 
  
  d_flipflop(si,clk,rst,qa);
  d_flipflop(qa,clk,rst,qb);
  d_flipflop(qb,clk,rst,qc);
  d_flipflop(qc,clk,rst,so);
  
endmodule

  
