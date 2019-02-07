module mips32(instruction, result);

input [31:0] instruction;
output [31:0] result;
reg clock=1'b1;


initial begin
	#50 clock=~clock;  #50 clock=~clock;
end

//this module use just structural verilog
//Check page 17 from lecture6 slides

//Needs alu32 module(from hw2), mips_register module(completely finished from TA) and
//control unit part(you need to design) 

//mips32 has to work correctly for 10 instruction.
//alu32 design has to stay same(8:1 selection in order hw2)

//for srl instruction, you have to add 1 mux in sra module in alu32 
//(if selectbit==1(sra) use msb, if selectbit==0(srl) use 0)
//after this addition, if select bits == 101, alu32 can work both sra and srl.
//for this project sra not used. selection bit for adding mux is always 0.

//for srl,srl alu32 use A,B. 
//for srl,srl use rt and shamt. 
// A = $rt, B = shamt(need to extended with 0).
//for other instructions, 
// A = $rt, B = $rs 

wire [31:0] write_data,read_data_1,read_data_2;
wire [4:0] write_reg, read_reg_1, read_reg_2;
wire signal_reg_write;

//wire [31:0] instruction_temp=32'b00000010000100011001000000100000;

wire [2:0] select_bits_ALU;
//input [31:0] inp_A, inp_B;
//input [2:0] select_a; //3 bit select

wire [31:0] R;
wire cout;
wire overflow;

wire temp;
wire not_f0, not_f5;
wire [31:0] sign_ext_shamt;
wire [31:0] mux_result1;
wire [31:0] mux_result2;
wire [31:0] mux_result3;
wire srl_signal;
wire sltu_signal;
wire not_srl;
wire[31:0] temp1= 32'b0;
wire[31:0] temp2= 32'b0;
wire [31:0] sltu_input;
wire [31:0] imm32;
wire [31:0] andi_result;
wire [31:0] ori_result;

//Finding srl signal
not (not_f0,instruction[0]);
not (not_f5,instruction[5]);

and (temp, instruction[1], not_f0);
and (srl_signal, temp, not_f5);
not (not_srl, srl_signal); //For making mux select 0.

//Finding sltu signal
or (sltu_signal, instruction[3], 1'b0); // sltu_signal=F3


mips_registers registers1(read_data_1,read_data_2, 32'b0, instruction[25:21],instruction[20:16],instruction[15:11], 1'b1, clock);
//mips_registers registers1(read_data_1,read_data_2, write_data, read_reg_1, read_reg_2, write_reg, 1'b1, clock);
initial begin
$monitor("RS: %32b, RT: %32b, RD adress: %5b",read_data_1,read_data_2, write_reg);
end

control_unit controlunit(select_bits_ALU, instruction[5:0]);
sign_extend signext(sign_ext_shamt, instruction[10:6]);
// For srl operation
_32bit_mux _32bitmux1 (mux_result1,  read_data_1, read_data_2, srl_signal);
_32bit_mux _32bitmux2 (mux_result2,  read_data_2, sign_ext_shamt, srl_signal);
alu32 alu(R, cout, overflow, mux_result1, mux_result2, select_bits_ALU);


zero_ext zeroextend (imm32, instruction[15:0]); // for andi
_32bit_and _32bitandi(andi_result, read_data_1, imm32);

_32bit_or _32bitori(ori_result, read_data_1, imm32); // for ori


concatenate conc ( sltu_input, R[31]); ///For sltu
_32bit_mux _32bitmux3  (mux_result3, R, sltu_input, sltu_signal);


or  or0(result[0],ori_result[0], 1'b0),
	 or1(result[1],ori_result[1], 1'b0),
	 or2(result[2],ori_result[2], 1'b0),
    or3(result[3],ori_result[3], 1'b0),
	 or4(result[4],ori_result[4], 1'b0),
	 or5(result[5],ori_result[5], 1'b0),
	 or6(result[6],ori_result[6], 1'b0),
	 or7(result[7],ori_result[7], 1'b0),
	 or8(result[8],ori_result[8], 1'b0),
	 or9(result[9],ori_result[9], 1'b0),
	 or10(result[10],ori_result[10], 1'b0),
	 or11(result[11],ori_result[11], 1'b0),
	 or12(result[12],ori_result[12], 1'b0),
	 or13(result[13],ori_result[13], 1'b0),
	 or14(result[14],ori_result[14], 1'b0),
	 or15(result[15],ori_result[15], 1'b0),
	 or16(result[16],ori_result[16], 1'b0),
	 or17(result[17],ori_result[17], 1'b0),
	 or18(result[18],ori_result[18], 1'b0),
	 or19(result[19],ori_result[19], 1'b0),
	 or20(result[20],ori_result[20], 1'b0),
	 or21(result[21],ori_result[21], 1'b0),
	 or22(result[22],ori_result[22], 1'b0),
	 or23(result[23],ori_result[23], 1'b0),
	 or24(result[24],ori_result[24], 1'b0),
	 or25(result[25],ori_result[25], 1'b0),
	 or26(result[26],ori_result[26], 1'b0),
	 or27(result[27],ori_result[27], 1'b0),
	 or28(result[28],ori_result[28], 1'b0),
	 or29(result[29],ori_result[29], 1'b0),
	 or30(result[30],ori_result[30], 1'b0),
	 or31(result[31],ori_result[31], 1'b0);


mips_registers registers2(temp1,temp2, result,  instruction[25:21], instruction[20:16], instruction[15:11], 1'b1, clock); //rd

endmodule
