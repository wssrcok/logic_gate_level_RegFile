module mux8_1 (sel, dataIn, dataOut);
	input logic [2:0]sel;
    input logic [7:0]dataIn;
	output logic out;
    logic [1:0] tempOut;
    logic w1, w2;

    mux4_1 m1 (sel[1:0], dataIn[7:4], tempOut[1]);
    mux4_1 m2 (sel[1:0], dataIn[3:0], tempOut[0]);
    mux2_1 m (sel[2], tempOut[1], tempOut[0], dataOut);

endmodule

	