module _32bit_mux_tb();

wire [31:0] result;
reg [31:0] inp_A;
reg [31:0] inp_B;
reg select;

_32bit_mux _32bitmuxtb(result, inp_A, inp_B, select);


initial begin
inp_A = 32'b00000010000100011001000000100111;
inp_B = 32'b00000010000100011001000000100000;
select = 1'b0;
#5;
inp_A = 32'b00000010000100011001000000100111;
inp_B = 32'b00000010000100011001000000100000;
select = 1'b1;

end

initial begin
$monitor("inp_A: %32b\nInp_B: %32b \ns: %1b\nresult: %32b",inp_A,inp_B,select, result);
end


endmodule
