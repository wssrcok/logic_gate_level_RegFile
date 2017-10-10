module mux2_1_64bit(in1, in0, sel, dataOut);
    input logic [63:0] in1, in0;
    input logic sel;
    output logic [63:0] dataOut;

    genvar i;
    generate
        for (i = 63; i >= 0; i--) begin : eachMux   
            mux2_1 mux (sel, dataIn[i][1], dataIn[i][0], dataOut[i]);
        end
    endgenerate

endmodule