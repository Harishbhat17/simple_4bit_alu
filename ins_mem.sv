module ins_mem #(parameter n=4)(input [9:0] write_data,write_address,read_address
input clk,
output [15:0] data,
input valid
);
reg [15:0] mem [1023:0];
always @(posedge clk)
begin
mem[write_address]<=write_data;
end
assign data=mem[read_address];



endmodule