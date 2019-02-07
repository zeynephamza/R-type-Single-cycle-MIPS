module alu32 (R, cout, overflow, inp_A, inp_B, select_a);

input [31:0] inp_A, inp_B;
input [2:0] select_a; //3 bit select

output [31:0] R;
output cout;
output overflow;

wire [2:0] not_a;
wire [7:0] mux1, mux2, mux3, mux4, mux5, mux6, mux7, mux8,
			  mux9, mux10, mux11, mux12, mux13, mux14, mux15, mux16,
			  mux17, mux18, mux19, mux20, mux21, mux22, mux23, mux24,
			  mux25, mux26, mux27, mux28, mux29, mux30, mux31, mux32;
			  
wire [31:0] and_result;
wire [31:0] or_result;
wire [31:0] add_result;
wire [31:0] xor_result;
wire [31:0] sub_result;
wire [31:0] a_shift_result0, a_shift_result1, a_shift_result2, a_shift_result3, a_shift_result4
		, a_shift_result5, a_shift_result6, a_shift_result7, a_shift_result8, a_shift_result9
		, a_shift_result10, a_shift_result11, a_shift_result12, a_shift_result13, a_shift_result14
		, a_shift_result15, a_shift_result16, a_shift_result17, a_shift_result18, a_shift_result19
		, a_shift_result20, a_shift_result21, a_shift_result22, a_shift_result23, a_shift_result24
		, a_shift_result25, a_shift_result26, a_shift_result27, a_shift_result28, a_shift_result29
		, a_shift_result30;

wire [31:0] l_shift_result0, l_shift_result1, l_shift_result2, l_shift_result3, l_shift_result4
		, l_shift_result5, l_shift_result6, l_shift_result7, l_shift_result8, l_shift_result9
		, l_shift_result10, l_shift_result11, l_shift_result12, l_shift_result13, l_shift_result14
		, l_shift_result15, l_shift_result16, l_shift_result17, l_shift_result18, l_shift_result19
		, l_shift_result20, l_shift_result21, l_shift_result22, l_shift_result23, l_shift_result24
		, l_shift_result25, l_shift_result26, l_shift_result27, l_shift_result28, l_shift_result29
		, l_shift_result30;
		
wire [31:0] nor_result;

//Doing not operation for selects
not(not_a[0], select_a[0]);
not(not_a[1], select_a[1]);
not(not_a[2], select_a[2]);

//Calling _32bit_and module 
_32bit_and and_op(and_result, inp_A, inp_B);
//Calling _32bit_or module 
_32bit_or or_op(or_result, inp_A, inp_B);
//Calling _32bit_add module 
_32bit_add add_op(add_result, cout, inp_A, inp_B, 1'b0);
//Calling _32bit_xor module 
_32bit_xor xor_op(xor_result, inp_A, inp_B);
//Calling _32bit_sub module 
_32bit_sub sub_op(sub_result, overflow, inp_A, inp_B, 1'b0);

//Calling a_shift_right module 
a_shift_right asr_op0(a_shift_result0, inp_A, inp_B[0]);

a_shift_right asr_op1(a_shift_result1, a_shift_result0, inp_B[1]);
a_shift_right asr_op2(a_shift_result2, a_shift_result1, inp_B[1]);

a_shift_right asr_op3(a_shift_result3, a_shift_result2, inp_B[2]);
a_shift_right asr_op4(a_shift_result4, a_shift_result3, inp_B[2]);
a_shift_right asr_op5(a_shift_result5, a_shift_result4, inp_B[2]);
a_shift_right asr_op6(a_shift_result6, a_shift_result5, inp_B[2]);

a_shift_right asr_op7 (a_shift_result7,  a_shift_result6,  inp_B[3]);
a_shift_right asr_op8 (a_shift_result8,  a_shift_result7,  inp_B[3]);
a_shift_right asr_op9 (a_shift_result9,  a_shift_result8,  inp_B[3]);
a_shift_right asr_op10(a_shift_result10, a_shift_result9,  inp_B[3]);
a_shift_right asr_op11(a_shift_result11, a_shift_result10, inp_B[3]);
a_shift_right asr_op12(a_shift_result12, a_shift_result11, inp_B[3]);
a_shift_right asr_op13(a_shift_result13, a_shift_result12, inp_B[3]);
a_shift_right asr_op14(a_shift_result14, a_shift_result13, inp_B[3]);

a_shift_right asr_op15(a_shift_result15, a_shift_result14, inp_B[4]);
a_shift_right asr_op16(a_shift_result16, a_shift_result15, inp_B[4]);
a_shift_right asr_op17(a_shift_result17, a_shift_result16, inp_B[4]);
a_shift_right asr_op18(a_shift_result18, a_shift_result17, inp_B[4]);
a_shift_right asr_op19(a_shift_result19, a_shift_result18, inp_B[4]);
a_shift_right asr_op20(a_shift_result20, a_shift_result19, inp_B[4]);
a_shift_right asr_op21(a_shift_result21, a_shift_result20, inp_B[4]);
a_shift_right asr_op22(a_shift_result22, a_shift_result21, inp_B[4]);
a_shift_right asr_op23(a_shift_result23, a_shift_result22, inp_B[4]);
a_shift_right asr_op24(a_shift_result24, a_shift_result23, inp_B[4]);
a_shift_right asr_op25(a_shift_result25, a_shift_result24, inp_B[4]);
a_shift_right asr_op26(a_shift_result26, a_shift_result25, inp_B[4]);
a_shift_right asr_op27(a_shift_result27, a_shift_result26, inp_B[4]);
a_shift_right asr_op28(a_shift_result28, a_shift_result27, inp_B[4]);
a_shift_right asr_op29(a_shift_result29, a_shift_result28, inp_B[4]);
a_shift_right asr_op30(a_shift_result30, a_shift_result29, inp_B[4]);

//Calling shift_left module 
shift_left sl_op0(l_shift_result0, inp_A, inp_B[0]);

shift_left sl_op1(l_shift_result1, l_shift_result0, inp_B[1]);
shift_left sl_op2(l_shift_result2, l_shift_result1, inp_B[1]);

shift_left sl_op3(l_shift_result3, l_shift_result2, inp_B[2]);
shift_left sl_op4(l_shift_result4, l_shift_result3, inp_B[2]);
shift_left sl_op5(l_shift_result5, l_shift_result4, inp_B[2]);
shift_left sl_op6(l_shift_result6, l_shift_result5, inp_B[2]);

shift_left sl_op7 (l_shift_result7,  l_shift_result6,  inp_B[3]);
shift_left sl_op8 (l_shift_result8,  l_shift_result7,  inp_B[3]);
shift_left sl_op9 (l_shift_result9,  l_shift_result8,  inp_B[3]);
shift_left sl_op10(l_shift_result10, l_shift_result9,  inp_B[3]);
shift_left sl_op11(l_shift_result11, l_shift_result10, inp_B[3]);
shift_left sl_op12(l_shift_result12, l_shift_result11, inp_B[3]);
shift_left sl_op13(l_shift_result13, l_shift_result12, inp_B[3]);
shift_left sl_op14(l_shift_result14, l_shift_result13, inp_B[3]);

shift_left sl_op15(l_shift_result15, l_shift_result14, inp_B[4]);
shift_left sl_op16(l_shift_result16, l_shift_result15, inp_B[4]);
shift_left sl_op17(l_shift_result17, l_shift_result16, inp_B[4]);
shift_left sl_op18(l_shift_result18, l_shift_result17, inp_B[4]);
shift_left sl_op19(l_shift_result19, l_shift_result18, inp_B[4]);
shift_left sl_op20(l_shift_result20, l_shift_result19, inp_B[4]);
shift_left sl_op21(l_shift_result21, l_shift_result20, inp_B[4]);
shift_left sl_op22(l_shift_result22, l_shift_result21, inp_B[4]);
shift_left sl_op23(l_shift_result23, l_shift_result22, inp_B[4]);
shift_left sl_op24(l_shift_result24, l_shift_result23, inp_B[4]);
shift_left sl_op25(l_shift_result25, l_shift_result24, inp_B[4]);
shift_left sl_op26(l_shift_result26, l_shift_result25, inp_B[4]);
shift_left sl_op27(l_shift_result27, l_shift_result26, inp_B[4]);
shift_left sl_op28(l_shift_result28, l_shift_result27, inp_B[4]);
shift_left sl_op29(l_shift_result29, l_shift_result28, inp_B[4]);
shift_left sl_op30(l_shift_result30, l_shift_result29, inp_B[4]);


//Calling _32bit_nor module 
_32bit_nor nor_op(nor_result, inp_A, inp_B);


//Doing FIRST_MUX_AND operation
and (mux1[0], not_a[2], not_a[1], not_a[0], and_result[0]);
and (mux1[1], not_a[2], not_a[1], select_a[0], or_result[0]);
and (mux1[2], not_a[2], select_a[1], not_a[0], add_result[0]);
and (mux1[3], not_a[2], select_a[1], select_a[0], xor_result[0]);
and (mux1[4], select_a[2], not_a[1], not_a[0], sub_result[0]);
and (mux1[5], select_a[2], not_a[1], select_a[0], a_shift_result30[0]);
and (mux1[6], select_a[2], select_a[1], not_a[0], l_shift_result30[0]);
and (mux1[7], select_a[2], select_a[1], select_a[0], nor_result[0]);

//Doing FIRST_MUX_AND operation
and (mux2[0], not_a[2], not_a[1], not_a[0], and_result[1]);
and (mux2[1], not_a[2], not_a[1], select_a[0], or_result[1]);
and (mux2[2], not_a[2], select_a[1], not_a[0], add_result[1]);
and (mux2[3], not_a[2], select_a[1], select_a[0], xor_result[1]);
and (mux2[4], select_a[2], not_a[1], not_a[0], sub_result[1]);
and (mux2[5], select_a[2], not_a[1], select_a[0], a_shift_result30[1]);
and (mux2[6], select_a[2], select_a[1], not_a[0], l_shift_result30[1]);
and (mux2[7], select_a[2], select_a[1], select_a[0], nor_result[1]);

//Doing FIRST_MUX_AND operation
and (mux3[0], not_a[2], not_a[1], not_a[0], and_result[2]);
and (mux3[1], not_a[2], not_a[1], select_a[0], or_result[2]);
and (mux3[2], not_a[2], select_a[1], not_a[0], add_result[2]);
and (mux3[3], not_a[2], select_a[1], select_a[0], xor_result[2]);
and (mux3[4], select_a[2], not_a[1], not_a[0], sub_result[2]);
and (mux3[5], select_a[2], not_a[1], select_a[0], a_shift_result30[2]);
and (mux3[6], select_a[2], select_a[1], not_a[0], l_shift_result30[2]);
and (mux3[7], select_a[2], select_a[1], select_a[0], nor_result[2]);

//Doing FIRST_MUX_AND operation
and (mux4[0], not_a[2], not_a[1], not_a[0], and_result[3]);
and (mux4[1], not_a[2], not_a[1], select_a[0], or_result[3]);
and (mux4[2], not_a[2], select_a[1], not_a[0], add_result[3]);
and (mux4[3], not_a[2], select_a[1], select_a[0], xor_result[3]);
and (mux4[4], select_a[2], not_a[1], not_a[0], sub_result[3]);
and (mux4[5], select_a[2], not_a[1], select_a[0], a_shift_result30[3]);
and (mux4[6], select_a[2], select_a[1], not_a[0], l_shift_result30[3]);
and (mux4[7], select_a[2], select_a[1], select_a[0], nor_result[3]);

//Doing FIRST_MUX_AND operation
and (mux5[0], not_a[2], not_a[1], not_a[0], and_result[4]);
and (mux5[1], not_a[2], not_a[1], select_a[0], or_result[4]);
and (mux5[2], not_a[2], select_a[1], not_a[0], add_result[4]);
and (mux5[3], not_a[2], select_a[1], select_a[0], xor_result[4]);
and (mux5[4], select_a[2], not_a[1], not_a[0], sub_result[4]);
and (mux5[5], select_a[2], not_a[1], select_a[0], a_shift_result30[4]);
and (mux5[6], select_a[2], select_a[1], not_a[0], l_shift_result30[4]);
and (mux5[7], select_a[2], select_a[1], select_a[0], nor_result[4]);

//Doing FIRST_MUX_AND operation
and (mux6[0], not_a[2], not_a[1], not_a[0], and_result[5]);
and (mux6[1], not_a[2], not_a[1], select_a[0], or_result[5]);
and (mux6[2], not_a[2], select_a[1], not_a[0], add_result[5]);
and (mux6[3], not_a[2], select_a[1], select_a[0], xor_result[5]);
and (mux6[4], select_a[2], not_a[1], not_a[0], sub_result[5]);
and (mux6[5], select_a[2], not_a[1], select_a[0], a_shift_result30[5]);
and (mux6[6], select_a[2], select_a[1], not_a[0], l_shift_result30[5]);
and (mux6[7], select_a[2], select_a[1], select_a[0], nor_result[5]);

//Doing FIRST_MUX_AND operation
and (mux7[0], not_a[2], not_a[1], not_a[0], and_result[6]);
and (mux7[1], not_a[2], not_a[1], select_a[0], or_result[6]);
and (mux7[2], not_a[2], select_a[1], not_a[0], add_result[6]);
and (mux7[3], not_a[2], select_a[1], select_a[0], xor_result[6]);
and (mux7[4], select_a[2], not_a[1], not_a[0], sub_result[6]);
and (mux7[5], select_a[2], not_a[1], select_a[0], a_shift_result30[6]);
and (mux7[6], select_a[2], select_a[1], not_a[0], l_shift_result30[6]);
and (mux7[7], select_a[2], select_a[1], select_a[0], nor_result[6]);

//Doing FIRST_MUX_AND operation
and (mux8[0], not_a[2], not_a[1], not_a[0], and_result[7]);
and (mux8[1], not_a[2], not_a[1], select_a[0], or_result[7]);
and (mux8[2], not_a[2], select_a[1], not_a[0], add_result[7]);
and (mux8[3], not_a[2], select_a[1], select_a[0], xor_result[7]);
and (mux8[4], select_a[2], not_a[1], not_a[0], sub_result[7]);
and (mux8[5], select_a[2], not_a[1], select_a[0], a_shift_result30[7]);
and (mux8[6], select_a[2], select_a[1], not_a[0], l_shift_result30[7]);
and (mux8[7], select_a[2], select_a[1], select_a[0], nor_result[7]);

//Doing FIRST_MUX_AND operation
and (mux9[0], not_a[2], not_a[1], not_a[0], and_result[8]);
and (mux9[1], not_a[2], not_a[1], select_a[0], or_result[8]);
and (mux9[2], not_a[2], select_a[1], not_a[0], add_result[8]);
and (mux9[3], not_a[2], select_a[1], select_a[0], xor_result[8]);
and (mux9[4], select_a[2], not_a[1], not_a[0], sub_result[8]);
and (mux9[5], select_a[2], not_a[1], select_a[0], a_shift_result30[8]);
and (mux9[6], select_a[2], select_a[1], not_a[0], l_shift_result30[8]);
and (mux9[7], select_a[2], select_a[1], select_a[0], nor_result[8]);

//Doing FIRST_MUX_AND operation
and (mux10[0], not_a[2], not_a[1], not_a[0], and_result[9]);
and (mux10[1], not_a[2], not_a[1], select_a[0], or_result[9]);
and (mux10[2], not_a[2], select_a[1], not_a[0], add_result[9]);
and (mux10[3], not_a[2], select_a[1], select_a[0], xor_result[9]);
and (mux10[4], select_a[2], not_a[1], not_a[0], sub_result[9]);
and (mux10[5], select_a[2], not_a[1], select_a[0], a_shift_result30[9]);
and (mux10[6], select_a[2], select_a[1], not_a[0], l_shift_result30[9]);
and (mux10[7], select_a[2], select_a[1], select_a[0], nor_result[9]);

//Doing FIRST_MUX_AND operation
and (mux11[0], not_a[2], not_a[1], not_a[0], and_result[10]);
and (mux11[1], not_a[2], not_a[1], select_a[0], or_result[10]);
and (mux11[2], not_a[2], select_a[1], not_a[0], add_result[10]);
and (mux11[3], not_a[2], select_a[1], select_a[0], xor_result[10]);
and (mux11[4], select_a[2], not_a[1], not_a[0], sub_result[10]);
and (mux11[5], select_a[2], not_a[1], select_a[0], a_shift_result30[10]);
and (mux11[6], select_a[2], select_a[1], not_a[0], l_shift_result30[10]);
and (mux11[7], select_a[2], select_a[1], select_a[0], nor_result[10]);

//Doing FIRST_MUX_AND operation
and (mux12[0], not_a[2], not_a[1], not_a[0], and_result[11]);
and (mux12[1], not_a[2], not_a[1], select_a[0], or_result[11]);
and (mux12[2], not_a[2], select_a[1], not_a[0], add_result[11]);
and (mux12[3], not_a[2], select_a[1], select_a[0], xor_result[11]);
and (mux12[4], select_a[2], not_a[1], not_a[0], sub_result[11]);
and (mux12[5], select_a[2], not_a[1], select_a[0], a_shift_result30[11]);
and (mux12[6], select_a[2], select_a[1], not_a[0], l_shift_result30[11]);
and (mux12[7], select_a[2], select_a[1], select_a[0], nor_result[11]);

//Doing FIRST_MUX_AND operation
and (mux13[0], not_a[2], not_a[1], not_a[0], and_result[12]);
and (mux13[1], not_a[2], not_a[1], select_a[0], or_result[12]);
and (mux13[2], not_a[2], select_a[1], not_a[0], add_result[12]);
and (mux13[3], not_a[2], select_a[1], select_a[0], xor_result[12]);
and (mux13[4], select_a[2], not_a[1], not_a[0], sub_result[12]);
and (mux13[5], select_a[2], not_a[1], select_a[0], a_shift_result30[12]);
and (mux13[6], select_a[2], select_a[1], not_a[0], l_shift_result30[12]);
and (mux13[7], select_a[2], select_a[1], select_a[0], nor_result[12]);

//Doing FIRST_MUX_AND operation
and (mux14[0], not_a[2], not_a[1], not_a[0], and_result[13]);
and (mux14[1], not_a[2], not_a[1], select_a[0], or_result[13]);
and (mux14[2], not_a[2], select_a[1], not_a[0], add_result[13]);
and (mux14[3], not_a[2], select_a[1], select_a[0], xor_result[13]);
and (mux14[4], select_a[2], not_a[1], not_a[0], sub_result[13]);
and (mux14[5], select_a[2], not_a[1], select_a[0], a_shift_result30[13]);
and (mux14[6], select_a[2], select_a[1], not_a[0], l_shift_result30[13]);
and (mux14[7], select_a[2], select_a[1], select_a[0], nor_result[13]);

//Doing FIRST_MUX_AND operation
and (mux15[0], not_a[2], not_a[1], not_a[0], and_result[14]);
and (mux15[1], not_a[2], not_a[1], select_a[0], or_result[14]);
and (mux15[2], not_a[2], select_a[1], not_a[0], add_result[14]);
and (mux15[3], not_a[2], select_a[1], select_a[0], xor_result[14]);
and (mux15[4], select_a[2], not_a[1], not_a[0], sub_result[14]);
and (mux15[5], select_a[2], not_a[1], select_a[0], a_shift_result30[14]);
and (mux15[6], select_a[2], select_a[1], not_a[0], l_shift_result30[14]);
and (mux15[7], select_a[2], select_a[1], select_a[0], nor_result[14]);

//Doing FIRST_MUX_AND operation
and (mux16[0], not_a[2], not_a[1], not_a[0], and_result[15]);
and (mux16[1], not_a[2], not_a[1], select_a[0], or_result[15]);
and (mux16[2], not_a[2], select_a[1], not_a[0], add_result[15]);
and (mux16[3], not_a[2], select_a[1], select_a[0], xor_result[15]);
and (mux16[4], select_a[2], not_a[1], not_a[0], sub_result[15]);
and (mux16[5], select_a[2], not_a[1], select_a[0], a_shift_result30[15]);
and (mux16[6], select_a[2], select_a[1], not_a[0], l_shift_result30[15]);
and (mux16[7], select_a[2], select_a[1], select_a[0], nor_result[15]);

//Doing FIRST_MUX_AND operation
and (mux17[0], not_a[2], not_a[1], not_a[0], and_result[16]);
and (mux17[1], not_a[2], not_a[1], select_a[0], or_result[16]);
and (mux17[2], not_a[2], select_a[1], not_a[0], add_result[16]);
and (mux17[3], not_a[2], select_a[1], select_a[0], xor_result[16]);
and (mux17[4], select_a[2], not_a[1], not_a[0], sub_result[16]);
and (mux17[5], select_a[2], not_a[1], select_a[0], a_shift_result30[16]);
and (mux17[6], select_a[2], select_a[1], not_a[0], l_shift_result30[16]);
and (mux17[7], select_a[2], select_a[1], select_a[0], nor_result[16]);

//Doing FIRST_MUX_AND operation
and (mux18[0], not_a[2], not_a[1], not_a[0], and_result[17]);
and (mux18[1], not_a[2], not_a[1], select_a[0], or_result[17]);
and (mux18[2], not_a[2], select_a[1], not_a[0], add_result[17]);
and (mux18[3], not_a[2], select_a[1], select_a[0], xor_result[17]);
and (mux18[4], select_a[2], not_a[1], not_a[0], sub_result[17]);
and (mux18[5], select_a[2], not_a[1], select_a[0], a_shift_result30[17]);
and (mux18[6], select_a[2], select_a[1], not_a[0], l_shift_result30[17]);
and (mux18[7], select_a[2], select_a[1], select_a[0], nor_result[17]);

//Doing FIRST_MUX_AND operation
and (mux19[0], not_a[2], not_a[1], not_a[0], and_result[18]);
and (mux19[1], not_a[2], not_a[1], select_a[0], or_result[18]);
and (mux19[2], not_a[2], select_a[1], not_a[0], add_result[18]);
and (mux19[3], not_a[2], select_a[1], select_a[0], xor_result[18]);
and (mux19[4], select_a[2], not_a[1], not_a[0], sub_result[18]);
and (mux19[5], select_a[2], not_a[1], select_a[0], a_shift_result30[18]);
and (mux19[6], select_a[2], select_a[1], not_a[0], l_shift_result30[18]);
and (mux19[7], select_a[2], select_a[1], select_a[0], nor_result[18]);

//Doing FIRST_MUX_AND operation
and (mux20[0], not_a[2], not_a[1], not_a[0], and_result[19]);
and (mux20[1], not_a[2], not_a[1], select_a[0], or_result[19]);
and (mux20[2], not_a[2], select_a[1], not_a[0], add_result[19]);
and (mux20[3], not_a[2], select_a[1], select_a[0], xor_result[19]);
and (mux20[4], select_a[2], not_a[1], not_a[0], sub_result[19]);
and (mux20[5], select_a[2], not_a[1], select_a[0], a_shift_result30[19]);
and (mux20[6], select_a[2], select_a[1], not_a[0], l_shift_result30[19]);
and (mux20[7], select_a[2], select_a[1], select_a[0], nor_result[19]);

//Doing FIRST_MUX_AND operation
and (mux21[0], not_a[2], not_a[1], not_a[0], and_result[20]);
and (mux21[1], not_a[2], not_a[1], select_a[0], or_result[20]);
and (mux21[2], not_a[2], select_a[1], not_a[0], add_result[20]);
and (mux21[3], not_a[2], select_a[1], select_a[0], xor_result[20]);
and (mux21[4], select_a[2], not_a[1], not_a[0], sub_result[20]);
and (mux21[5], select_a[2], not_a[1], select_a[0], a_shift_result30[20]);
and (mux21[6], select_a[2], select_a[1], not_a[0], l_shift_result30[20]);
and (mux21[7], select_a[2], select_a[1], select_a[0], nor_result[20]);

//Doing FIRST_MUX_AND operation
and (mux22[0], not_a[2], not_a[1], not_a[0], and_result[21]);
and (mux22[1], not_a[2], not_a[1], select_a[0], or_result[21]);
and (mux22[2], not_a[2], select_a[1], not_a[0], add_result[21]);
and (mux22[3], not_a[2], select_a[1], select_a[0], xor_result[21]);
and (mux22[4], select_a[2], not_a[1], not_a[0], sub_result[21]);
and (mux22[5], select_a[2], not_a[1], select_a[0], a_shift_result30[21]);
and (mux22[6], select_a[2], select_a[1], not_a[0], l_shift_result30[21]);
and (mux22[7], select_a[2], select_a[1], select_a[0], nor_result[21]);

//Doing FIRST_MUX_AND operation
and (mux23[0], not_a[2], not_a[1], not_a[0], and_result[22]);
and (mux23[1], not_a[2], not_a[1], select_a[0], or_result[22]);
and (mux23[2], not_a[2], select_a[1], not_a[0], add_result[22]);
and (mux23[3], not_a[2], select_a[1], select_a[0], xor_result[22]);
and (mux23[4], select_a[2], not_a[1], not_a[0], sub_result[22]);
and (mux23[5], select_a[2], not_a[1], select_a[0], a_shift_result30[22]);
and (mux23[6], select_a[2], select_a[1], not_a[0], l_shift_result30[22]);
and (mux23[7], select_a[2], select_a[1], select_a[0], nor_result[22]);

//Doing FIRST_MUX_AND operation
and (mux24[0], not_a[2], not_a[1], not_a[0], and_result[23]);
and (mux24[1], not_a[2], not_a[1], select_a[0], or_result[23]);
and (mux24[2], not_a[2], select_a[1], not_a[0], add_result[23]);
and (mux24[3], not_a[2], select_a[1], select_a[0], xor_result[23]);
and (mux24[4], select_a[2], not_a[1], not_a[0], sub_result[23]);
and (mux24[5], select_a[2], not_a[1], select_a[0], a_shift_result30[23]);
and (mux24[6], select_a[2], select_a[1], not_a[0], l_shift_result30[23]);
and (mux24[7], select_a[2], select_a[1], select_a[0], nor_result[23]);

//Doing FIRST_MUX_AND operation
and (mux25[0], not_a[2], not_a[1], not_a[0], and_result[24]);
and (mux25[1], not_a[2], not_a[1], select_a[0], or_result[24]);
and (mux25[2], not_a[2], select_a[1], not_a[0], add_result[24]);
and (mux25[3], not_a[2], select_a[1], select_a[0], xor_result[24]);
and (mux25[4], select_a[2], not_a[1], not_a[0], sub_result[24]);
and (mux25[5], select_a[2], not_a[1], select_a[0], a_shift_result30[24]);
and (mux25[6], select_a[2], select_a[1], not_a[0], l_shift_result30[24]);
and (mux25[7], select_a[2], select_a[1], select_a[0], nor_result[24]);

//Doing FIRST_MUX_AND operation
and (mux26[0], not_a[2], not_a[1], not_a[0], and_result[25]);
and (mux26[1], not_a[2], not_a[1], select_a[0], or_result[25]);
and (mux26[2], not_a[2], select_a[1], not_a[0], add_result[25]);
and (mux26[3], not_a[2], select_a[1], select_a[0], xor_result[25]);
and (mux26[4], select_a[2], not_a[1], not_a[0], sub_result[25]);
and (mux26[5], select_a[2], not_a[1], select_a[0], a_shift_result30[25]);
and (mux26[6], select_a[2], select_a[1], not_a[0], l_shift_result30[25]);
and (mux26[7], select_a[2], select_a[1], select_a[0], nor_result[25]);

//Doing FIRST_MUX_AND operation
and (mux27[0], not_a[2], not_a[1], not_a[0], and_result[26]);
and (mux27[1], not_a[2], not_a[1], select_a[0], or_result[26]);
and (mux27[2], not_a[2], select_a[1], not_a[0], add_result[26]);
and (mux27[3], not_a[2], select_a[1], select_a[0], xor_result[26]);
and (mux27[4], select_a[2], not_a[1], not_a[0], sub_result[0]);
and (mux27[5], select_a[2], not_a[1], select_a[0], a_shift_result30[26]);
and (mux27[6], select_a[2], select_a[1], not_a[0], l_shift_result30[26]);
and (mux27[7], select_a[2], select_a[1], select_a[0], nor_result[26]);

//Doing FIRST_MUX_AND operation
and (mux28[0], not_a[2], not_a[1], not_a[0], and_result[27]);
and (mux28[1], not_a[2], not_a[1], select_a[0], or_result[27]);
and (mux28[2], not_a[2], select_a[1], not_a[0], add_result[27]);
and (mux28[3], not_a[2], select_a[1], select_a[0], xor_result[27]);
and (mux28[4], select_a[2], not_a[1], not_a[0], sub_result[27]);
and (mux28[5], select_a[2], not_a[1], select_a[0], a_shift_result30[27]);
and (mux28[6], select_a[2], select_a[1], not_a[0], l_shift_result30[27]);
and (mux28[7], select_a[2], select_a[1], select_a[0], nor_result[27]);

//Doing FIRST_MUX_AND operation
and (mux29[0], not_a[2], not_a[1], not_a[0], and_result[28]);
and (mux29[1], not_a[2], not_a[1], select_a[0], or_result[28]);
and (mux29[2], not_a[2], select_a[1], not_a[0], add_result[28]);
and (mux29[3], not_a[2], select_a[1], select_a[0], xor_result[28]);
and (mux29[4], select_a[2], not_a[1], not_a[0], sub_result[28]);
and (mux29[5], select_a[2], not_a[1], select_a[0], a_shift_result30[28]);
and (mux29[6], select_a[2], select_a[1], not_a[0], l_shift_result30[28]);
and (mux29[7], select_a[2], select_a[1], select_a[0], nor_result[28]);

//Doing FIRST_MUX_AND operation
and (mux30[0], not_a[2], not_a[1], not_a[0], and_result[29]);
and (mux30[1], not_a[2], not_a[1], select_a[0], or_result[29]);
and (mux30[2], not_a[2], select_a[1], not_a[0], add_result[29]);
and (mux30[3], not_a[2], select_a[1], select_a[0], xor_result[29]);
and (mux30[4], select_a[2], not_a[1], not_a[0], sub_result[29]);
and (mux30[5], select_a[2], not_a[1], select_a[0], a_shift_result30[29]);
and (mux30[6], select_a[2], select_a[1], not_a[0], l_shift_result30[29]);
and (mux30[7], select_a[2], select_a[1], select_a[0], nor_result[29]);

//Doing FIRST_MUX_AND operation
and (mux31[0], not_a[2], not_a[1], not_a[0], and_result[30]);
and (mux31[1], not_a[2], not_a[1], select_a[0], or_result[30]);
and (mux31[2], not_a[2], select_a[1], not_a[0], add_result[30]);
and (mux31[3], not_a[2], select_a[1], select_a[0], xor_result[30]);
and (mux31[4], select_a[2], not_a[1], not_a[0], sub_result[30]);
and (mux31[5], select_a[2], not_a[1], select_a[0], a_shift_result30[30]);
and (mux31[6], select_a[2], select_a[1], not_a[0], l_shift_result30[30]);
and (mux31[7], select_a[2], select_a[1], select_a[0], nor_result[30]);

//Doing FIRST_MUX_AND operation
and (mux32[0], not_a[2], not_a[1], not_a[0], and_result[31]);
and (mux32[1], not_a[2], not_a[1], select_a[0], or_result[31]);
and (mux32[2], not_a[2], select_a[1], not_a[0], add_result[31]);
and (mux32[3], not_a[2], select_a[1], select_a[0], xor_result[31]);
and (mux32[4], select_a[2], not_a[1], not_a[0], sub_result[31]);
and (mux32[5], select_a[2], not_a[1], select_a[0], a_shift_result30[31]);
and (mux32[6], select_a[2], select_a[1], not_a[0], l_shift_result30[31]);
and (mux32[7], select_a[2], select_a[1], select_a[0], nor_result[31]);


//Last or operation
or(R[0], mux1[0], mux1[1], mux1[2], mux1[3], mux1[4], mux1[5], mux1[6], mux1[7]);
or(R[1], mux2[0], mux2[1], mux2[2], mux2[3], mux2[4], mux2[5], mux2[6], mux2[7]);
or(R[2], mux3[0], mux3[1], mux3[2], mux3[3], mux3[4], mux3[5], mux3[6], mux3[7]);
or(R[3], mux4[0], mux4[1], mux4[2], mux4[3], mux4[4], mux4[5], mux4[6], mux4[7]);
or(R[4], mux5[0], mux5[1], mux5[2], mux5[3], mux5[4], mux5[5], mux5[6], mux5[7]);
or(R[5], mux6[0], mux6[1], mux6[2], mux6[3], mux6[4], mux6[5], mux6[6], mux6[7]);
or(R[6], mux7[0], mux7[1], mux7[2], mux7[3], mux7[4], mux7[5], mux7[6], mux7[7]);
or(R[7], mux8[0], mux8[1], mux8[2], mux8[3], mux8[4], mux8[5], mux8[6], mux8[7]);
or(R[8], mux9[0], mux9[1], mux9[2], mux9[3], mux9[4], mux9[5], mux9[6], mux9[7]);
or(R[9], mux10[0], mux10[1], mux10[2], mux10[3], mux10[4], mux10[5], mux10[6], mux10[7]);
or(R[10], mux11[0], mux11[1], mux11[2], mux11[3], mux11[4], mux11[5], mux11[6], mux11[7]);
or(R[11], mux12[0], mux12[1], mux12[2], mux12[3], mux12[4], mux12[5], mux12[6], mux12[7]);
or(R[12], mux13[0], mux13[1], mux13[2], mux13[3], mux13[4], mux13[5], mux13[6], mux13[7]);
or(R[13], mux14[0], mux14[1], mux14[2], mux14[3], mux14[4], mux14[5], mux14[6], mux14[7]);
or(R[14], mux15[0], mux15[1], mux15[2], mux15[3], mux15[4], mux15[5], mux15[6], mux15[7]);
or(R[15], mux16[0], mux16[1], mux16[2], mux16[3], mux16[4], mux16[5], mux16[6], mux16[7]);
or(R[16], mux17[0], mux17[1], mux17[2], mux17[3], mux17[4], mux17[5], mux17[6], mux17[7]);
or(R[17], mux18[0], mux18[1], mux18[2], mux18[3], mux18[4], mux18[5], mux18[6], mux18[7]);
or(R[18], mux19[0], mux19[1], mux19[2], mux19[3], mux19[4], mux19[5], mux19[6], mux19[7]);
or(R[19], mux20[0], mux20[1], mux20[2], mux20[3], mux20[4], mux20[5], mux20[6], mux20[7]);
or(R[20], mux21[0], mux21[1], mux21[2], mux21[3], mux21[4], mux21[5], mux21[6], mux21[7]);
or(R[21], mux22[0], mux22[1], mux22[2], mux22[3], mux22[4], mux22[5], mux22[6], mux22[7]);
or(R[22], mux23[0], mux23[1], mux23[2], mux23[3], mux23[4], mux23[5], mux23[6], mux23[7]);
or(R[23], mux24[0], mux24[1], mux24[2], mux24[3], mux24[4], mux24[5], mux24[6], mux24[7]);
or(R[24], mux25[0], mux25[1], mux25[2], mux25[3], mux25[4], mux25[5], mux25[6], mux25[7]);
or(R[25], mux26[0], mux26[1], mux26[2], mux26[3], mux26[4], mux26[5], mux26[6], mux26[7]);
or(R[26], mux27[0], mux27[1], mux27[2], mux27[3], mux27[4], mux27[5], mux27[6], mux27[7]);
or(R[27], mux28[0], mux28[1], mux28[2], mux28[3], mux28[4], mux28[5], mux28[6], mux28[7]);
or(R[28], mux29[0], mux29[1], mux29[2], mux29[3], mux29[4], mux29[5], mux29[6], mux29[7]);
or(R[29], mux30[0], mux30[1], mux30[2], mux30[3], mux30[4], mux30[5], mux30[6], mux30[7]);
or(R[30], mux31[0], mux31[1], mux31[2], mux31[3], mux31[4], mux31[5], mux31[6], mux31[7]);
or(R[31], mux32[0], mux32[1], mux32[2], mux32[3], mux32[4], mux32[5], mux32[6], mux32[7]);

endmodule
