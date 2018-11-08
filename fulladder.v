module cmos_fulladder(a,b,c,s,o);
input a,b,c;
output s,o;
wire w,w1,w2,w3,w4,m,m1,m2,m3,m4,m5,m6,c1,c2,c3,c4,x,y,z;
supply0 gnd;
supply1 vdd;

//complement a
pmos(c1,vdd,a);		
nmos(c1,gnd,a);

//complement b
pmos(c2,vdd,b);
nmos(c2,gnd,b);

//complement c
pmos(c4,vdd,c);
nmos(c4,gnd,c);

//complement x
pmos(c3,vdd,x);
nmos(c3,gnd,x);

//xor of a and b
nmos(w1,gnd,b);
nmos(x,w1,a);

nmos(w,gnd,c2);
nmos(x,w,c1);

pmos(w2,vdd,a);
pmos(w2,vdd,b);

pmos(x,w2,c1);
pmos(x,w2,c2);

//xor of output of xor(a and b) and c
nmos(m1,gnd,c);
nmos(s,m1,x);

nmos(m,gnd,c4);
nmos(s,m,c3);

pmos(m2,vdd,x);
pmos(m2,vdd,c);

pmos(s,m2,c3);
pmos(s,m2,c4);

//and of a and b
nmos(w3,gnd,b);
nmos(w4,w3,a);
pmos(w4,vdd,b);
pmos(w4,vdd,a);
nmos(y,gnd,w4);
pmos(y,vdd,w4);

//and of output of and(a and b) and c
nmos(m3,gnd,c);
nmos(m4,m3,x);
pmos(m4,vdd,c);
pmos(m4,vdd,x);
nmos(z,gnd,m4);
pmos(z,vdd,m4);

//or of the output of both and gates
nmos(m6,gnd,z);
nmos(m6,gnd,y);

pmos(m5,vdd,z);
pmos(m6,m5,y);

nmos(o,gnd,m6);
pmos(o,vdd,m6);

endmodule
