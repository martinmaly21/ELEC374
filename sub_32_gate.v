module sub_32_gate(
			input reg [31:0] a_in,
			input reg [31:0] b_in,
			output reg [31:0] c_out
			);	
					assign c_out = ((a_in)-(b_in));
endmodule
							
