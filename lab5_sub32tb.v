module adder32tb();
reg[31:0] abit;
reg[31:0] bbit;
wire[31:0] S;

adder32 obj(
.a(abit),
.b(bbit),
.s(S)
);

initial begin
$dumpfile("adder32TEST.vcd");
$dumpvars(0,adder32tb);
$monitor("%b,%b,%b",abit,bbit,S);
#20
abit=3;
bbit=2;
#20
abit=4;
bbit=1;
#20
abit=8;
bbit=6;
#20
abit=1;
bbit=1;
#20
$finish;
end

endmodule