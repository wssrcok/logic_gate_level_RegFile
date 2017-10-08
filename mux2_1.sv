module mux2_1 (sel, in1, in0, out);
	input logic sel, in0, in1;
	output logic out;
	logic w1, w2, notSel;

	not n1 (notSel, sel); 
	and a1 (w1, notSel, in0);
	and a2 (w2, sel, in1);
	or o1 (out, w1, w2);

endmodule

	