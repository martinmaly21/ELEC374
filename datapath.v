module datapath( PCin, PCout, IRin, Zin, Zhighout, Zlowout, Yin, MARin,
MDRin, MDRout, Read, Mdatain, HIin, HIout, LOin, LOout,
R0in, R0out, R1in, R1out, R2in, R2out, R3in, R3out, R4in, R4out,
 R5in, R5out, R6in, R6out, R7in, R7out, R8in, R8out,
 R9in, R9out, R10in, R10out, R11in, R11out, R12in, R12out, R13in,
 R13out, R14in, R14out, R15in, R15out
);

//register signals
input R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in,
 R10in, R11in, R12in, R13in, R14in, R15in, R0out, R1out,  R2out,  
 R3out,  R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out,
 R12out, R13out, R14out, R15out;
 
//main
input PCin, PCout, IRin, Zin, Zhighout, Zlowout, Yin, MARin, MDRin,
 MDRout, Read, HIin, HIout, LOin, LOout;

//mdata 
input [31:0] Mdatain;

//inputs for the Bus
wire [31:0] R0dataOut, R1dataOut,  R2dataOut, R3dataOut, R4dataOut,
R5dataOut, R6dataOut, R7dataOut, R8dataOut, R9dataOut, R10dataOut,
R11dataOut, R12dataOut, R13dataOut, R14dataOut, R15dataOut;

//wire [31:0] R1dataOut, R1dataOut, R1dataOut, R1dataOut, R1dataOut, R1dataOut,


//Registers
//Register R0 ()
endmodule