module cmos_twobyonemux(s,a,b,y);
input s,a,b;
output y;

wire w,w1,w2,w3,w4;

supply0 gnd;
supply1 vdd;

nmos(w1,gnd, s);
pmos(w1,vdd, s);//w1 is complement of s

nmos(w,gnd,a);
nmos(w4,w,w1);

nmos(w2,gnd,b);
nmos(w4,w2,s);

pmos(w3,vdd,w1);
pmos(w3,vdd,a);

pmos(w4,w3,s);
pmos(w4,w3,b);//w4 will have complement of y

nmos(y,gnd,w4);
pmos(y,vdd,w4);

endmodule

