module _32bit_nor (nor_result, input_a, input_b);

input  [31:0] input_a, input_b;
output [31:0] nor_result;

//noring all bits with their friends


nor nor0(nor_result[0],input_a[0],input_b[0]),
	 nor1(nor_result[1],input_a[1],input_b[1]),
	 nor2(nor_result[2],input_a[2],input_b[2]),
    nor3(nor_result[3],input_a[3],input_b[3]),
	 nor4(nor_result[4],input_a[4],input_b[4]),
	 nor5(nor_result[5],input_a[5],input_b[5]),
	 nor6(nor_result[6],input_a[6],input_b[6]),
	 nor7(nor_result[7],input_a[7],input_b[7]),
	 nor8(nor_result[8],input_a[8],input_b[8]),
	 nor9(nor_result[9],input_a[9],input_b[9]),
	 nor10(nor_result[10],input_a[10],input_b[10]),
	 nor11(nor_result[11],input_a[11],input_b[11]),
	 nor12(nor_result[12],input_a[12],input_b[12]),
	 nor13(nor_result[13],input_a[13],input_b[13]),
	 nor14(nor_result[14],input_a[14],input_b[14]),
	 nor15(nor_result[15],input_a[15],input_b[15]),
	 nor16(nor_result[16],input_a[16],input_b[16]),
	 nor17(nor_result[17],input_a[17],input_b[17]),
	 nor18(nor_result[18],input_a[18],input_b[18]),
	 nor19(nor_result[19],input_a[19],input_b[19]),
	 nor20(nor_result[20],input_a[20],input_b[20]),
	 nor21(nor_result[21],input_a[21],input_b[21]),
	 nor22(nor_result[22],input_a[22],input_b[22]),
	 nor23(nor_result[23],input_a[23],input_b[23]),
	 nor24(nor_result[24],input_a[24],input_b[24]),
	 nor25(nor_result[25],input_a[25],input_b[25]),
	 nor26(nor_result[26],input_a[26],input_b[26]),
	 nor27(nor_result[27],input_a[27],input_b[27]),
	 nor28(nor_result[28],input_a[28],input_b[28]),
	 nor29(nor_result[29],input_a[29],input_b[29]),
	 nor30(nor_result[30],input_a[30],input_b[30]),
	 nor31(nor_result[31],input_a[31],input_b[31]);

endmodule
