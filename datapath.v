module datapath(
    PCin, 
    PCout, 
	 IncPC,
    IRin, 
    Clock, 
    Clear, 
    //BusMuxOut,
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
    Zhighin,
    Zlowin,
	 Zhighout,
    Zlowout,
    Cout,
    InPortout,
	 ctrl
);
    input[3:0] ctrl;
	 
	 input Zhighin, Zlowin, Cout, InPortout;
    
    //main
    input PCin, PCout, IncPC, IRin, Yin, MARin, MDRin,
    MDRout, Read, HIin, HIout, LOin, LOout;
	 
	 input Clock, Clear;

    //mdata What is this? is there a busmuxoutSignal as well?
    input [31:0] Mdatain;
    //ALU 
    input Zhighout, Zlowout;
	// Z enable signals from input to datapath TODO
	// Z values (from ALU)
	 wire [31:0] alu_hi_dataOut, alu_lo_dataOut, BusMuxOut;

    //inputs for the Bus
    wire [31:0] R0dataOut, R1dataOut,  R2dataOut, R3dataOut, R4dataOut,
    R5dataOut, R6dataOut, R7dataOut, R8dataOut, R9dataOut, R10dataOut,
    R11dataOut, R12dataOut, R13dataOut, R14dataOut, R15dataOut, 
    ZhighdataOut, ZlowdataOut, HIdataOut, LOdataOut, PCdataOut, MDRdataOut, InPortdataOut, CSignExtdataOut;

    wire IROut, PCOut;

    wire [31:0] yContents;

    //Registers
	 //TODO, chnage all reg inputs and outputs ENABLE signal to array thing so it works
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
	 //15 is special
    Register R15 (Clock, Clear, BusMuxOut, R15in, R15dataOut);

    Register HI (Clock, Clear, BusMuxOut, HIin, HIdataOut);
    Register LO (Clock, Clear, BusMuxOut, LOin, LOdataOut);
	
    Register zHI (Clock, Clear, alu_hi_dataOut, Zhighin, ZhighdataOut);
    Register zLO (Clock, Clear, alu_lo_dataOut, Zlowin, ZlowdataOut);

    Register PC (Clock, Clear, BusMuxOut, PCin, PCdataOut);
    Register IR (Clock, Clear, BusMuxOut, IRin, IROut);
    Register inPORT (Clock, Clear, BusMuxOut, IRin, PCOut);
    Register Y (Clock, Clear, BusMuxOut, Yin, yContents);
	 
	// IncPCModule PCCounter (Clock, IncPC, Enable,);
	 


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
        .ctrl(ctrl)
    );

    //TODO: MDR
	 MDR memDR (Clock, Clear, Read, MDRin, BusMuxOut, Mdatain, MDRdataOut);

endmodule