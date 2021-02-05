module moore_110(reset,clk,in_seq,out_seq);
input reset;
input clk;
input in_seq;
output out_seq;
//----------- Parameters defining State machine States-----

parameter S0 = 3'b00, S1 = 3'b01, S2 = 3'b10, S3 = 3'b11;
reg out_seq;

reg [1:0] state; 
reg [1:0] next_state;

always @ (posedge clk)
begin
  if (reset)
    state<= S0;
  else
    state<= next_state;
end
  
always @ (state or in_seq)
begin 
next_state = 2'b00;
case(state)

  S0 : begin
  out_seq = 1'b0;
  if (in_seq == 1'b0)
  next_state = S0;
  else
  next_state = S1;
  end

  S1 : begin
  out_seq = 1'b0;
  if (in_seq == 1'b0)
  next_state = S0;
  else
  next_state = S2;
  end

  S2 : begin
  out_seq = 1'b0;
  if (in_seq == 1'b0)
  next_state = S3;
  else
  next_state = S2;
  end

  S3 : begin
  out_seq = 1'b1;
  if (in_seq == 1'b0)
  next_state = S0;
  else
  next_state = S1;
  end

  default : begin
  next_state = S0; out_seq = 1'b0;
  end
endcase
end

always @ (posedge clk)
begin 
if (reset == 1'b1) state <= S0;
else state <= next_state;
end
endmodule





