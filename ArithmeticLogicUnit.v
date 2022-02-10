module ArithmeticLogicUnit(
	input wire [31:0] a_in,
	input wire [31:0] b_in,
	output reg [31:0] c_lo_out,
	output reg [31:0] c_hi_out,
	input wire [3:0] control //note: will not need to use all 16 values
);

	wire [63:0] division_quotient;
	wire [63:0] multiplication_result;
	
	//TODO: div_32_gate
	//TODO: multiplication
	
	always@(*) begin
		case(cntrl)
			11  :	begin
					//TODO
				    end
			10  :   begin
			        //TODO
				    end
			9  :    begin
			        //TODO
					end
			8  :    begin
			        //TODO
					end
			7  :    begin
					//TODO
					end
			6  :    begin
			        //TODO
					end
			5  :    begin
			        //TODO
					end
			4  :    begin
			        //TODO
					end
			3  :    begin
			        //TODO
					end
			2  :    begin
			        //TODO
					end
			1  :    begin
			        //TODO
					end
			0  :    begin
			        and_32_gate(a_in, b_in, c_lo_out);
				    end
			default : begin end
		endcase
	end
endmodule