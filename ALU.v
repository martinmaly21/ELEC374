module ALU(
	input wire [31:0] a_in,
	input wire [31:0] b_in,
	output reg [31:0] c_lo_out,
	output reg [31:0] c_hi_out,
	input wire [3:0] ctrl //note: will not need to use all 16 values
);

	wire [63:0] division_quotient;
	wire [63:0] multiplication_result;
	
	//do we ever refer to 'div' or 'mul'?
 	div_32_gate div(a_in, b_in, division_quotient);
	mul_32_gate mul(multiplication_result, a_in, b_in);
	
	always@(*) begin
		case(ctrl)
			11  :	begin
						//division stuff
						c_lo_out = division_quotient[31:0];
						c_hi_out = division_quotient[63:32];
				    end
			10  :   begin
						//multiplication stuff
						c_lo_out = multiplication_result[31:0];
						c_hi_out = multiplication_result[63:32];
				    end
			9  :    begin
						//rotate right
						ror_32_gate(a_in, b_in, c_lo_out);
					end
			8  :    begin
						//rotate left
						rol_32_gate(a_in, b_in, c_lo_out);
					end
			7  :    begin
						//shift right
						b_out[31:0] = a_in>>shift_nums;
					end
			6  :    begin
						//shift left
						shl_32_gate(a_in, b_in, c_lo_out);
					end
			5  :    begin
						//logical not
						//should we pass b or a?
						not_32_gate(b_in, c_lo_out);
					end
			4  :    begin
						//logical neg
						//should we pass b or a? 
			            neg_32_gate(b_in, c_lo_out);
					end
			3  :    begin
			            //subtract
						sub_32_gate(a_in, b_in, c_lo_out);
					end
			2  :    begin
			           //add
					   //add_32_gate(a_in, b_in, c_lo_out);
					end
			1  :    begin
			           or_32_gate(a_in, b_in, c_lo_out);
					end
			0  :    begin
			           and_32_gate (a_in, b_in, c_lo_out);
				    end
			default : begin end
		endcase
	end
endmodule