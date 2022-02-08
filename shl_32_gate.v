module shl_32_gate(
		input wire [31:0] a_in,
		input wire [31:0] shift_nums,
		output wire [31:0] b_out
);
		assign b_out[31:0] = a_in<<shift_nums;
endmodule