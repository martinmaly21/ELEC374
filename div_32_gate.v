module div_32_gate(
			input wire [31:0] a_in,
			input wire [31:0] b_in,
			output wire [63:0] z_out
			);	
			z_out [63:32] = [31:0] empty;
			z_out [31:0] = 
			
			genvar i;
			generate
					for(i = 0; i<64; i = i + 1)
						begin: gen_loop
							assign z_out[i] = ((a_in[i])&(b_in[i]));
						end
			endgenerate	
endmodule
				//div, top is remainder, bottom is quotient
