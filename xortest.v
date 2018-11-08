`include "xor.v"

module xortb();
reg a1,b1;
wire out;
initial begin
$dumpfile("xortest.vcd");
$dumpvars(0,xortb);
$display("in1,in2,out");
$monitor("%b,%b,%b",a1,b1,out);
#20 a1=0;b1=0;
#20 a1=1;b1=0;
#20 a1=0;b1=1;
#20 a1=1;b1=1;
#20 $finish;
end

cmos_xor n(
.a(a1),
.b(b1),
.y(out)
);
endmodule
