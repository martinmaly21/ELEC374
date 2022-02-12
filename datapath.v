module datapath(
    PCin, 
    PCout, 
    IRin, 
    Clock, 
    Clear, 
    BusMuxOut,
    Yin, 
    MARin,
    MDRin, 
    MDRout, 
    Read, 
    Mdatain, 
    HIin, 
    HIout, 
    LOin, 
    LOout,
    R0in, 
    R0out, 
    R1in, 
    R1out, 
    R2in, 
    R2out, 
    R3in, 
    R3out, 
    R4in, 
    R4out,
    R5in,
    R5out, 
    R6in, 
    R6out, 
    R7in, 
    R7out, 
    R8in, 
    R8out,
    R9in, 
    R9out, 
    R10in, 
    R10out, 
    R11in, 
    R11out, 
    R12in, 
    R12out, 
    R13in,
    R13out, 
    R14in, 
    R14out, 
    R15in, 
    R15out, 
    Zhighin,
    Zlowin,
	 Zhighout,
    Zlowout,
    Cout,
    InPortout,
	 control
);
    input[3:0] control;

    //register signals
    input R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in,
    R10in, R11in, R12in, R13in, R14in, R15in, R0out, R1out,  R2out,  
    R3out,  R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out,
    R12out, R13out, R14out, R15out;
	 
	 input Zhighin, Zlowin, Cout, InPortout;
    
    //main
    input PCin, PCout, IRin, Yin, MARin, MDRin,
    MDRout, Read, HIin, HIout, LOin, LOout;
	 
	 input Clock, Clear;

    //mdata What is this? is there a busmuxoutSignal as well?
    input [31:0] Mdatain, BusMuxOut;
    //ALU 
    input [31:0] Zhighout, Zlowout;
	// Z enable signals from input to datapath TODO
	// Z values (from ALU)
	 wire [31:0] alu_hi_dataOut, alu_lo_dataOut;

    //inputs for the Bus
    wire [31:0] R0dataOut, R1dataOut,  R2dataOut, R3dataOut, R4dataOut,
    R5dataOut, R6dataOut, R7dataOut, R8dataOut, R9dataOut, R10dataOut,
    R11dataOut, R12dataOut, R13dataOut, R14dataOut, R15dataOut, 
    ZhighdataOut, ZlowdataOut, HIdataOut, LOdataOut, PCdataOut, MDRdataOut, InPortdataOut, CSignExtdataOut;

    wire IROut, PCOut;

    wire [31:0] yContents;

    //Registers
    Register R0 (Clock, Clear, BusMuxOut, R0in, R0dataOut);
    Register R1 (Clock, Clear, BusMuxOut, R1in, R1dataOut);
    Register R2 (Clock, Clear, BusMuxOut, R2in, R2dataOut);
    Register R3 (Clock, Clear, BusMuxOut, R3in, R3dataOut);
    Register R4 (Clock, Clear, BusMuxOut, R4in, R4dataOut);
    Register R5 (Clock, Clear, BusMuxOut, R5in, R5dataOut);
    Register R6 (Clock, Clear, BusMuxOut, R6in, R6dataOut);
    Register R7 (Clock, Clear, BusMuxOut, R7in, R7dataOut);
    Register R8 (Clock, Clear, BusMuxOut, R8in, R8dataOut);
    Register R9 (Clock, Clear, BusMuxOut, R9in, R9dataOut);
    Register R10 (Clock, Clear, BusMuxOut, R10in, R10dataOut);
    Register R11 (Clock, Clear, BusMuxOut, R11in, R11dataOut);
    Register R12 (Clock, Clear, BusMuxOut, R12in, R12dataOut);
    Register R13 (Clock, Clear, BusMuxOut, R13in, R13dataOut);
    Register R14 (Clock, Clear, BusMuxOut, R14in, R14dataOut);
    Register R15 (Clock, Clear, BusMuxOut, R15in, R15dataOut);

    Register HI (Clock, Clear, BusMuxOut, HIin, HIdataOut);
    Register LO (Clock, Clear, BusMuxOut, LOin, LOdataOut);
	
    Register zHI (Clock, Clear, alu_hi_dataOut, Zhighin, ZhighdataOut);
    Register zLO (Clock, Clear, alu_lo_dataOut, Zlowin, ZlowdataOut);

    Register PC (Clock, Clear, BusMuxOut, PCin, PCdataOut);
    Register IR (Clock, Clear, BusMuxOut, IRin, IROut);
    Register inPORT (Clock, Clear, BusMuxOut, IRin, PCOut);
    Register Y (Clock, Clear, BusMuxOut, Yin, yContents);

    //TODO: bus
	     //TODO: bus
	 BUS bus (
	 .R0out(R0out),
	 .R1out(R1out),
	 .R2out(R2out),
	 .R3out(R3out),
	 .R4out(R4out),
	 .R5out(R5out),
	 .R6out(R6out),
	 .R7out(R7out),
	 .R8out(R8out),
	 .R9out(R9out),
	 .R10out(R10out),
	 .R11out(R11out),
	 .R12out(R12out),
	 .R13out(R13out),
	 .R14out(R14out),
	 .R15out(R15out),
	 .PCout(PCout),
	 .Zhighout(Zhighout),
	 .Zlowout(Zlowout),
	 .MDRout(MDRout),
	 .HIout(HIout),
	 .LOout(LOout),
	 .Cout(Cout),
	 .InPortout(InPortout),
	 
	 .R0dataOut(R0dataOut),
	 .R1dataOut(R1dataOut),
	 .R2dataOut(R2dataOut),
	 .R3dataOut(R3dataOut),
	 .R4dataOut(R4dataOut),
	 .R5dataOut(R5dataOut),
	 .R6dataOut(R6dataOut),
	 .R7dataOut(R7dataOut),
	 .R8dataOut(R8dataOut),
	 .R9dataOut(R9dataOut),
	 .R10dataOut(R10dataOut),
	 .R11dataOut(R11dataOut),
	 .R12dataOut(R12dataOut),
	 .R13dataOut(R13dataOut),
	 .R14dataOut(R14dataOut),
	 .R15dataOut(R15dataOut),
	 .PCdataOut(PCdataOut),
	 .HIdataOut(HIdataOut),
	 .LOdataOut(LOdataOut),
	 .ZhighdataOut(ZhighdataOut),
	 .ZlowdataOut(ZlowdataOut),
	 .MDRdataOut(MDRdataOut),
	 .InPortdataOut(InPortdataOut),
	 .CSignExtdataOut(CSignExtdataOut),
	 .BusMuxOut(BusMuxOut)
	 );

    ALU alu (
        .a_in(yContents),
        .b_in(BusMuxOut), 
        .c_lo_out(alu_lo_dataOut),
        .c_hi_out(alu_hi_dataOut),
        .ctrl(control)
    );

    //TODO: MDR

endmodule