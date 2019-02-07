module zero_ext_tb();

wire [31:0] result;
reg [15:0] imm16;

zero_ext zeroextendtb(result, imm16);


initial begin
imm16 = 16'b0101010101011111; 

end

initial begin
$monitor("result: %32b",result);
end


endmodule
