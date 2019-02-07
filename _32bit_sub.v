module _32bit_sub(sub_result, overflow, input_a, input_b, cin);

input  [31:0] input_a, input_b;
output [31:0] sub_result;

input cin;
output overflow;

wire [31:0] not_input_b;
wire [31:0] add_result;
wire c;

//Doing 2's compliment operation
not(not_input_b[0], input_b[0]),(not_input_b[1], input_b[1]),
   (not_input_b[2], input_b[2]),(not_input_b[3], input_b[3]),
	(not_input_b[4], input_b[4]),(not_input_b[5], input_b[5]),
   (not_input_b[6], input_b[6]),(not_input_b[7], input_b[7]),
	(not_input_b[8], input_b[8]),(not_input_b[9], input_b[9]),
   (not_input_b[10], input_b[10]),(not_input_b[11], input_b[11]),
	(not_input_b[12], input_b[12]),(not_input_b[13], input_b[13]),
   (not_input_b[14], input_b[14]),(not_input_b[15], input_b[15]),
	(not_input_b[16], input_b[16]),(not_input_b[17], input_b[17]),
   (not_input_b[18], input_b[18]),(not_input_b[19], input_b[19]),
	(not_input_b[20], input_b[20]),(not_input_b[21], input_b[21]),
   (not_input_b[22], input_b[22]),(not_input_b[23], input_b[23]),
	(not_input_b[24], input_b[24]),(not_input_b[25], input_b[25]),
   (not_input_b[26], input_b[26]),(not_input_b[27], input_b[27]),
	(not_input_b[28], input_b[28]),(not_input_b[29], input_b[29]),
   (not_input_b[30], input_b[30]),(not_input_b[31], input_b[31]);
	
_32bit_add adding1(add_result, c, 32'b00000000000000000000000000000001, not_input_b, 1'b0);
_32bit_add adding2(sub_result, overflow, add_result, input_a, c);


endmodule
