`include "encoders.v"
module encoderstb();
wire [1:0]sel;
reg [3:0]in1;
reg en;


initial begin
$dumpfile("test4.vcd");
$dumpvars(0,encoderstb);
$display("i3 i2 i1 i0 s1 s2 en");
$monitor("%b  %b  %b  %b  %b  %b  %b",in1[3],in1[2],in1[1],in1[0],sel[0],sel[1],en);
in1[0]=1;in1[1]=0;in1[2]=0;in1[3]=0;en=1;
#20 in1[0]=0;in1[1]=1;in1[2]=0;in1[3]=0;en=1;
#20 in1[0]=0;in1[1]=0;in1[2]=1;in1[3]=0;en=1;
#20 in1[0]=0;in1[1]=0;in1[2]=0;in1[3]=1;en=1;
#20 $finish;
end

encoders n(
.in(in1),
.o(sel),
.en(en)
 
);
endmodule
