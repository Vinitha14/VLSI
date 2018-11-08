`include "not.v"

module nottb();
reg a1;
wire out;
initial begin
$dumpfile("nottest.vcd");
$dumpvars(0,nottb);
$display("in1,out");
$monitor("%b,%b",a1,out);
#20 a1=0;
#20 a1=1;
#20 $finish;
end

cmos_not n(
.a(a1),
.y(out)
);
endmodule
