module and_32_gate(
			input reg [31:0] a_in,
			input reg [31:0] b_in,
			output reg [31:0] c_out
			);
			
			
			genvar i;
			generate
					for(i = 0; i<32; i = i + 1)
						begin: gen_loop
							assign c_out[i] = ((a_in[i])&(b_in[i]));
						end
			endgenerate
endmodule
							
