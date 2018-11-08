module mul16tb();
reg[16:0] abit;
reg[16:0] bbit;
wire[31:0] S;

mul16 obj(
.a(abit),
.b(bbit),
.s(S)
);

initial begin
$dumpfile("mul16TEST.vcd");
$dumpvars(0,mul16tb);
$monitor("%b,%b,%b",abit,bbit,S);
#20
abit=3;
bbit=2;
#20
abit=4;
bbit=1;
#20
abit=6;
bbit=8;
#20
abit=1;
bbit=1;
#20
$finish;
end

endmodule