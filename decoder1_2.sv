module decoder1_2 (in, out1, out2, sel);
    input logic in, sel;
    output logic out1, out2;

    logic w;
    
    not #50 n (w, sel);
    and #50 a1 (out1, in, w);
    and #50 a2 (out2, in, sel);

endmodule