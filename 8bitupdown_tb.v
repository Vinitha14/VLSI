`include "8bitupdown.v"
module bitupdowntb;
reg 	CLK,RESET,ENABLE,MODE;
wire[7:0] COUNT_OUT;
wire TC;
initial begin
$dumpfile("testco.vcd");
$dumpvars(0,bitupdowntb);
$display("clk, enable,  reset, mode, count_out, tc");
$monitor("%b,%b,%b,%b,%b,%b",CLK,ENABLE,RESET,MODE,COUNT_OUT,MODE);
CLK=1;
ENABLE=1;
RESET=1;
MODE=0;
#2048 $finish;
end
always #1024 RESET=0;
always #512 MODE=~MODE;
always #1 CLK=~CLK;
 bitupdown ud(.clk(CLK),.enable(ENABLE),.reset(RESET),.mode(MODE),.count(COUNT_OUT),.tc(TC));	

endmodule
