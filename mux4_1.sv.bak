module mux4_1 (sel, dataIn, dataOut);
	input logic [1:0]sel;
    input logic [3:0]dataIn;
	output logic out;
    logic [1:0] tempOut;
    logic w1, w2;

    mux2_1 m1 (sel[0], dataIn[3], dataIn[2], tempOut[1]);
    mux2_1 m2 (sel[0], dataIn[1], dataIn[0], tempOut[0]);
    mux2_1 m (sel[1], tempOut[1], tempOut[0], dataOut);

endmodule

	