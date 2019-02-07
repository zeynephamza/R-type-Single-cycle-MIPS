`define DELAY 10
module alu32_tb();
reg [31:0] inp_A, inp_B;
reg [2:0] select;
wire [31:0] out;
wire cout,overflow;


alu32 alutb (out,cout,overflow, inp_A, inp_B, select);

initial begin
inp_A = 32'b11000000000000000000000000000000;
inp_B = 32'b11000000000000000000000000011111;
select = 3'b000;		//Anding
#`DELAY;

inp_A = 32'b11000000000000000000000011111111;
inp_B = 32'b11110001111000000000000000000000;
select = 3'b001;		//Oring

#`DELAY;
inp_A = 32'b11000000000000000000000011101010;
inp_B = 32'b11110001111000000000000000000000;
select = 3'b010;		//Adding		

#`DELAY;
inp_A = 32'b11000000000000000000000011111111;
inp_B = 32'b11110001111000000000000000000000;
select = 3'b011;		//Xoring

#`DELAY;
inp_A = 32'b11111111000000000000000011111111;
inp_B = 32'b01110001111000000000000000111110;
select = 3'b100;		//Subing
		
#`DELAY;
inp_A = 32'b11000000000000000000000011111111;
inp_B = 32'b00000000000000000000000000000011;
select = 3'b101;		//Arithmetic right shifting
	
#`DELAY;
inp_A = 32'b11000000000000000000000011111111;
inp_B = 32'b00000000000000000000000000000011;
select = 3'b110;		//Logical left shifting
	
#`DELAY;
inp_A = 32'b11000000000000000000000011111111;
inp_B = 32'b11110001111000000000000000000000;
select = 3'b111;     //Noring


end
 
initial begin
$monitor("select=%3b\n  A=%32b,\n  B=%32b,\nout=%32b,\noverflow=%1b,  cout= %1b\n", 
		select, inp_A, inp_B, out,overflow, cout);
end 

endmodule
