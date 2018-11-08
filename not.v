module cmos_not(a,y);
input a;
output y;
wire w;
supply0 gnd;
supply1 vdd;

nmos(y,gnd,a);
pmos(y,vdd,a);

endmodule
