module regfile (readRegister1, readRegister2, readData1, readData2,
			regWrite, writeRegister, writeData, clk, reset);
	output logic [63:0] readData1, readData2;
	input logic [4:0] readRegister1, readRegister2;
	input logic clk, reset, regWrite;
	input logic [4:0] writeRegister;
	input logic [63:0] writeData;

	logic [63:0][31:0] regToMux; 									// wire from register to mutiplexor
	logic [31:0] we;

	decoder1_32 decoder (regWrite, writeRegister, we);

	// Registers X30 - X0
	genvar i, j;
	generate 
		for (i = 63; i >= 0; i--) begin : eachReg
			for (i = 30; i >= 0; i--) begin : eachReg
				register64 regs (regToMux[i][j], writeData, we[i], clk);
			end
		end
	endgenerate

	register64 x31 (regToMux[31], 0, 0, clk); 				// Register X31

	// multiplexor that reads data from register.
	genvar k;
	generate
		for (k = 63; k >= 0; k--) begin : eachMux1
			mux32_1 mux1 (readRegister1, regToMux[k], readData1[k]);
			mux32_1 mux2 (readRegister2, regToMux[k], readData2[k]);
		end
	endgenerate

endmodule