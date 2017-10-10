module mux32_1_64bit(dataIn, readReg, readData);
    input logic [63:0][31:0] dataIn;	
    input logic [4:0] readReg;
    output logic [63:0] readData;

    genvar i;
    generate
        for (i = 63; i >= 0; i--) begin : eachMux   
            mux32_1 mux1 (readReg[4:0], dataIn[i], readData[i]);
        end
    endgenerate

endmodule