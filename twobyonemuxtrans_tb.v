`include "twobyonemuxtrans.v"

module twobyonemuxtranstb();
reg a1,b1,s1;
wire out;
initial begin
$dumpfile("twobyonemuxtrans_tb.vcd");
$dumpvars(0,twobyonemuxtranstb);
$display("in1,in2,gate,out");
$monitor("%b,%b,%b,%b",a1,b1,s1,out);
#20 a1=0;b1=0;s1=0;
#20 a1=1;b1=0;s1=0;
#20 a1=0;b1=1;s1=0;
#20 a1=1;b1=1;s1=0;
#20 a1=0;b1=0;s1=1;
#20 a1=1;b1=0;s1=1;
#20 a1=0;b1=1;s1=1;
#20 a1=1;b1=1;s1=1;
#20 $finish;
end

cmos_twobyonemuxtrans n(
.a(a1),
.b(b1),
.s(s1),
.y(out)
);
endmodule
