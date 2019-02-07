module control_unit_tb ();

reg [5:0] function_code;
wire [2:0] select_bits_ALU;

control_unit ctrunit (select_bits_ALU, function_code);


initial begin
function_code = 6'b100100;   #5;
function_code = 6'b100101;   #5;
function_code = 6'b100000;   #5;
function_code = 6'b100001;   #5;
function_code = 6'b100010;   #5;
function_code = 6'b100011;   #5;
function_code = 6'b101011;   #5;
function_code = 6'b000011;   #5;
function_code = 6'b000010;   #5;
function_code = 6'b000000;   #5;
function_code = 6'b100111;   #5;


end

initial begin
$monitor("function_code: %6b\nselect_bits_ALU: %3b",function_code, select_bits_ALU);
end


endmodule
