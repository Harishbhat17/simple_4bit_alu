module risc_v #(
parameter n=4
)(input clk ,
input [n-1:0]a,b,op,
output reg [n*2-1:0] y);
always_ff @(posedge clk )
begin
	case(op)
	4'b0000:y<=a+b;
	4'b0001:y<=a-b;
	4'b0010:y<=a*b;
	4'b0011:y<=a&b;
	4'b0100:y<=a|b;
	4'b0101:y<=a^b;
	4'b0110:y<=~(a&b);
	default:y<=0;
	endcase
	end
endmodule