module cmos_nor(a,b,y);
input a,b;
output y;
wire w;
supply0 gnd;
supply1 vdd;

nmos(y,gnd,b);
nmos(y,gnd,a);
pmos(w,vdd,b);
pmos(y,w,a);

endmodule
