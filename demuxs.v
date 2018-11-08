module demuxs(select,in,o);
input [2:0]select;
input in;
output [7:0]o;
reg [7:0]o;

wire [2:0]select;
wire in;

always @ (select or in or o)

case(select)
  0: begin o=0;o[0]=in; end
   1: begin o=0;o[1]=in; end
    2: begin o=0; o[2]=in; end
	 3: begin o=0;o[3]=in; end
	  4: begin o=0;o[4]=in; end
	   5: begin o=0;o[5]=in; end
	    6: begin o=0;o[6]=in; end
		 7: begin o=0;o[7]=in; end
   
endcase
endmodule
