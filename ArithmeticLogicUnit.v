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
			11 :  begin
					//TODO
					end
			10 :  begin
			      //TODO
					end
			9 :  begin
			      //TODO
					end
			8 :  begin
			      //TODO
					end
			7 :  begin
					//TODO
					end
			6 :  begin
			      //TODO
					end
			5 :  begin
			      //TODO
					end
			4 :  begin
			      //TODO
					end