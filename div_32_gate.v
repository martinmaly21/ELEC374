module div_32_gate(
			input reg [31:0] a_in,
			input reg [31:0] b_in,
			output reg [63:0] z_out
			);	
			reg top[31:0]  = [31:0] empty;
			z_out [31:0] = b_in;
			
			genvar i;
			generate
					for(i = 0; i<64; i = i + 1)
						begin: gen_loop
						
							if (negative)
							being
							end
							else 
							//positive
							begin
							end
							
						end
			endgenerate	
endmodule
				//div, top is remainder, bottom is quotient
