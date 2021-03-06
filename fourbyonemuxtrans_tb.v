`include "fourbyonemuxtrans.v"

module fourbyonemuxtranstb();
reg a1,b1,c1,d1,s0,s1;
wire out;
initial begin
$dumpfile("fourbyonemuxtrans_tb.vcd");
$dumpvars(0,fourbyonemuxtranstb);
$display("in1,in2,in3,in4,gate1,gate2,out");
$monitor("%b,%b,%b,%b,%b,%b,%b",a1,b1,c1,d1,s0,s1,out);

#20 s0=0;s1=0;a1=0;b1=0;c1=0;d1=0;
#20 s0=0;s1=0;a1=0;b1=0;c1=0;d1=1;
#20 s0=0;s1=0;a1=0;b1=0;c1=1;d1=0;
#20 s0=0;s1=0;a1=0;b1=0;c1=1;d1=1;

#20 s0=0;s1=0;a1=0;b1=1;c1=0;d1=0;
#20 s0=0;s1=0;a1=0;b1=1;c1=0;d1=1;
#20 s0=0;s1=0;a1=0;b1=1;c1=1;d1=0;
#20 s0=0;s1=0;a1=0;b1=1;c1=1;d1=1;

#20 s0=0;s1=0;a1=1;b1=0;c1=0;d1=0;
#20 s0=0;s1=0;a1=1;b1=0;c1=0;d1=1;
#20 s0=0;s1=0;a1=1;b1=0;c1=1;d1=0;
#20 s0=0;s1=0;a1=1;b1=0;c1=1;d1=1;

#20 s0=0;s1=0;a1=1;b1=1;c1=0;d1=0;
#20 s0=0;s1=0;a1=1;b1=1;c1=0;d1=1;
#20 s0=0;s1=0;a1=1;b1=1;c1=1;d1=0;
#20 s0=0;s1=0;a1=1;b1=1;c1=1;d1=1;



#20 s0=0;s1=1;a1=0;b1=0;c1=0;d1=0;
#20 s0=0;s1=1;a1=0;b1=0;c1=0;d1=1;
#20 s0=0;s1=1;a1=0;b1=0;c1=1;d1=0;
#20 s0=0;s1=1;a1=0;b1=0;c1=1;d1=1;

#20 s0=0;s1=1;a1=0;b1=1;c1=0;d1=0;
#20 s0=0;s1=1;a1=0;b1=1;c1=0;d1=1;
#20 s0=0;s1=1;a1=0;b1=1;c1=1;d1=0;
#20 s0=0;s1=1;a1=0;b1=1;c1=1;d1=1;

#20 s0=0;s1=1;a1=1;b1=0;c1=0;d1=0;
#20 s0=0;s1=1;a1=1;b1=0;c1=0;d1=1;
#20 s0=0;s1=1;a1=1;b1=0;c1=1;d1=0;
#20 s0=0;s1=1;a1=1;b1=0;c1=1;d1=1;

#20 s0=0;s1=1;a1=1;b1=1;c1=0;d1=0;
#20 s0=0;s1=1;a1=1;b1=1;c1=0;d1=1;
#20 s0=0;s1=1;a1=1;b1=1;c1=1;d1=0;
#20 s0=0;s1=1;a1=1;b1=1;c1=1;d1=1;



#20 s0=1;s1=0;a1=0;b1=0;c1=0;d1=0;
#20 s0=1;s1=0;a1=0;b1=0;c1=0;d1=1;
#20 s0=1;s1=0;a1=0;b1=0;c1=1;d1=0;
#20 s0=1;s1=0;a1=0;b1=0;c1=1;d1=1;

#20 s0=1;s1=0;a1=0;b1=1;c1=0;d1=0;
#20 s0=1;s1=0;a1=0;b1=1;c1=0;d1=1;
#20 s0=1;s1=0;a1=0;b1=1;c1=1;d1=0;
#20 s0=1;s1=0;a1=0;b1=1;c1=1;d1=1;

#20 s0=1;s1=0;a1=1;b1=0;c1=0;d1=0;
#20 s0=1;s1=0;a1=1;b1=0;c1=0;d1=1;
#20 s0=1;s1=0;a1=1;b1=0;c1=1;d1=0;
#20 s0=1;s1=0;a1=1;b1=0;c1=1;d1=1;

#20 s0=1;s1=0;a1=1;b1=1;c1=0;d1=0;
#20 s0=1;s1=0;a1=1;b1=1;c1=0;d1=1;
#20 s0=1;s1=0;a1=1;b1=1;c1=1;d1=0;
#20 s0=1;s1=0;a1=1;b1=1;c1=1;d1=1;



#20 s0=1;s1=1;a1=0;b1=0;c1=0;d1=0;
#20 s0=1;s1=1;a1=0;b1=0;c1=0;d1=1;
#20 s0=1;s1=1;a1=0;b1=0;c1=1;d1=0;
#20 s0=1;s1=1;a1=0;b1=0;c1=1;d1=1;

#20 s0=1;s1=1;a1=0;b1=1;c1=0;d1=0;
#20 s0=1;s1=1;a1=0;b1=1;c1=0;d1=1;
#20 s0=1;s1=1;a1=0;b1=1;c1=1;d1=0;
#20 s0=1;s1=1;a1=0;b1=1;c1=1;d1=1;

#20 s0=1;s1=1;a1=1;b1=0;c1=0;d1=0;
#20 s0=1;s1=1;a1=1;b1=0;c1=0;d1=1;
#20 s0=1;s1=1;a1=1;b1=0;c1=1;d1=0;
#20 s0=1;s1=1;a1=1;b1=0;c1=1;d1=1;

#20 s0=1;s1=1;a1=1;b1=1;c1=0;d1=0;
#20 s0=1;s1=1;a1=1;b1=1;c1=0;d1=1;
#20 s0=1;s1=1;a1=1;b1=1;c1=1;d1=0;
#20 s0=1;s1=1;a1=1;b1=1;c1=1;d1=1;

#20 $finish;
end

cmos_fourbyonemuxtrans n(
.a(a1),
.b(b1),
.c(c1),
.d(d1),
.s0(s0),
.s1(s1),
.z(out)
);
endmodule
