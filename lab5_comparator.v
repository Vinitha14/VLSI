module comparator(s,a,b,y);
input s,a,b;
output y;

assign y=(s==1)?a:b;

endmodule
