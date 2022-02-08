module shl_32_gate(
		input reg [31:0] a_in,
		input reg [31:0] shift_nums,
		output reg [31:0] b_out
);
		assign b_out[31:0] = a_in<<shift_nums;
endmodule