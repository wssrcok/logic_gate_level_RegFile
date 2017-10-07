module mux32_1_64bit (in32, readRegister, readData, clk);
    input logic [31:0][63:0] in32;
    input logic [4:0] readRegister;
    output logic [63:0] readData;

endmodule
