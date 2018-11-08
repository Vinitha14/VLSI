module demuxif(select,in,o);
input [2:0]select;
input in;
output [7:0]o;
reg [7:0]o;


always @ (select or in or o)
begin
o=0;
o[select]=in;
end
endmodule
