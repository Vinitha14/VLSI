
module muxif( select, d, q );

input[2:0] select;
input[7:0] d;
output     q;

reg     q;
wire[2:0] select;
wire[7:0] d;
always @(select)
begin
 q = d[select];
end
endmodule
