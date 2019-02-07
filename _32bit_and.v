module _32bit_and (and_result, input_a, input_b);

input  [31:0] input_a, input_b;
output [31:0] and_result;

//Anding all bits with their friends


and and0(and_result[0],input_a[0],input_b[0]),
	 and1(and_result[1],input_a[1],input_b[1]),
	 and2(and_result[2],input_a[2],input_b[2]),
    and3(and_result[3],input_a[3],input_b[3]),
	 and4(and_result[4],input_a[4],input_b[4]),
	 and5(and_result[5],input_a[5],input_b[5]),
	 and6(and_result[6],input_a[6],input_b[6]),
	 and7(and_result[7],input_a[7],input_b[7]),
	 and8(and_result[8],input_a[8],input_b[8]),
	 and9(and_result[9],input_a[9],input_b[9]),
	 and10(and_result[10],input_a[10],input_b[10]),
	 and11(and_result[11],input_a[11],input_b[11]),
	 and12(and_result[12],input_a[12],input_b[12]),
	 and13(and_result[13],input_a[13],input_b[13]),
	 and14(and_result[14],input_a[14],input_b[14]),
	 and15(and_result[15],input_a[15],input_b[15]),
	 and16(and_result[16],input_a[16],input_b[16]),
	 and17(and_result[17],input_a[17],input_b[17]),
	 and18(and_result[18],input_a[18],input_b[18]),
	 and19(and_result[19],input_a[19],input_b[19]),
	 and20(and_result[20],input_a[20],input_b[20]),
	 and21(and_result[21],input_a[21],input_b[21]),
	 and22(and_result[22],input_a[22],input_b[22]),
	 and23(and_result[23],input_a[23],input_b[23]),
	 and24(and_result[24],input_a[24],input_b[24]),
	 and25(and_result[25],input_a[25],input_b[25]),
	 and26(and_result[26],input_a[26],input_b[26]),
	 and27(and_result[27],input_a[27],input_b[27]),
	 and28(and_result[28],input_a[28],input_b[28]),
	 and29(and_result[29],input_a[29],input_b[29]),
	 and30(and_result[30],input_a[30],input_b[30]),
	 and31(and_result[31],input_a[31],input_b[31]);

endmodule
