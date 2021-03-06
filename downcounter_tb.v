`include "downcounter.v"
module syndcount_tb;

reg clock, reset, enable;
wire[7:0] count_out;

syndcounter8 d_tb(.clock(clock), .reset(reset), .enable(enable), .count_out(count_out));

initial begin
   
   clock = 1;
   reset = 0;
   enable = 0;

   #5 reset = 1;
   #10 reset = 0;
   #10 enable = 1;
   #200 enable = 0;
   #5 $finish;


end

always begin
#5 clock = ~clock;
end

initial begin

   $dumpfile("test2co.vcd");
   $dumpvars(0,syndcount_tb);
   $display("time    clk reset enable counter");
   $monitor("%g    %b %b %b %b",$time, clock, reset, enable, count_out);

end

endmodule
