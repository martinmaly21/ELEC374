module datapath(
    PCin, 
    PCout, 
	 IncPC,
    IRin, 
    Clock, 
    Clear, 
    Yin, 
    MARin,
    MDRin, 
    MDRout, 
    Read, 
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
	 ctrl,
	 wren,
	 outPortEnable
);
    input[3:0] ctrl;
	 
	 input Zhighin, Zlowin, Cout, InPortout;
    
    //main
    input PCin, PCout, IncPC, IRin, Yin, MARin, MDRin,
    MDRout, Read, HIin, HIout, LOin, LOout;
	 
	 input Clock, Clear, wren; //wren is write or read for ram
	 
	 wire [15:0] inEnableR, outEnableR; //register in and out enables

    
    wire [31:0] MDRinput, toOutputUnit, fromInputUnit;
	 
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

    wire IRdataOut, PCOut;
	 
	 wire [8:0] address;

    wire [31:0] yContents;
	 
	 input outPortEnable;
	 
	 wire 	
	 
		Gra,
		Grb,
		Grc,
		Rin,
		Rout,
		BAout;
		

	//input  reg [7:0] address
		
		
	 select_encode_logic encodeLogic ( 
	     IRdataOut, 
		  Gra, 
		  Grb, 
		  Grc, 
		  Rin, 
		  Rout, 
		  BAout, 
		  inEnableR, 
		  outEnableR, 
		  CSignExtdataOut
	 ); 

    //Registers
	 //TODO, chnage all reg inputs and outputs ENABLE signal to array thing so it works
    Register_0 R0 (Clock, Clear, BusMuxOut, inEnableR[0], R0dataOut, BAout);
    Register R1 (Clock, Clear, BusMuxOut, inEnableR[1], R1dataOut);
    Register R2 (Clock, Clear, BusMuxOut, inEnableR[2], R2dataOut);
    Register R3 (Clock, Clear, BusMuxOut, inEnableR[3], R3dataOut);
    Register R4 (Clock, Clear, BusMuxOut, inEnableR[4], R4dataOut);
    Register R5 (Clock, Clear, BusMuxOut, inEnableR[5], R5dataOut);
    Register R6 (Clock, Clear, BusMuxOut, inEnableR[6], R6dataOut);
    Register R7 (Clock, Clear, BusMuxOut, inEnableR[7], R7dataOut);
    Register R8 (Clock, Clear, BusMuxOut, inEnableR[8], R8dataOut);
    Register R9 (Clock, Clear, BusMuxOut, inEnableR[9], R9dataOut);
    Register R10 (Clock, Clear, BusMuxOut, inEnableR[10], R10dataOut);
    Register R11 (Clock, Clear, BusMuxOut, inEnableR[11], R11dataOut);
    Register R12 (Clock, Clear, BusMuxOut, inEnableR[12], R12dataOut);
    Register R13 (Clock, Clear, BusMuxOut, inEnableR[13], R13dataOut);
    Register R14 (Clock, Clear, BusMuxOut, inEnableR[14], R14dataOut);
	 //15 is special
    Register R15 (Clock, Clear, BusMuxOut, inEnableR[15], R15dataOut);

    Register HI (Clock, Clear, BusMuxOut, HIin, HIdataOut);
    Register LO (Clock, Clear, BusMuxOut, LOin, LOdataOut);
	
    Register zHI (Clock, Clear, alu_hi_dataOut, Zhighin, ZhighdataOut);
    Register zLO (Clock, Clear, alu_lo_dataOut, Zlowin, ZlowdataOut);

    Register PC (Clock, Clear, BusMuxOut, PCin, PCdataOut);
    Register IR (Clock, Clear, BusMuxOut, IRin, IRdataOut);

    Register inPORT (Clock, Clear, BusMuxOut, IRin, PCOut);
    Register Y (Clock, Clear, BusMuxOut, Yin, yContents);
	 
	// IncPCModule PCCounter (Clock, IncPC, Enable,);
	 


    //TODO: bus
	     //TODO: bus
	 BUS bus (
	 .R0out(outEnableR[0]),
	 .R1out(outEnableR[1]),
	 .R2out(outEnableR[2]),
	 .R3out(outEnableR[3]),
	 .R4out(outEnableR[4]),
	 .R5out(outEnableR[5]),
	 .R6out(outEnableR[6]),
	 .R7out(outEnableR[7]),
	 .R8out(outEnableR[8]),
	 .R9out(outEnableR[9]),
	 .R10out(outEnableR[10]),
	 .R11out(outEnableR[11]),
	 .R12out(outEnableR[12]),
	 .R13out(outEnableR[13]),
	 .R14out(outEnableR[14]),
	 .R15out(outEnableR[15]),
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
	 
	ram my_ram (
	
	address,
	Clock,
	MDRdataOut,
	wren,
	MDRinput
	);
	
	//make sure all bless todo, make all wires in data path, check all order with the . in parameter
	MAR mar (Clock, 
	  Clear,
	  BusMuxOut,
	  MARin,
	  address
);

    //TODO: MDR
	 MDR memDR (Clock, Clear, Read, MDRin, BusMuxOut, MDRinput, MDRdataOut);

	outPort out_port (Clock, Clear, BusMuxOut, outPortEnable, toOutputUnit);
	
	//THIS COULD BE A BIG ERROR! Do we use inPortdataOut OR inPortOut??
	inPort in_port (Clock, Clear, fromInputUnit, inPortdataOut);

endmodule