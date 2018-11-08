module tflipflop(t, clk, q);

input t;
input clk;

output q;

reg q;

initial q<=1'b0;

always @(posedge clk)

q<=q^t;

endmodule

