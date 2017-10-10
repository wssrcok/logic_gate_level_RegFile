module mux2_1 (sel, in1, in0, out);
	input logic sel, in0, in1;
	output logic out;
	logic w1, w2, notSel;

	not #50 n1 (notSel, sel); 
	and #50 a1 (w1, notSel, in0);
	and #50 a2 (w2, sel, in1);
	or #50 o1 (out, w1, w2);

endmodule

	