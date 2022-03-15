module Register_0 (
	input wire clk, 
	input wire clr,
	input wire [31:0] dIn,
	input wire Rin,
	output reg [31:0] qOut,
	input wire BAout
);
	always@(posedge clk or negedge clr)
		begin
			if(clr == 0)
				qOut <= 0;
			else if(Rin && !BAout)
				qOut <= dIn;
		end		
endmodule