module _32bit_add (add_result, cout, input_a, input_b, cin);

input  [31:0] input_a, input_b;
output [31:0] add_result;

input cin;
output cout;

wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,
		c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,
		c23,c24,c25,c26,c27,c28,c29,c30,c31;  // carries

//Instantiate the full addder
full_adder  FA0(add_result[0], c1, input_a[0], input_b[0], cin),
				FA1(add_result[1], c2, input_a[1], input_b[1], c1 ),
				FA2(add_result[2], c3, input_a[2], input_b[2], c2 ),
				FA3(add_result[3], c4, input_a[3], input_b[3], c3 ),
				FA4(add_result[4], c5, input_a[4], input_b[4], c4 ),
				FA5(add_result[5], c6, input_a[5], input_b[5], c5 ),
				FA6(add_result[6], c7, input_a[6], input_b[6], c6 ),
				FA7(add_result[7], c8, input_a[7], input_b[7], c7 ),
				FA8(add_result[8], c9, input_a[8], input_b[8], c8 ),
				FA9(add_result[9], c10, input_a[9], input_b[9], c9 ),
				FA10(add_result[10], c11, input_a[10], input_b[10], c10 ),
				FA11(add_result[11], c12, input_a[11], input_b[11], c11 ),
				FA12(add_result[12], c13, input_a[12], input_b[12], c12 ),
				FA13(add_result[13], c14, input_a[13], input_b[13], c13 ),
				FA14(add_result[14], c15, input_a[14], input_b[14], c14 ),
				FA15(add_result[15], c16, input_a[15], input_b[15], c15 ),
				FA16(add_result[16], c17, input_a[16], input_b[16], c16 ),
				FA17(add_result[17], c18, input_a[17], input_b[17], c17 ),
				FA18(add_result[18], c19, input_a[18], input_b[18], c18 ),
				FA19(add_result[19], c20, input_a[19], input_b[19], c19 ),
				FA20(add_result[20], c21, input_a[20], input_b[20], c20 ),
				FA21(add_result[21], c22, input_a[21], input_b[21], c21 ),
				FA22(add_result[22], c23, input_a[22], input_b[22], c22 ),
				FA23(add_result[23], c24, input_a[23], input_b[23], c23 ),
				FA24(add_result[24], c25, input_a[24], input_b[24], c24 ),
				FA25(add_result[25], c26, input_a[25], input_b[25], c25 ),
				FA26(add_result[26], c27, input_a[26], input_b[26], c26 ),
				FA27(add_result[27], c28, input_a[27], input_b[27], c27 ),
				FA28(add_result[28], c29, input_a[28], input_b[28], c28 ),
				FA29(add_result[29], c30, input_a[29], input_b[29], c29 ),
				FA30(add_result[30], c31, input_a[30], input_b[30], c30 ),
				FA31(add_result[31], cout, input_a[31], input_b[31], c31 );
				
				
endmodule
