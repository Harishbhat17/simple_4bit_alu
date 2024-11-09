module reg_add #(parameter n=4,
				 parameter reg_depth=16	)
					(input [n-1:0]read_address1,read_address2,
input [n-1:0] write_address,write_data,
input clk,
output [n-1:0] read_data1,read_data2,
);

reg [n-1:0] mem[reg_depth-1:0];
always @(posedge clk)
	mem[write_address]<=write_data;
	
end	
assign read_data1=mem[read_address1];
assign read_data2=mem[read_address2];

endmodule