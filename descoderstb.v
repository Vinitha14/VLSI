`include "decoders.v"
module decoderstb();
reg [1:0]sel,en;
wire a1,b1,c1,d1;


initial begin
$dumpfile("test4.vcd");
$dumpvars(0,decoderstb);
$display("a b c d s1 s2 en");
$monitor("%b %b %b %b %b %b %b",a1,b1,c1,d1,sel[0],sel[1],en);
sel[0]=0;sel[1]=0;en=1;
#20 sel[0]=1;sel[1]=0;en=1;
#20 sel[0]=0;sel[1]=1;en=1;
#20 sel[0]=1;sel[1]=1;en=1;
#20 $finish;
end

decoders n(
.a(a1),
.b(b1),
.c(c1),
.d(d1),
.sel(sel),

.en(en)
 

);
endmodule
