module BUS (R0out, R1out,  R2out, R3out,  R4out, R5out, R6out,
	R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out,
	R15out, PCout, Zhighout, Zlowout, MDRout, HIout, LOin,
 LOout, Cout, InPortout, R0dataOut, R1dataOut,  R2dataOut, R3dataOut,
 R4dataOut, R5dataOut, R6dataOut, R7dataOut, R8dataOut, R9dataOut,
 R10dataOut, R11dataOut, R12dataOut, R13dataOut, R14dataOut, R15dataOut,
 PCdataOut, HIdataOut, LOdataOut,  ZhighdataOut, ZlowdataOut, MDRdataOut,
 InPortdataOut, CSignExtdataOut
);

///all inputs

//select values
//registers
input wire R0out, R1out,  R2out, R3out,  R4out, R5out, R6out, R7out,
R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out;
//everything else
input wire PCout, Zhighout, Zlowout, MDRout, HIout, LOin,
 LOout, Cout, InPortout;
 
//actaul contents acting as inputs for the bus mux 
//registers 
input wire [31:0] R0dataOut, R1dataOut,  R2dataOut, R3dataOut, R4dataOut,
R5dataOut, R6dataOut, R7dataOut, R8dataOut, R9dataOut, R10dataOut,
R11dataOut, R12dataOut, R13dataOut, R14dataOut, R15dataOut;

//everything else
input wire [31:0] PCdataOut, HIdataOut, LOdataOut,  ZhighdataOut, ZlowdataOut,
 MDRdataOut, InPortdataOut, CSignExtdataOut;

 



endmodule
