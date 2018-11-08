
module muxs( select, d, q );

input[2:0] select;
input[7:0] d;
output     q;

reg     q;
wire[2:0] select;
wire[7:0] d;
always @(select)

case(select)
  0: q=d[0];
   1: q=d[1];
    2: q=d[2];
	 3: q=d[3];
	  4: q=d[4];
	   5: q=d[5];
	    6: q=d[6];
		 7: q=d[7];
  

endcase
endmodule
