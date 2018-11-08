module cmos_halfadder(a,b,x,y);
input a,b;
output x,y;
wire w,w1,w2,w3,w4,c1,c2;
supply0 gnd;
supply1 vdd;

pmos(c1,vdd,a);
nmos(c1,gnd,a);

pmos(c2,vdd,b);
nmos(c2,gnd,b);

nmos(w1,gnd,b);
nmos(x,w1,a);

nmos(w,gnd,c2);
nmos(x,w,c1);

pmos(w2,vdd,a);
pmos(w2,vdd,b);

pmos(x,w2,c1);
pmos(x,w2,c2);

nmos(w3,gnd,b);
nmos(w4,w3,a);
pmos(w4,vdd,b);
pmos(w4,vdd,a);
nmos(y,gnd,w4);
pmos(y,vdd,w4);

endmodule
