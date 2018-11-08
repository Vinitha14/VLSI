module cmos_transgate(a,b,y);
input a,b;
output y;
wire x;
supply0 gnd;
supply1 vdd;

//complement b
pmos(x,vdd,b);
nmos(x,gnd,b);

pmos(y,a,x);
nmos(y,a,b);

endmodule
