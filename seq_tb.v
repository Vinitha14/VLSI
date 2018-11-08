`include "seq.v"
module seq_test;
reg clk, rst, in;
wire out;
reg[15:0] sequence;
integer i;

seq dut(clk,rst,in,out);

initial begin
 $dumpfile("testseq.vcd");
 $dumpvars(0,seq_test);
 clk=0;
 rst=1;
 sequence=16'b0110010111011110;
 #5 rst=0;
 for(i=0;i<=15;i=i+1) begin
  in =sequence[i];
  #2 clk=1;
  #2 clk=0;
  $display("State= ", dut.state, " Input= ", in," Output= ", out);
  end
 end 
 endmodule
