module main (readRegister1, readRegister2, readData1, readData2,
			regWrite, writeRegister, writeData, clk, reset);
	output logic [63:0] readData1, readData2;
	input logic [4:0] readRegister1, readRegister2;
	input logic clk, reset, regWrite;
	input logic [4:0] writeRegister;
	input logic [63:0] writeData;

	logic [31:0][63:0] regToMux; // wire from register to mutiplexor
	genvar i;
	generate 
		for (i = 31; i >= 0; i--) begin : eachReg
			register64 regs (regToMux, writeData, we[i], clk);
		end
	endgenerate


	register64 x31 (regToMux[31], 0, reset, clk);
	
	mux32_1 mux1 (readData1, regToMux, readRegister1);
	mux32_1 mux2 (readData2, regToMux, readRegister2);