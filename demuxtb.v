module demuxtb;

wire [7:0] d;
reg[2:0] select;
reg    q;

integer  i;



initial begin
   #1 $monitor("d = %b", d, "  |  select = ", select, "  |  q = ", q );

   for( i = 0; i <= 2; i = i + 1)
   begin
     q=1;
      select = 0;  #1;
      select = 1;  #1;
      select = 2;  #1;
      select = 3;  #1;
	  select = 4;  #1;
	  select = 5;  #1;
	  select = 6;  #1;
	  select = 7;  #1;
      $display("-----------------------------------------");
    end
end

demuxif mydemux( select, q,d );
endmodule