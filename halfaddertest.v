`include "halfadder.v"

module halfaddertb();
reg a1,b1;
wire sum,carry;
initial begin
$dumpfile("halfaddertest.vcd");
$dumpvars(0,halfaddertb);
$display("in1,in2,sum,carry");
$monitor("%b,%b,%b,%b",a1,b1,sum,carry);
#20 a1=0;b1=0;
#20 a1=1;b1=0;
#20 a1=0;b1=1;
#20 a1=1;b1=1;
#20 $finish;
end

cmos_halfadder n(
.a(a1),
.b(b1),
.x(sum),
.y(carry)
);
endmodule
