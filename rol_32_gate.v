module rol_32_gate(
	input reg [31:0] a_in,
	input reg [31:0] rotate_nums,
	output reg [31:0] b_out
);
	assign out = ((a_in << (rotate_nums % 32))|(a_in >> (32 - (rotate_nums % 32))));

endmodule
