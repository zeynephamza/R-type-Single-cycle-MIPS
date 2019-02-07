module _32bit_or (or_result, input_a, input_b);

input  [31:0] input_a, input_b;
output [31:0] or_result;

//oring all bits with their friends


or or0(or_result[0],input_a[0],input_b[0]),
	 or1(or_result[1],input_a[1],input_b[1]),
	 or2(or_result[2],input_a[2],input_b[2]),
    or3(or_result[3],input_a[3],input_b[3]),
	 or4(or_result[4],input_a[4],input_b[4]),
	 or5(or_result[5],input_a[5],input_b[5]),
	 or6(or_result[6],input_a[6],input_b[6]),
	 or7(or_result[7],input_a[7],input_b[7]),
	 or8(or_result[8],input_a[8],input_b[8]),
	 or9(or_result[9],input_a[9],input_b[9]),
	 or10(or_result[10],input_a[10],input_b[10]),
	 or11(or_result[11],input_a[11],input_b[11]),
	 or12(or_result[12],input_a[12],input_b[12]),
	 or13(or_result[13],input_a[13],input_b[13]),
	 or14(or_result[14],input_a[14],input_b[14]),
	 or15(or_result[15],input_a[15],input_b[15]),
	 or16(or_result[16],input_a[16],input_b[16]),
	 or17(or_result[17],input_a[17],input_b[17]),
	 or18(or_result[18],input_a[18],input_b[18]),
	 or19(or_result[19],input_a[19],input_b[19]),
	 or20(or_result[20],input_a[20],input_b[20]),
	 or21(or_result[21],input_a[21],input_b[21]),
	 or22(or_result[22],input_a[22],input_b[22]),
	 or23(or_result[23],input_a[23],input_b[23]),
	 or24(or_result[24],input_a[24],input_b[24]),
	 or25(or_result[25],input_a[25],input_b[25]),
	 or26(or_result[26],input_a[26],input_b[26]),
	 or27(or_result[27],input_a[27],input_b[27]),
	 or28(or_result[28],input_a[28],input_b[28]),
	 or29(or_result[29],input_a[29],input_b[29]),
	 or30(or_result[30],input_a[30],input_b[30]),
	 or31(or_result[31],input_a[31],input_b[31]);

endmodule
