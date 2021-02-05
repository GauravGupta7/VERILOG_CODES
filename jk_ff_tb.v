module jk_ff_tb;
reg j,k,clk,rst;
wire q;
jk_ff j1(j,k,clk,rst,q);
always #10 clk=~clk;
initial begin
$monitor($time,"clk=%b,rst=%b,j=%b,k=%b,q=%b",clk,rst,j,k,q);
$display("GAURAV GUPTA 19BEC0047");
j=1'b0; k=1'b0; clk=1'b0; rst=1'b1;
#20 rst=1'b0;
@(posedge clk) j=1'b0;k=1'b0;
#20 j=1'b0; k=1'b1;
#20 j=1'b1; k=1'b0;
#20 j=1'b1; k=1'b1;
repeat(2)
@(posedge clk)
#20 $finish;
end
endmodule