module _32bit_xor (xor_result, input_a, input_b);

input  [31:0] input_a, input_b;
output [31:0] xor_result;

//xoring all bits with their friends


xor xor0(xor_result[0],input_a[0],input_b[0]),
	 xor1(xor_result[1],input_a[1],input_b[1]),
	 xor2(xor_result[2],input_a[2],input_b[2]),
    xor3(xor_result[3],input_a[3],input_b[3]),
	 xor4(xor_result[4],input_a[4],input_b[4]),
	 xor5(xor_result[5],input_a[5],input_b[5]),
	 xor6(xor_result[6],input_a[6],input_b[6]),
	 xor7(xor_result[7],input_a[7],input_b[7]),
	 xor8(xor_result[8],input_a[8],input_b[8]),
	 xor9(xor_result[9],input_a[9],input_b[9]),
	 xor10(xor_result[10],input_a[10],input_b[10]),
	 xor11(xor_result[11],input_a[11],input_b[11]),
	 xor12(xor_result[12],input_a[12],input_b[12]),
	 xor13(xor_result[13],input_a[13],input_b[13]),
	 xor14(xor_result[14],input_a[14],input_b[14]),
	 xor15(xor_result[15],input_a[15],input_b[15]),
	 xor16(xor_result[16],input_a[16],input_b[16]),
	 xor17(xor_result[17],input_a[17],input_b[17]),
	 xor18(xor_result[18],input_a[18],input_b[18]),
	 xor19(xor_result[19],input_a[19],input_b[19]),
	 xor20(xor_result[20],input_a[20],input_b[20]),
	 xor21(xor_result[21],input_a[21],input_b[21]),
	 xor22(xor_result[22],input_a[22],input_b[22]),
	 xor23(xor_result[23],input_a[23],input_b[23]),
	 xor24(xor_result[24],input_a[24],input_b[24]),
	 xor25(xor_result[25],input_a[25],input_b[25]),
	 xor26(xor_result[26],input_a[26],input_b[26]),
	 xor27(xor_result[27],input_a[27],input_b[27]),
	 xor28(xor_result[28],input_a[28],input_b[28]),
	 xor29(xor_result[29],input_a[29],input_b[29]),
	 xor30(xor_result[30],input_a[30],input_b[30]),
	 xor31(xor_result[31],input_a[31],input_b[31]);

endmodule
