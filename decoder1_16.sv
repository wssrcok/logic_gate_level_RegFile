module decoder1_16 (in, out, sel);
    input logic in;
    input logic [3:0] sel;
    output logic [15:0] out;

    logic [3:0] wires;

    decoder1_4 d1 (wires[3], out[15:12], sel[1:0]);
    decoder1_4 d2 (wires[2], out[11:8], sel[1:0]);
    decoder1_4 d3 (wires[1], out[7:4], sel[1:0]);
    decoder1_4 d4 (wires[0], out[3:0], sel[1:0]);
    decoder1_4 d (in, wires[3:0], sel[3:2]);
endmodule