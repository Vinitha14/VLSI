module cmos_fourbyonemuxtrans(a,b,c,d,s0,s1,z);
input a,b,c,d,s0,s1;
output z;
wire c1,c2,x,y;
supply0 gnd;
supply1 vdd;

//complement s0
pmos(c1,vdd,s0);
nmos(c1,gnd,s0);

//complement s1
pmos(c2,vdd,s1);
nmos(c2,gnd,s1);

pmos(x,a,c2);
nmos(x,a,s1);

pmos(x,b,s1);
nmos(x,b,c2);

pmos(y,c,c2);
nmos(y,c,s1);

pmos(y,d,s1);
nmos(y,d,c2);

pmos(z,x,c1);
nmos(z,x,s0);

pmos(z,y,s0);
nmos(z,y,c1);

endmodule
