`include "sr.v"
module srflipflop_tb;

reg r,s;
reg clk;

wire q;

srff srf(.q(q), .q1(q1), .r(r), .s(s),.clk(clk));

initial 
  
  begin

     r = 0;
     s = 0;
     clk = 1;
     #100;
     #5 $finish;

  end

always #3 clk=~clk;

always #5 s=~s;

initial begin
   
   $dumpfile("srflipflop.vcd");
   $dumpvars(0,srflipflop_tb);
   $display("time    clk   s   r   q   q1");
   $monitor("%g    %b %b %b %b %b",$time, clk, s, r, q, q1);

end


endmodule
