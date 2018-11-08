`include "tflipflop.v"
module tflipflop_tb;

reg t;
reg clk;

wire q;

tflipflop tff(.t(t), .clk(clk),.q(q));

initial 
  
  begin

     t = 0;
     clk = 0;
     #100;
     #5 $finish;

  end

always #3 clk=~clk;

always #5 t=~t;

initial begin
   
   $dumpfile("tflipflop.vcd");
   $dumpvars(0,tflipflop_tb);
   $display("time    clk   t   q");
   $monitor("%g    %b %b %b ",$time, clk, t, q);

end


endmodule
