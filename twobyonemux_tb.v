`include "twobyonemux.v"
module twobyonemux_tb();
reg s1,a1,b1;

wire out;

initial begin
$dumpfile("cmos_twobyonemux.vcd");
$dumpvars(0,twobyonemux_tb);
$display("s1,in1,in2,out");
$monitor("%b, %b, %b, %b", s1, a1, b1, out);
#20 s1=0;a1=0;b1=0;
#20 s1=0;a1=0;b1=1;
#20 s1=0;a1=1;b1=0;
#20 s1=0;a1=1;b1=1;
#20 s1=1;a1=0;b1=0;
#20 s1=1;a1=0;b1=1;
#20 s1=1;a1=1;b1=0;
#20 s1=1;a1=1;b1=1;
#20 $finish;
end


cmos_twobyonemux n(
.s(s1),
.a(a1),
.b(b1),
.y(out)
);

endmodule
