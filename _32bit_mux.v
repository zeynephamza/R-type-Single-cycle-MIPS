module _32bit_mux (result, inp_A, inp_B, select);

output [31:0] result;
input [31:0] inp_A;
input [31:0] inp_B;
input select;

wire select_not;
wire [31:0] temp_result1;
wire [31:0] temp_result2;

not (select_not, select);

and (temp_result1[0], select_not, inp_A[0]);
and (temp_result2[0], select, inp_B[0]);
or  (result[0], temp_result1[0], temp_result2[0]);

and (temp_result1[1], select_not, inp_A[1]);
and (temp_result2[1], select, inp_B[1]);
or  (result[1], temp_result1[1], temp_result2[1]);

and (temp_result1[2], select_not, inp_A[2]);
and (temp_result2[2], select, inp_B[2]);
or  (result[2], temp_result1[2], temp_result2[2]);

and (temp_result1[3], select_not, inp_A[3]);
and (temp_result2[3], select, inp_B[3]);
or  (result[3], temp_result1[3], temp_result2[3]);

and (temp_result1[4], select_not, inp_A[4]);
and (temp_result2[4], select, inp_B[4]);
or  (result[4], temp_result1[4], temp_result2[4]);

and (temp_result1[5], select_not, inp_A[5]);
and (temp_result2[5], select, inp_B[5]);
or  (result[5], temp_result1[5], temp_result2[5]);

and (temp_result1[6], select_not, inp_A[6]);
and (temp_result2[6], select, inp_B[6]);
or  (result[6], temp_result1[6], temp_result2[6]);

and (temp_result1[7], select_not, inp_A[7]);
and (temp_result2[7], select, inp_B[7]);
or  (result[7], temp_result1[7], temp_result2[7]);

and (temp_result1[8], select_not, inp_A[8]);
and (temp_result2[8], select, inp_B[8]);
or  (result[8], temp_result1[8], temp_result2[8]);

and (temp_result1[9], select_not, inp_A[9]);
and (temp_result2[9], select, inp_B[9]);
or  (result[9], temp_result1[9], temp_result2[9]);

and (temp_result1[10], select_not, inp_A[10]);
and (temp_result2[10], select, inp_B[10]);
or  (result[10], temp_result1[10], temp_result2[10]);

and (temp_result1[11], select_not, inp_A[11]);
and (temp_result2[11], select, inp_B[11]);
or  (result[11], temp_result1[11], temp_result2[11]);

and (temp_result1[12], select_not, inp_A[12]);
and (temp_result2[12], select, inp_B[12]);
or  (result[12], temp_result1[12], temp_result2[12]);

and (temp_result1[13], select_not, inp_A[13]);
and (temp_result2[13], select, inp_B[13]);
or  (result[13], temp_result1[13], temp_result2[13]);

and (temp_result1[14], select_not, inp_A[14]);
and (temp_result2[14], select, inp_B[14]);
or  (result[14], temp_result1[14], temp_result2[14]);

and (temp_result1[15], select_not, inp_A[15]);
and (temp_result2[15], select, inp_B[15]);
or  (result[15], temp_result1[15], temp_result2[15]);

and (temp_result1[16], select_not, inp_A[16]);
and (temp_result2[16], select, inp_B[16]);
or  (result[16], temp_result1[16], temp_result2[16]);

and (temp_result1[17], select_not, inp_A[17]);
and (temp_result2[17], select, inp_B[17]);
or  (result[17], temp_result1[17], temp_result2[17]);

and (temp_result1[18], select_not, inp_A[18]);
and (temp_result2[18], select, inp_B[18]);
or  (result[18], temp_result1[18], temp_result2[18]);

and (temp_result1[19], select_not, inp_A[19]);
and (temp_result2[19], select, inp_B[19]);
or  (result[19], temp_result1[19], temp_result2[19]);

and (temp_result1[20], select_not, inp_A[20]);
and (temp_result2[20], select, inp_B[20]);
or  (result[20], temp_result1[20], temp_result2[20]);

and (temp_result1[21], select_not, inp_A[21]);
and (temp_result2[21], select, inp_B[21]);
or  (result[21], temp_result1[21], temp_result2[21]);

and (temp_result1[22], select_not, inp_A[22]);
and (temp_result2[22], select, inp_B[22]);
or  (result[22], temp_result1[22], temp_result2[22]);

and (temp_result1[23], select_not, inp_A[23]);
and (temp_result2[23], select, inp_B[23]);
or  (result[23], temp_result1[23], temp_result2[23]);

and (temp_result1[24], select_not, inp_A[24]);
and (temp_result2[24], select, inp_B[24]);
or  (result[24], temp_result1[24], temp_result2[24]);

and (temp_result1[25], select_not, inp_A[25]);
and (temp_result2[25], select, inp_B[25]);
or  (result[25], temp_result1[25], temp_result2[25]);

and (temp_result1[26], select_not, inp_A[26]);
and (temp_result2[26], select, inp_B[26]);
or  (result[26], temp_result1[26], temp_result2[26]);

and (temp_result1[27], select_not, inp_A[27]);
and (temp_result2[27], select, inp_B[27]);
or  (result[27], temp_result1[27], temp_result2[27]);

and (temp_result1[28], select_not, inp_A[28]);
and (temp_result2[28], select, inp_B[28]);
or  (result[28], temp_result1[28], temp_result2[28]);

and (temp_result1[29], select_not, inp_A[29]);
and (temp_result2[29], select, inp_B[29]);
or  (result[29], temp_result1[29], temp_result2[29]);

and (temp_result1[30], select_not, inp_A[30]);
and (temp_result2[30], select, inp_B[30]);
or  (result[30], temp_result1[30], temp_result2[30]);

and (temp_result1[31], select_not, inp_A[31]);
and (temp_result2[31], select, inp_B[31]);
or  (result[31], temp_result1[31], temp_result2[31]);

endmodule
