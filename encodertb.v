`include "encoder.v"
module encodertb();

reg a1,b1,c1,d1,en;
wire sel1,sel2;


initial begin
$dumpfile("test4.vcd");
$dumpvars(0,encodertb);
$display("a b c d s1 s2 en");
$monitor("%b %b %b %b %b %b %b",a1,b1,c1,d1,sel2,sel1,en);
a1=0;b1=0;c1=0;d1=1;en=1;
#20 a1=0;b1=0;c1=1;d1=1;en=1;
#20 a1=0;b1=0;c1=1;d1=0;en=1;
#20 a1=1;b1=0;c1=0;d1=0;en=1;
#20 $finish;
end

encoder n(
.a(a1),
.b(b1),
.c(c1),
.d(d1),
.o1(sel1),
.o2(sel2),
.en(en)
 

);
endmodule
