module rol_32_gate(
	input wire [31:0] a_in,
	input wire [31:0] rotate_nums,
	output wire [31:0] b_out
);
	assign b_out = ((a_in << (rotate_nums % 32))|(a_in >> (32 - (rotate_nums % 32))));

endmodule
