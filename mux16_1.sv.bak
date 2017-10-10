module mux16_1 (sel, dataIn, dataOut);
	input logic [3:0]sel;
    input logic [15:0]dataIn;
	output logic out;
    logic [1:0] tempOut;
    logic w1, w2;

    mux8_1 m1 (sel[2:0], dataIn[15:8], tempOut[1]);
    mux8_1 m2 (sel[2:0], dataIn[7:0], tempOut[0]);
    mux2_1 m (sel[3], tempOut[1], tempOut[0], dataOut);

endmodule

	