// File Name:   RCAdd_tb.v 
`timescale 1ns/10ps 
module RCAdd_tb; 
	reg [7:0] in_a, in_b; 
	wire [7:0] out_res_rc; 
initial 
	begin 
		in_a <= 8'd0; 
		in_b <= 8'd0; 
		#300   in_a <= 8'd105; 
				 in_b <= 8'd21; 
end 
RCAdd rc_adder(in_a, in_b, out_res_rc); 
endmodule
