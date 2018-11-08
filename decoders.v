module decoders( a,b,c,d ,sel,en);
output a,b,c,d;
input[1:0]sel,en;
reg a,b,c,d;
always @(a or b or c or d or sel or en)
case(sel)
  0 : begin a=1;b=0;c=0;d=0; end
  1 : begin a=0;b=1;c=0;d=0; end
  2 : begin a=0;b=0;c=1;d=0; end
  3 : begin a=0;b=0;c=0;d=1; end
  endcase
endmodule