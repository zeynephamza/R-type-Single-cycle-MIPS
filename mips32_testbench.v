module mips32_testbench ();

reg [31:0] instruction_set;
wire [31:0] result;

mips32 mips_test(instruction_set,result);

initial begin

//instruction_set = 32'b00000010000100011001000000100000;  // rs=$16 rt=$17 rd=$18 s2=s0+s1   	addu  s2 s0 s1
//Continue for all instruction types 
//Must be least 10 control lines
//add addu sub subu and or nor sll srl sltu

//You can change the inside of the register.mem file as desired.

//instruction_set = 32'b00000001101011100110000000100010;   //rs=$13, rt=$14, rd=$12  s2=s0-s1      sub s2 s0 s1
//instruction_set = 32'b00000001001001100001000000100011;   // rs=$9, rt=$6, rd=$2  s2=s0-s1    subu s2 s0 s1
//instruction_set = 32'b00000001001001100001000000101011;   // rs=$9, rt=$6, rd=$2  s2=s0<s1 1:0    sltu s2 s0 s1
//instruction_set = 32'b00000001011010100010100011000010;   //shamt=3 rs=$9, rt=$6, rd=$2  s2=s1>>shamt    srl s2 s0 s1
//instruction_set = 32'b00000001001001100001000001000000;   //shamt=2 rs=$9, rt=$6, rd=$2  s2=s1>>shamt    sll s2 s0 s1
//instruction_set = 32'b00000010101101101010000101011111;   //rs=$21, rt=$22, rd=$20  s2=s0&s1      and s2 s0 s1
instruction_set = 32'b00000010101101101010000011111000;   //rs=$21, rt=$22, rd=$20  s2=s0|s1      or  s2 s0 s1
//instruction_set = 32'b00000011010110111100100000100001;   //rs=$26, rt=$27, rd=$25  s2=s0+s1      add s2 s0 s1
//instruction_set = 32'b00000001101011100110000000100111;   //rs=$13, rt=$14, rd=$12  s2=s0 nor s1      nor s2 s0 s1




end

initial begin
$monitor("Instruction: %32b\nResult: %32b",instruction_set, result);

end


endmodule