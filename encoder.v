module encoder(  a,b,c,d,en,o1,o2);
input a,b,c,d,en;
output o1,o2;
reg o1,o2;

always @(a or b or c or d or o1 or o2 or en)
begin 
  if(a && !b && !c && !d)
     begin
      o1=0;o2=0;
	 end
	 else if(!a && b && !c && !d)
	  begin
	   o1=1;o2=0;
	   end
	   else if(!a && !b && c && !d)
	    begin
	    o1=0;o2=1;
		end
		
	 else
	  begin
	  o1=1;o2=1;
	  end
end
endmodule