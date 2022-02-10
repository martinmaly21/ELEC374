module mul_32_gate(
    input wire [31:0] a_in,
    input wire [31:0] b_in,
    output reg [63:0] c_out
);
    integer i;
    reg rBit;
    reg [63:0] result_P;
    reg [63:0] b_temporary;
    reg [63:0] b_temporary_negative;

    always @(a_in,b_in) begin
        rBit = 0;
        result_P = 64'd0;
        b_temporary = 64'd0 + b_in;
        b_temporary_negative = 64'd0 - b_in;

        for(i=0;i<32;i+=1) begin
            if (x[i] != rBit) begin
                if (rBit == 1) begin
                    result_P += (b_temporary << i);
                end else begin
                    result_P += (b_temporary_negative << i);
                end
                //are ternary operators okay?
                rBit = (x[i] == 1) ? 1 : 0;
            end
        end
    end
    assign c_out = result_P;
endmodule