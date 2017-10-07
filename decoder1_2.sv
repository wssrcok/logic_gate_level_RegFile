module decoder1_2 (in, out1, out2, sel);
    input logic in, sel;
    output logic out1, out2;

    logic w;
    
    not (w, sel);
    and a1 (out1, in, w);
    and a2 (out2, in, sel);

endmodule