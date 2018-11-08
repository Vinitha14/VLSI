`include "seq_det.v"
module seq_detect_test;
reg clk, rst, in;
wire out;
reg[15:0] sequence;
integer i;

seq_detect dut(clk,rst,in,out);

initial begin
 $dumpfile("test_seq.vcd");
 $dumpvars(0,seq_detect_test);
 clk=0;
 rst=1;
 sequence=16'b1110101111011001;
 #5 rst=0;
 for(i=0;i<=15;i=i+1) begin
  in =sequence[i];
  #2 clk=1;
  #2 clk=0;
  $display("State= ", dut.state, " Input= ", in," Output= ", out);
  end
 end 
 endmodule
