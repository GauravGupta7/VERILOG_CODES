// SR flip-flop code
module SR_FF(s,r,clk,rst,q,q_);
  input s,r,clk,rst;
  output q,q_;
  reg q; 
  wire q_;
  
  always@(posedge clk)
  begin
    if(rst)
      q<=1'b0;
    else 
      begin
        if(s == 1'b0 && r == 1'b0)
          q<=q;
        else if(s == 1'b0 && r == 1'b1)
          q<=1'b0;
        else if(s == 1'b1 && r == 1'b0)
          q<=1'b1;
        else if(s == 1'b1 && r == 1'b1)
          q<=1'bz;
      end
  end
  assign q_ = ~q;
endmodule

    
        
        
