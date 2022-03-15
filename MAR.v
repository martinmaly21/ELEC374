module MAR (
	input wire clk, 
	input wire clr,
	input wire [31:0] dIn,
	input wire Rin,
	output reg [8:0] address
);
	always@(posedge clk or negedge clr)
		begin
			if(clr == 0)
				qOut <= 0;
			else if(Rin)
				qOut <= dIn[8:0];
		end		
endmodule