module concatenate (sltu_input ,msb);

input msb;
output [31:0] sltu_input;


or  or0(sltu_input[0],msb,1'b0),
	 or1(sltu_input[1],1'b0,1'b0),
	 or2(sltu_input[2],1'b0,1'b0),
    or3(sltu_input[3],1'b0,1'b0),
	 or4(sltu_input[4],1'b0,1'b0),
	 or5(sltu_input[5], 1'b0 ,1'b0),
	 or6(sltu_input[6], 1'b0, 1'b0),
	 or7(sltu_input[7], 1'b0, 1'b0),
	 or8(sltu_input[8], 1'b0, 1'b0),
	 or9(sltu_input[9], 1'b0, 1'b0),
	 or10(sltu_input[10], 1'b0, 1'b0),
	 or11(sltu_input[11], 1'b0, 1'b0),
	 or12(sltu_input[12], 1'b0, 1'b0),
	 or13(sltu_input[13], 1'b0, 1'b0),
	 or14(sltu_input[14], 1'b0, 1'b0),
	 or15(sltu_input[15], 1'b0, 1'b0),
	 or16(sltu_input[16], 1'b0, 1'b0),
	 or17(sltu_input[17], 1'b0, 1'b0),
	 or18(sltu_input[18], 1'b0, 1'b0),
	 or19(sltu_input[19], 1'b0, 1'b0),
	 or20(sltu_input[20], 1'b0, 1'b0),
	 or21(sltu_input[21], 1'b0, 1'b0),
	 or22(sltu_input[22], 1'b0, 1'b0),
	 or23(sltu_input[23], 1'b0, 1'b0),
	 or24(sltu_input[24], 1'b0, 1'b0),
	 or25(sltu_input[25], 1'b0, 1'b0),
	 or26(sltu_input[26], 1'b0, 1'b0),
	 or27(sltu_input[27], 1'b0, 1'b0),
	 or28(sltu_input[28], 1'b0, 1'b0),
	 or29(sltu_input[29], 1'b0, 1'b0),
	 or30(sltu_input[30], 1'b0, 1'b0),
	 or31(sltu_input[31], 1'b0, 1'b0);

endmodule
