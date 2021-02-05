module blocking;
  reg a,b,c;
  
  initial
  begin
    a=0 ; b=1 ; c=0;
  end
  
  always c = #100 ~c;
  
  always @ (posedge c)
  begin 
    a = b;
    b = a;
  end
endmodule




