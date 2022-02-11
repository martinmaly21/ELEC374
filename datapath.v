module datapath(
    PCin, 
    PCout, 
    IRin, 
    Clock, 
    Clear, 
    BusMuxOut, 
    Zin, 
    Zhighout, 
    Zlowout, 
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
    highin, 
    highout,
    lowin,
    lowout,
    zHighin,
    zHighout,
    zLowin,
    zLowout,
    Cout,
    InPortout
);

//Cout
//InPortout

//register signals
input R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in,
 R10in, R11in, R12in, R13in, R14in, R15in, R0out, R1out,  R2out,  
 R3out,  R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out,
 R12out, R13out, R14out, R15out;
 
//main
input PCin, PCout, IRin, Zin, Zhighout, Zlowout, Yin, MARin, MDRin,
 MDRout, Read, HIin, HIout, LOin, LOout;

//mdata 
input [31:0] Mdatain, BusMuxOut;

//inputs for the Bus
wire [31:0] R0dataOut, R1dataOut,  R2dataOut, R3dataOut, R4dataOut,
R5dataOut, R6dataOut, R7dataOut, R8dataOut, R9dataOut, R10dataOut,
R11dataOut, R12dataOut, R13dataOut, R14dataOut, R15dataOut;

//wire [31:0] R1dataOut, R1dataOut, R1dataOut, R1dataOut, R1dataOut, R1dataOut,


    //Registers
    Register R0 (Clock, Clear, BusMuxOut, R0in, R0out);
    Register R1 (Clock, Clear, BusMuxOut, R1in, R1out);
    Register R2 (Clock, Clear, BusMuxOut, R2in, R2out);
    Register R3 (Clock, Clear, BusMuxOut, R3in, R3out);
    Register R4 (Clock, Clear, BusMuxOut, R4in, R4out);
    Register R5 (Clock, Clear, BusMuxOut, R5in, R5out);
    Register R6 (Clock, Clear, BusMuxOut, R6in, R6out);
    Register R7 (Clock, Clear, BusMuxOut, R7in, R7out);
    Register R8 (Clock, Clear, BusMuxOut, R8in, R8out);
    Register R9 (Clock, Clear, BusMuxOut, R9in, R9out);
    Register R10 (Clock, Clear, BusMuxOut, R10in, R10out);
    Register R11 (Clock, Clear, BusMuxOut, R11in, R11out);
    Register R12 (Clock, Clear, BusMuxOut, R12in, R12out);
    Register R13 (Clock, Clear, BusMuxOut, R13in, R13out);
    Register R14 (Clock, Clear, BusMuxOut, R14in, R14out);
    Register R15 (Clock, Clear, BusMuxOut, R15in, R15out);

    Register HI (Clock, Clear, BusMuxOut, highin, highout);
    Register LO (Clock, Clear, BusMuxOut, lowin, lowout);

    //TODO!
    Register Z_HI (Clock, Clear, , zHighin, zHighout);
    Register Z_LO (Clock, Clear, , zLowin, zLowout);

    Register PC (Clock, Clear, BusMuxOut, , );
    Register IR (Clock, Clear, BusMuxOut, , );
    Register IN_PORT (Clock, Clear, BusMuxOut, , );
    Register Y (Clock, Clear, BusMuxOut, , );

    //TODO: bus

    //TODO: alu

    //TODO: MDR

endmodule