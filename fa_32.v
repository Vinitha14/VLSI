module fa_32(a,b,sum,dif,pdt, cout);

input [31:0]a;
input [31:0]b;

output [32:0]sum;
output[32:0]dif;
output[32:0]pdt;
output cout;

reg [32:0]sum;
reg [32:0]dif;
reg [32:0]pdt;
reg cout;

always @(a or b )begin 

sum = {1'b0,a}+ {1'b0,b};
dif = {1'b1,a}- {1'b0,b};
pdt = {1'b0,a}* {1'b0,b};


if(sum[32])begin
	cout=1;
	end
else begin
	cout=0;
	end


end



endmodule
