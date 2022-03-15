module Register_0 (
	input wire clk, 
	input wire clr,
	input wire [31:0] dIn,
	input wire Rin,
	output reg [31:0] R0_data_out,
	input wire BAout
);

Register R0 (Clock, Clear, BusMuxOut, inEnableR[0], R0dataOut);
 assign R0_data_out = (BAout) ? 32'd0 : R0dataOut;
	
endmodule