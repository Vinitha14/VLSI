`include "fa_32.v"
module fa_32tb;

reg [31:0]abit;
reg [31:0]bbit;
wire [32:0]s;
wire [32:0]d;
wire [32:0]p;
wire c,cin1;

initial 
begin
abit = 0;
bbit = 0;
#20 abit=2; bbit=1;
#20 abit=24; bbit=2;
#20 abit=16; bbit=2;
#20 abit=11; bbit=5;
#40;
end

initial 
begin
$dumpfile("fa32.vcd");
$dumpvars(0,fa_32tb);
$display("time  \t \t   abit   \t \t    bbit \t \t \t sum  \t \t \t \t cout \t \t  dif  \t \t \t pdt");
$monitor("%2d %32b %32b %32b %1b %32b \n %32b",$time,abit,bbit,s,c,d,p);
end

fa_32 obj(
.a(abit),
.b(bbit),
.sum(s),
.cout(c),
.dif(d),
.pdt(p)
);


endmodule
