`include "twobyonemux.v"
module cmos_fourbyonemux(s0, s1, a, b, c, d, y);
input s0,s1,a,b,c,d;
output y;

wire w,w1,w2,w3,w4;

supply0 gnd;
supply1 vdd;

cmos_twobyonemux mux1(.s(s0), .a(a), .b(b), .y(w));

nmos(w2,gnd,w);
pmos(w2,vdd,w);

cmos_twobyonemux mux2(.s(s0), .a(c), .b(d), .y(w1));

nmos(w3,gnd,w1);
pmos(w3,vdd,w1);

cmos_twobyonemux mux3(.s(s1), .a(w2), .b(w3), .y(w4));

nmos(y,gnd,w4);
pmos(y,vdd,w4);

endmodule

