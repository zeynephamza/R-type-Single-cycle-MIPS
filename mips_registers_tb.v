module mips_registers_tb();

	wire [31:0] read_data_1, read_data_2;
	reg [31:0] write_data;
	reg [4:0] read_reg_1, read_reg_2, write_reg;
	reg signal_reg_write, clk;
	
	mips_registers mrtb
( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );

initial clk = 0;

initial begin
clk=1'b1;
write_data = 32'b0;
read_reg_1 = 5'b00010;
read_reg_2 = 5'b01001;
write_reg =  5'b00001;
signal_reg_write = 1'b1;

end

initial begin
$monitor("RS: %32b, RT: %32b,\n RD: %32b,  signal: %b, RD adress: %5b",read_data_1,read_data_2, write_data, signal_reg_write, write_reg);
end

endmodule
