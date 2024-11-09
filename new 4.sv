module program_co #(parameter n=16)(input start,clk,load,
input [n-1:0] load_add,
output reg [n-1:0] add);
reg [n-1:0] count=0;

always @(posedge clk)
	begin
		if(start == 1 &&load==1 )
			count<=load_add;
		else if(start == 1)
			count<=count+1;
		else
			count<=count;

	end
endmodule