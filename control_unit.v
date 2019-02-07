module control_unit(select_bits_ALU, function_code);

input [5:0] function_code;
output [2:0] select_bits_ALU;

//this module use just structural verilog
//contol unit part = convert to function code(6bits) to select bits(3bits)(needs ALU)
//for control unit part, have to design circuit that can only do this job. 
//(Remember the lecture,first step use K-map.......)

//example
//input = function_code = 20(hex) = 32(dec) = add
//output = select_bits_ALU = 010(binary) = 2(dec) = add

//function_code = 02(srl) -> select bits == 101 (alu32 can work srl)
wire not_f5;
wire temp1, temp2;

not (not_f5, function_code[5]);

or (select_bits_ALU[2], not_f5, function_code[1]); 
xnor (select_bits_ALU[1], function_code[2], function_code[1]); 
and (temp1, function_code[2], function_code[0]);
and (temp2, not_f5, function_code[1]);
or (select_bits_ALU[0], temp1, temp2);

	
endmodule
