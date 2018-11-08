module seq(clk,rst,in,out);
input clk,rst,in;
output out;
reg[1:0] state;
reg out;

always @ (posedge clk, posedge rst) begin
if(rst)
state<=2'b00;
else
begin
  case(state)
  2'b00: begin
  if(in==0) state<=2'b01;
  else state<=2'b10;
  end
  2'b01: begin
  if(in) state<=2'b01;
  else state<=2'b10;
  end
  2'b10: begin
  if(in) state<=2'b10;
  else state<=2'b10;
  end
  endcase
  end
 end
 
 always @(posedge clk,posedge rst) begin
 if(rst)
  out<=0;
 else if (state==2'b01)
  out<=1;
 else
   out<=0;
 end
 endmodule
  
