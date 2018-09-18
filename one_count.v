module onecount(COUNT,DATA);
  input [15:0]DATA;
  output reg [4:0]COUNT;
integer i;
  always @(DATA)
begin
  count_one(COUNT,DATA);
end

task count_one;
output [4:0]count;
input [15:0]x;
integer i;
begin
count=5'b0;
  for(i=0;i<=15;i=i+1)	
if(x[i]==1)
count=count+1'b1;
else
count=count;
end
endtask
endmodule
