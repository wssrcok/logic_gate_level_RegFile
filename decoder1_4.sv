module decoder1_4 (in, out, sel);
    input logic in;
    input logic [1:0] sel;
    output logic [3:0] out;

    logic wire1, wire2;
    decoder1_2 d1 (wire1, out[3], out[2], sel[0]);
    decoder1_2 d2 (wire2, out[1], out[0], sel[0]);
    decoder1_2 d (in, wire1, wire2, sel[1]);
endmodule