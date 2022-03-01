module select_encode_logic(
	Gra,
	Grb,
	Grc,
	Rin,
	Rout,
	BAout,
	regIn,
	regOut,
	BusMuxOut,
	CSignExtdataOut
	);
	
	input wire 	
		Gra,
		Grb,
		Grc,
		Rin,
		Rout,
		BAout;

	output wire [15:0] regIn, regOut;
		
	input wire [31:0] BusMuxOut;
	
	output reg [31:0] CsignExtdataOut;
		
endmodule
