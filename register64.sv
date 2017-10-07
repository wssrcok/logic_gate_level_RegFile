module register64(dataOut, dataIn, we, clk);
    input logic we, clk;
    input logic [63:0] dataIn;
    output logic [63:0] dataOut;
    
    genvar i;
    generate
        for (i = 63; i >= 0; i--) begin : eachDff 
            D_FF dff (dataOut[i], dataIn[i], we, clk);
        end
    endgenerate
endmodule