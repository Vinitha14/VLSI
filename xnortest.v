`include "xnor.v"

module xnortb();
reg a1,b1;
wire out;
initial begin
$dumpfile("xnortest.vcd");
$dumpvars(0,xnortb);
$display("in1,in2,out");
$monitor("%b,%b,%b",a1,b1,out);
#20 a1=0;b1=0;
#20 a1=1;b1=0;
#20 a1=0;b1=1;
#20 a1=1;b1=1;
#20 $finish;
end

cmos_xnor n(
.a(a1),
.b(b1),
.c(out)
);
endmodule
