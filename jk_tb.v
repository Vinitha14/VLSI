`include "jk.v"
module jkflipflop_tb;

reg j,k;
reg c;

wire q,q1;

jk jkf(.q(q), .q1(q1), .j(j), .k(k),.c(c));

initial 
  
  begin

     j = 0;
     k = 0;
     c = 1;
     #100;
     #5 $finish;

  end

always #3 c=~c;

always #5 j=~j;

initial begin
   
   $dumpfile("jkflipflop.vcd");
   $dumpvars(0,jkflipflop_tb);
   $display("time    clk   j   k   q   q1");
   $monitor("%2d    %b %b %b %b %b",$time, c, j, k, q, q1);

end


endmodule
