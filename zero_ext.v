module zero_ext (imm32 ,imm16);

input [15:0] imm16;
output [31:0] imm32;

or  or0(imm32[0],imm16[0],1'b0),
	 or1(imm32[1],imm16[1],1'b0),
	 or2(imm32[2],imm16[2],1'b0),
    or3(imm32[3],imm16[3],1'b0),
	 or4(imm32[4],imm16[4],1'b0),
	 or5(imm32[5],imm16[5],1'b0),
	 or6(imm32[6],imm16[6], 1'b0),
	 or7(imm32[7],imm16[7], 1'b0),
	 or8(imm32[8],imm16[8], 1'b0),
	 or9(imm32[9],imm16[9], 1'b0),
	 or10(imm32[10], imm16[10], 1'b0),
	 or11(imm32[11], imm16[11], 1'b0),
	 or12(imm32[12], imm16[12], 1'b0),
	 or13(imm32[13], imm16[13], 1'b0),
	 or14(imm32[14], imm16[14], 1'b0),
	 or15(imm32[15], imm16[15], 1'b0),
	 or16(imm32[16], 1'b0, 1'b0),
	 or17(imm32[17], 1'b0, 1'b0),
	 or18(imm32[18], 1'b0, 1'b0),
	 or19(imm32[19], 1'b0, 1'b0),
	 or20(imm32[20], 1'b0, 1'b0),
	 or21(imm32[21], 1'b0, 1'b0),
	 or22(imm32[22], 1'b0, 1'b0),
	 or23(imm32[23], 1'b0, 1'b0),
	 or24(imm32[24], 1'b0, 1'b0),
	 or25(imm32[25], 1'b0, 1'b0),
	 or26(imm32[26], 1'b0, 1'b0),
	 or27(imm32[27], 1'b0, 1'b0),
	 or28(imm32[28], 1'b0, 1'b0),
	 or29(imm32[29], 1'b0, 1'b0),
	 or30(imm32[30], 1'b0, 1'b0),
	 or31(imm32[31], 1'b0, 1'b0);
	 
	 

endmodule
