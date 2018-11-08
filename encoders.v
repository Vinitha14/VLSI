module encoders(  in,en,o);
input [3:0]in;
input en;
output [1:0]o;
reg [1:0]o;

always @(in or o or en)
case(in)
    1:begin o[0]=0;o[1]=0; end
	2:begin o[0]=1;o[1]=0; end
	4:begin o[0]=0;o[1]=1; end
	8:begin o[0]=1;o[1]=1; end
endcase
endmodule