`include "ms.v"
module jkms_test;
	reg clk,j,k;
      wire q,q_bar;
	wire clk2,j2,k2;
      jkms  inst(q,q_bar,clk,j,k);
      assign clk2=clk;
	assign j2=j;
	assign k2=k;
	initial
               clk = 1'b0;
      always #10
               clk = ~clk;

      initial
      begin
           j = 1'b0; k = 1'b0; 
           #60 j = 1'b0; k = 1'b1;
           #40 j = 1'b1; k = 1'b0;
           #20 j = 1'b1; k = 1'b1;
           #40 j = 1'b1; k = 1'b0;
           #5 j = 1'b0; #20 j = 1'b1;
           #10 $finish;
        end

initial begin
   
   $dumpfile("ms.vcd");
   $dumpvars(0,jkms_test);
   $display("time    clk   j   k   q   q_bar");
   $monitor("%g    %b %b %b %b %b",$time, clk, j, k, q, q_bar);

end

endmodule


