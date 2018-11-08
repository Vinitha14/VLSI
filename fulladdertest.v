`include "fulladder.v"

module fulladdertb();
reg a1,b1,c1;
wire sum,carry;
initial begin
$dumpfile("fulladdertest.vcd");
$dumpvars(0,fulladdertb);
$display("in1,in2,in3,sum,carry");
$monitor("%b,%b,%b,%b,%b",a1,b1,c1,sum,carry);
#20 a1=0;b1=0;c1=0;
#20 a1=1;b1=0;c1=0;
#20 a1=0;b1=1;c1=0;
#20 a1=1;b1=1;c1=0;
#20 a1=0;b1=0;c1=1;
#20 a1=1;b1=0;c1=1;
#20 a1=0;b1=1;c1=1;
#20 a1=1;b1=1;c1=1;
#20 $finish;
end

cmos_fulladder n(
.a(a1),
.b(b1),
.c(c1),
.s(sum),
.o(carry)
);
endmodule
