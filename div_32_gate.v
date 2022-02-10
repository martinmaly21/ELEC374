module div_32_gate(
			input wire [31:0] dividendQ,
			input wire [31:0] divisorM,
			output reg [63:0] z_out
			);	
			reg [31:0] top  = [31:0] empty; //HERE
			reg [31:0] bottom = a_in;
			
			reg [64:0] tempAnQ = 0;
			reg [63:0] tempM = 0;
			
			//tempAnQ[64:32] = tempAnQ[64:32] + tempM;
			
			
			/*
			tempAnQ = {nothing, };
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
			z_out <= tempAnQ[63:0];
			*/
endmodule
				//div, top is remainder, bottom is quotient
