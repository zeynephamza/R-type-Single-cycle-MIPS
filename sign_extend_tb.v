module sign_extend_tb();

wire [31:0] or_result;
reg [4:0] shamt;

sign_extend setb(or_result, shamt);


initial begin
shamt = 5'b01010; 

end

initial begin
$monitor("shamt: %32b\nor_result: %32b",shamt, or_result);
end


endmodule