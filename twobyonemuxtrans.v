module cmos_twobyonemuxtrans(a,b,s,y);
input a,b,s;
output y;
wire x;
supply0 gnd;
supply1 vdd;

//complement s
pmos(x,vdd,s);
nmos(x,gnd,s);

pmos(y,a,x);
nmos(y,a,s);

pmos(y,b,x);
nmos(y,b,s);

endmodule
