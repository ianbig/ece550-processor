module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;
	
	wire [31:0] Bx, Bmux;
	wire cout; //We need cout?
	
	genvar i;

   //xor xor1(Bx, data_operandB, {32{ctrl_ALUopcode[0]});
	//assign Bx = ~data_operandB;
	generate
		for (i=0;i<32;i=i+1) begin: notgate
			not(Bx[i], data_operandB[i]);
		end
	endgenerate
	
	mux_2to1_32bit mux1(data_operandB, Bx, ctrl_ALUopcode[0], Bmux);
	CSA_32bit csa(data_operandA, Bmux, ctrl_ALUopcode[0], data_result, cout, overflow);

endmodule
