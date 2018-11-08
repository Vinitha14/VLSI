`include "lab5_comparator.v"
module comparatortb();
reg abit,bbit,sbit;
wire Y;

comparator obj(
.s(sbit),
.a(abit),
.b(bbit),
.y(Y)
);

initial begin
$dumpfile("comparatorTEST.vcd");
$dumpvars(0,comparatortb);
$monitor("%b,%b,%b,%b",sbit,abit,bbit,Y);
#20
abit=1;
bbit=0;
sbit=0;

#20
abit=1;
bbit=0;
sbit=1;

#20
$finish;
end

endmodule
