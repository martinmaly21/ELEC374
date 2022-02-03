// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Thu Feb 03 16:37:40 2022"

module adder_lpm_rc(
	add_sub,
	ina,
	inb,
	out_res_lpm,
	out_res_rc
);


input wire	add_sub;
input wire	[7:0] ina;
input wire	[7:0] inb;
output wire	[7:0] out_res_lpm;
output wire	[7:0] out_res_rc;






lpm_add_sub0	b2v_LPMadder(
	.add_sub(add_sub),
	.dataa(ina),
	.datab(inb),
	.result(out_res_lpm));


RCAdd	b2v_RCadder(
	.A(ina),
	.B(inb),
	.Result(out_res_rc));


endmodule
