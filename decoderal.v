module decoderal( a,b,c,d , sel,sel2,en);
output a,b,c,d;
input sel,sel2,en;
reg a,b,c,d;
always @(a or b or c or d or sel or sel2 or en)
begin 
  if(!sel && !sel2)
     begin
      a=1;b=0;c=0;d=0;
	 end
	 else if(!sel && sel2)
	  begin
	   a=0;b=1;c=0;d=0;
	   end
	   else if(sel && !sel2)
	    begin
	    a=0;b=0;c=1;d=0;
		end
		
	 else
	  begin
	  a=0;b=0;c=0;d=1;
	  end
end
endmodule