module sub_32_gate(
			input wire [31:0] a_in,
			input wire [31:0] b_in,
			output [31:0] c_out
			);	
					assign c_out = ((a_in)-(b_in));
endmodule
							
