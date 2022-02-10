module ArithmeticLogicUnit(
	input wire [31:0] a_in,
	input wire [31:0] b_in,
	output reg [31:0] c_lo_out,
	output reg [31:0] c_hi_out,
	input wire [3:0] control //note: will not need to use all 16 values
);

	wire [63:0] division_quotient;
	wire [63:0] multiplication_result;
	
	