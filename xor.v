module cmos_xor(a,b,y);
input a,b;
output y;
wire w,w1,w2,w3,c1,c2;
supply0 gnd;
supply1 vdd;

pmos(c1,vdd,a);
nmos(c1,gnd,a);

pmos(c2,vdd,b);
nmos(c2,gnd,b);

nmos(w1,gnd,b);
nmos(y,w1,a);

nmos(w,gnd,c2);
nmos(y,w,c1);

pmos(w2,vdd,a);
pmos(w2,vdd,b);

pmos(y,w2,c1);
pmos(y,w2,c2);


endmodule
