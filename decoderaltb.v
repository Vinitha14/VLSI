`include "decoderal.v"
module decoderaltb();
reg sel1,sel2,en;
wire a1,b1,c1,d1;


initial begin
$dumpfile("test4.vcd");
$dumpvars(0,decoderaltb);
$display("a b c d s1 s2 en");
$monitor("%b %b %b %b %b %b %b",a1,b1,c1,d1,sel1,sel2,en);
sel1=0;sel2=0;en=1;
#20 sel1=1;sel2=0;en=1;
#20 sel1=0;sel2=1;en=1;
#20 sel1=1;sel2=0;en=1;
#20 $finish;
end

decoderal n(
.a(a1),
.b(b1),
.c(c1),
.d(d1),
.sel(sel1),
.sel2(sel2),
.en(en)
 

);
endmodule
