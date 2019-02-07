module sign_extend(or_result, shamt);

output [31:0] or_result;
input [4:0] shamt;

or  or0(or_result[0],shamt[0],1'b0),
	 or1(or_result[1],shamt[1],1'b0),
	 or2(or_result[2],shamt[2],1'b0),
    or3(or_result[3],shamt[3],1'b0),
	 or4(or_result[4],shamt[4],1'b0),
	 or5(or_result[5], 1'b0 ,1'b0),
	 or6(or_result[6], 1'b0, 1'b0),
	 or7(or_result[7], 1'b0, 1'b0),
	 or8(or_result[8], 1'b0, 1'b0),
	 or9(or_result[9], 1'b0, 1'b0),
	 or10(or_result[10], 1'b0, 1'b0),
	 or11(or_result[11], 1'b0, 1'b0),
	 or12(or_result[12], 1'b0, 1'b0),
	 or13(or_result[13], 1'b0, 1'b0),
	 or14(or_result[14], 1'b0, 1'b0),
	 or15(or_result[15], 1'b0, 1'b0),
	 or16(or_result[16], 1'b0, 1'b0),
	 or17(or_result[17], 1'b0, 1'b0),
	 or18(or_result[18], 1'b0, 1'b0),
	 or19(or_result[19], 1'b0, 1'b0),
	 or20(or_result[20], 1'b0, 1'b0),
	 or21(or_result[21], 1'b0, 1'b0),
	 or22(or_result[22], 1'b0, 1'b0),
	 or23(or_result[23], 1'b0, 1'b0),
	 or24(or_result[24], 1'b0, 1'b0),
	 or25(or_result[25], 1'b0, 1'b0),
	 or26(or_result[26], 1'b0, 1'b0),
	 or27(or_result[27], 1'b0, 1'b0),
	 or28(or_result[28], 1'b0, 1'b0),
	 or29(or_result[29], 1'b0, 1'b0),
	 or30(or_result[30], 1'b0, 1'b0),
	 or31(or_result[31], 1'b0, 1'b0);

endmodule


