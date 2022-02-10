module not_32_gate(
			input wire [31:0] a_in,
			output reg [31:0] b_out
			);
			
			
			genvar i;
			generate
					for(i = 0; i<32; i = i + 1)
						begin: gen_loop
							assign b_out[i] = !(a_in[i]);
						end
			endgenerate
endmodule
							
