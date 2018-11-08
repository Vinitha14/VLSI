module mul16(a,b,s);
input[16:0] a;
input[16:0] b; 
output[31:0] s;

assign s=a*b;

endmodule