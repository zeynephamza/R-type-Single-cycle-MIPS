module a_shift_right(shift_result, input_a, S);

input S;
input  [31:0] input_a;
output [31:0] shift_result;

wire [65:0] and_temp;
wire not_S;

wire [31:0] a_shift_result;
wire [31:0] l_shift_result;


//Doing not operation
not (not_S, S);

//Doing FIRST_MUX operation
and (and_temp[0], input_a[0], not_S);
and (and_temp[1], input_a[1], S);
or  (a_shift_result[0], and_temp[0], and_temp[1]);  //sra
or  (l_shift_result[0], and_temp[0], and_temp[1]);  //srl

//Doing SECOND_MUX operation
and (and_temp[2], input_a[1], not_S);
and (and_temp[3], input_a[2], S);
or  (a_shift_result[1], and_temp[2], and_temp[3]);
or  (l_shift_result[1], and_temp[2], and_temp[3]);

//Doing 3TH_MUX operation
and (and_temp[4], input_a[2], not_S);
and (and_temp[5], input_a[3], S);
or  (a_shift_result[2], and_temp[4], and_temp[5]);
or  (l_shift_result[2], and_temp[4], and_temp[5]);

//Doing 4TH_MUX operation
and (and_temp[6], input_a[3], not_S);
and (and_temp[7], input_a[4], S);
or  (a_shift_result[3], and_temp[6], and_temp[7]);
or  (l_shift_result[3], and_temp[6], and_temp[7]);

//Doing 5TH_MUX operation
and (and_temp[8], input_a[4], not_S);
and (and_temp[9], input_a[5], S);
or  (a_shift_result[4], and_temp[8], and_temp[9]);
or  (l_shift_result[4], and_temp[8], and_temp[9]);

//Doing 6TH_MUX operation
and (and_temp[10], input_a[5], not_S);
and (and_temp[11], input_a[6], S);
or  (a_shift_result[5], and_temp[10], and_temp[11]);
or  (l_shift_result[5], and_temp[10], and_temp[11]);

//Doing 7TH_MUX operation
and (and_temp[12], input_a[6], not_S);
and (and_temp[13], input_a[7], S);
or  (a_shift_result[6], and_temp[12], and_temp[13]);
or  (l_shift_result[6], and_temp[12], and_temp[13]);

//Doing 8TH_MUX operation
and (and_temp[14], input_a[7], not_S);
and (and_temp[15], input_a[8], S);
or  (a_shift_result[7], and_temp[14], and_temp[15]);
or  (l_shift_result[7], and_temp[14], and_temp[15]);

//Doing 9TH_MUX operation
and (and_temp[16], input_a[8], not_S);
and (and_temp[17], input_a[9], S);
or  (a_shift_result[8], and_temp[16], and_temp[17]);
or  (l_shift_result[8], and_temp[16], and_temp[17]);

//Doing 10TH_MUX operation
and (and_temp[18], input_a[9], not_S);
and (and_temp[19], input_a[10], S);
or  (a_shift_result[9], and_temp[18], and_temp[19]);
or  (l_shift_result[9], and_temp[18], and_temp[19]);

//Doing 11TH_MUX operation
and (and_temp[20], input_a[10], not_S);
and (and_temp[21], input_a[11], S);
or  (a_shift_result[10], and_temp[20], and_temp[21]);
or  (l_shift_result[10], and_temp[20], and_temp[21]);

//Doing 12TH_MUX operation
and (and_temp[22], input_a[11], not_S);
and (and_temp[23], input_a[12], S);
or  (a_shift_result[11], and_temp[22], and_temp[23]);
or  (l_shift_result[11], and_temp[22], and_temp[23]);

//Doing 13TH_MUX operation
and (and_temp[24], input_a[12], not_S);
and (and_temp[25], input_a[13], S);
or  (a_shift_result[12], and_temp[24], and_temp[25]);
or  (l_shift_result[12], and_temp[24], and_temp[25]);

//Doing 14TH_MUX operation
and (and_temp[26], input_a[13], not_S);
and (and_temp[27], input_a[14], S);
or  (a_shift_result[13], and_temp[26], and_temp[27]);
or  (l_shift_result[13], and_temp[26], and_temp[27]);

//Doing 15TH_MUX operation
and (and_temp[28], input_a[14], not_S);
and (and_temp[29], input_a[15], S);
or  (a_shift_result[14], and_temp[28], and_temp[29]);
or  (l_shift_result[14], and_temp[28], and_temp[29]);

//Doing 16TH_MUX operation
and (and_temp[30], input_a[15], not_S);
and (and_temp[31], input_a[16], S);
or  (a_shift_result[15], and_temp[30], and_temp[31]);
or  (l_shift_result[15], and_temp[30], and_temp[31]);

//Doing 17TH_MUX operation
and (and_temp[32], input_a[15], not_S);
and (and_temp[33], input_a[16], S);
or  (a_shift_result[16], and_temp[32], and_temp[33]);
or  (l_shift_result[16], and_temp[32], and_temp[33]);

//Doing 18TH_MUX operation
and (and_temp[34], input_a[16], not_S);
and (and_temp[35], input_a[17], S);
or  (a_shift_result[17], and_temp[34], and_temp[35]);
or  (l_shift_result[17], and_temp[34], and_temp[35]);

//Doing 19TH_MUX operation
and (and_temp[36], input_a[17], not_S);
and (and_temp[37], input_a[18], S);
or  (a_shift_result[18], and_temp[36], and_temp[37]);
or  (l_shift_result[18], and_temp[36], and_temp[37]);

//Doing 20TH_MUX operation
and (and_temp[38], input_a[19], not_S);
and (and_temp[39], input_a[20], S);
or  (a_shift_result[19], and_temp[38], and_temp[39]);
or  (l_shift_result[19], and_temp[38], and_temp[39]);

//Doing 21TH_MUX operation
and (and_temp[40], input_a[20], not_S);
and (and_temp[41], input_a[21], S);
or  (a_shift_result[20], and_temp[40], and_temp[41]);
or  (l_shift_result[20], and_temp[40], and_temp[41]);

//Doing 22TH_MUX operation
and (and_temp[42], input_a[21], not_S);
and (and_temp[43], input_a[22], S);
or  (a_shift_result[21], and_temp[42], and_temp[43]);
or  (l_shift_result[21], and_temp[42], and_temp[43]);

//Doing 23TH_MUX operation
and (and_temp[44], input_a[22], not_S);
and (and_temp[45], input_a[23], S);
or  (a_shift_result[22], and_temp[44], and_temp[45]);
or  (l_shift_result[22], and_temp[44], and_temp[45]);

//Doing 24TH_MUX operation
and (and_temp[46], input_a[23], not_S);
and (and_temp[47], input_a[24], S);
or  (a_shift_result[23], and_temp[46], and_temp[47]);
or  (l_shift_result[23], and_temp[46], and_temp[47]);

//Doing 25TH_MUX operation
and (and_temp[48], input_a[24], not_S);
and (and_temp[49], input_a[25], S);
or  (a_shift_result[24], and_temp[48], and_temp[49]);
or  (l_shift_result[24], and_temp[48], and_temp[49]);

//Doing 26TH_MUX operation
and (and_temp[50], input_a[25], not_S);
and (and_temp[51], input_a[26], S);
or  (a_shift_result[25], and_temp[50], and_temp[51]);
or  (l_shift_result[25], and_temp[50], and_temp[51]);

//Doing 27TH_MUX operation
and (and_temp[52], input_a[26], not_S);
and (and_temp[53], input_a[27], S);
or  (a_shift_result[26], and_temp[52], and_temp[53]);
or  (l_shift_result[26], and_temp[52], and_temp[53]);

//Doing 28TH_MUX operation
and (and_temp[54], input_a[27], not_S);
and (and_temp[55], input_a[28], S);
or  (a_shift_result[27], and_temp[54], and_temp[55]);
or  (l_shift_result[27], and_temp[54], and_temp[55]);

//Doing 29TH_MUX operation
and (and_temp[56], input_a[28], not_S);
and (and_temp[57], input_a[29], S);
or  (a_shift_result[28], and_temp[56], and_temp[57]);
or  (l_shift_result[28], and_temp[56], and_temp[57]);

//Doing 30TH_MUX operation
and (and_temp[58], input_a[29], not_S);
and (and_temp[59], input_a[30], S);
or  (a_shift_result[29], and_temp[58], and_temp[59]);
or  (l_shift_result[29], and_temp[58], and_temp[59]);

//Doing 31TH_MUX operation
and (and_temp[60], input_a[30], not_S);
and (and_temp[61], input_a[31], S);
or  (a_shift_result[30], and_temp[60], and_temp[61]);
or  (l_shift_result[30], and_temp[60], and_temp[61]);

//Doing 32TH_MUX operation for SRA
and (and_temp[62], input_a[31], not_S);
and (and_temp[63], input_a[31], S);
or  (a_shift_result[31], and_temp[62], and_temp[63]);

//Doing 32TH_MUX operation for SRL
and (and_temp[64], input_a[31], not_S);
and (and_temp[65], 1'b0, S);
or  (l_shift_result[31], and_temp[64], and_temp[65]);


// Adding a 2:1 mux for selecting sra or srl operation

_32bit_mux mux (shift_result, l_shift_result, a_shift_result, 1'b0);

endmodule
