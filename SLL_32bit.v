module SLL_32bit(a, shiftamt, result);
	input [31:0] a;
	input [4:0] shiftamt;
	output [31:0] result;
	
	wire [31:0] layer1, layer2, layer3, layer4;
	
	//1st layer
	mux_2to1_1bit mux_layer1_1(a[0], 1'b0, shiftamt[0], layer1[0]);
	mux_2to1_1bit mux_layer1_2(a[1], a[0], shiftamt[0], layer1[1]);
	mux_2to1_1bit mux_layer1_3(a[2], a[1], shiftamt[0], layer1[2]);
	mux_2to1_1bit mux_layer1_4(a[3], a[2], shiftamt[0], layer1[3]);
	mux_2to1_1bit mux_layer1_5(a[4], a[3], shiftamt[0], layer1[4]);
	mux_2to1_1bit mux_layer1_6(a[5], a[4], shiftamt[0], layer1[5]);
	mux_2to1_1bit mux_layer1_7(a[6], a[5], shiftamt[0], layer1[6]);
	mux_2to1_1bit mux_layer1_8(a[7], a[6], shiftamt[0], layer1[7]);
	mux_2to1_1bit mux_layer1_9(a[8], a[7], shiftamt[0], layer1[8]);
	mux_2to1_1bit mux_layer1_10(a[9], a[8], shiftamt[0], layer1[9]);
	mux_2to1_1bit mux_layer1_11(a[10], a[9], shiftamt[0], layer1[10]);
	mux_2to1_1bit mux_layer1_12(a[11], a[10], shiftamt[0], layer1[11]);
	mux_2to1_1bit mux_layer1_13(a[12], a[11], shiftamt[0], layer1[12]);
	mux_2to1_1bit mux_layer1_14(a[13], a[12], shiftamt[0], layer1[13]);
	mux_2to1_1bit mux_layer1_15(a[14], a[13], shiftamt[0], layer1[14]);
	mux_2to1_1bit mux_layer1_16(a[15], a[14], shiftamt[0], layer1[15]);
	mux_2to1_1bit mux_layer1_17(a[16], a[15], shiftamt[0], layer1[16]);
	mux_2to1_1bit mux_layer1_18(a[17], a[16], shiftamt[0], layer1[17]);
	mux_2to1_1bit mux_layer1_19(a[18], a[17], shiftamt[0], layer1[18]);
	mux_2to1_1bit mux_layer1_20(a[19], a[18], shiftamt[0], layer1[19]);
	mux_2to1_1bit mux_layer1_21(a[20], a[19], shiftamt[0], layer1[20]);
	mux_2to1_1bit mux_layer1_22(a[21], a[20], shiftamt[0], layer1[21]);
	mux_2to1_1bit mux_layer1_23(a[22], a[21], shiftamt[0], layer1[22]);
	mux_2to1_1bit mux_layer1_24(a[23], a[22], shiftamt[0], layer1[23]);
	mux_2to1_1bit mux_layer1_25(a[24], a[23], shiftamt[0], layer1[24]);
	mux_2to1_1bit mux_layer1_26(a[25], a[24], shiftamt[0], layer1[25]);
	mux_2to1_1bit mux_layer1_27(a[26], a[25], shiftamt[0], layer1[26]);
	mux_2to1_1bit mux_layer1_28(a[27], a[26], shiftamt[0], layer1[27]);
	mux_2to1_1bit mux_layer1_29(a[28], a[27], shiftamt[0], layer1[28]);
	mux_2to1_1bit mux_layer1_30(a[29], a[28], shiftamt[0], layer1[29]);
	mux_2to1_1bit mux_layer1_31(a[30], a[29], shiftamt[0], layer1[30]);
	mux_2to1_1bit mux_layer1_32(a[31], a[30], shiftamt[0], layer1[31]);
	
	//2nd layer
	mux_2to1_1bit mux_layer2_1(layer1[0], 1'b0, shiftamt[1], layer2[0]);
	mux_2to1_1bit mux_layer2_2(layer1[1], 1'b0, shiftamt[1], layer2[1]);
	mux_2to1_1bit mux_layer2_3(layer1[2], layer1[0], shiftamt[1], layer2[2]);
	mux_2to1_1bit mux_layer2_4(layer1[3], layer1[1], shiftamt[1], layer2[3]);
	mux_2to1_1bit mux_layer2_5(layer1[4], layer1[2], shiftamt[1], layer2[4]);
	mux_2to1_1bit mux_layer2_6(layer1[5], layer1[3], shiftamt[1], layer2[5]);
	mux_2to1_1bit mux_layer2_7(layer1[6], layer1[4], shiftamt[1], layer2[6]);
	mux_2to1_1bit mux_layer2_8(layer1[7], layer1[5], shiftamt[1], layer2[7]);
	mux_2to1_1bit mux_layer2_9(layer1[8], layer1[6], shiftamt[1], layer2[8]);
	mux_2to1_1bit mux_layer2_10(layer1[9], layer1[7], shiftamt[1], layer2[9]);
	mux_2to1_1bit mux_layer2_11(layer1[10], layer1[8], shiftamt[1], layer2[10]);
	mux_2to1_1bit mux_layer2_12(layer1[11], layer1[9], shiftamt[1], layer2[11]);
	mux_2to1_1bit mux_layer2_13(layer1[12], layer1[10], shiftamt[1], layer2[12]);
	mux_2to1_1bit mux_layer2_14(layer1[13], layer1[11], shiftamt[1], layer2[13]);
	mux_2to1_1bit mux_layer2_15(layer1[14], layer1[12], shiftamt[1], layer2[14]);
	mux_2to1_1bit mux_layer2_16(layer1[15], layer1[13], shiftamt[1], layer2[15]);
	mux_2to1_1bit mux_layer2_17(layer1[16], layer1[14], shiftamt[1], layer2[16]);
	mux_2to1_1bit mux_layer2_18(layer1[17], layer1[15], shiftamt[1], layer2[17]);
	mux_2to1_1bit mux_layer2_19(layer1[18], layer1[16], shiftamt[1], layer2[18]);
	mux_2to1_1bit mux_layer2_20(layer1[19], layer1[17], shiftamt[1], layer2[19]);
	mux_2to1_1bit mux_layer2_21(layer1[20], layer1[18], shiftamt[1], layer2[20]);
	mux_2to1_1bit mux_layer2_22(layer1[21], layer1[19], shiftamt[1], layer2[21]);
	mux_2to1_1bit mux_layer2_23(layer1[22], layer1[20], shiftamt[1], layer2[22]);
	mux_2to1_1bit mux_layer2_24(layer1[23], layer1[21], shiftamt[1], layer2[23]);
	mux_2to1_1bit mux_layer2_25(layer1[24], layer1[22], shiftamt[1], layer2[24]);
	mux_2to1_1bit mux_layer2_26(layer1[25], layer1[23], shiftamt[1], layer2[25]);
	mux_2to1_1bit mux_layer2_27(layer1[26], layer1[24], shiftamt[1], layer2[26]);
	mux_2to1_1bit mux_layer2_28(layer1[27], layer1[25], shiftamt[1], layer2[27]);
	mux_2to1_1bit mux_layer2_29(layer1[28], layer1[26], shiftamt[1], layer2[28]);
	mux_2to1_1bit mux_layer2_30(layer1[29], layer1[27], shiftamt[1], layer2[29]);
	mux_2to1_1bit mux_layer2_31(layer1[30], layer1[28], shiftamt[1], layer2[30]);
	mux_2to1_1bit mux_layer2_32(layer1[31], layer1[29], shiftamt[1], layer2[31]);
	
	//3rd layer
	mux_2to1_1bit mux_layer3_1(layer2[0], 1'b0, shiftamt[2], layer3[0]);
	mux_2to1_1bit mux_layer3_2(layer2[1], 1'b0, shiftamt[2], layer3[1]);
	mux_2to1_1bit mux_layer3_3(layer2[2], 1'b0, shiftamt[2], layer3[2]);
	mux_2to1_1bit mux_layer3_4(layer2[3], 1'b0, shiftamt[2], layer3[3]);
	mux_2to1_1bit mux_layer3_5(layer2[4], layer2[0], shiftamt[2], layer3[4]);
	mux_2to1_1bit mux_layer3_6(layer2[5], layer2[1], shiftamt[2], layer3[5]);
	mux_2to1_1bit mux_layer3_7(layer2[6], layer2[2], shiftamt[2], layer3[6]);
	mux_2to1_1bit mux_layer3_8(layer2[7], layer2[3], shiftamt[2], layer3[7]);
	mux_2to1_1bit mux_layer3_9(layer2[8], layer2[4], shiftamt[2], layer3[8]);
	mux_2to1_1bit mux_layer3_10(layer2[9], layer2[5], shiftamt[2], layer3[9]);
	mux_2to1_1bit mux_layer3_11(layer2[10], layer2[6], shiftamt[2], layer3[10]);
	mux_2to1_1bit mux_layer3_12(layer2[11], layer2[7], shiftamt[2], layer3[11]);
	mux_2to1_1bit mux_layer3_13(layer2[12], layer2[8], shiftamt[2], layer3[12]);
	mux_2to1_1bit mux_layer3_14(layer2[13], layer2[9], shiftamt[2], layer3[13]);
	mux_2to1_1bit mux_layer3_15(layer2[14], layer2[10], shiftamt[2], layer3[14]);
	mux_2to1_1bit mux_layer3_16(layer2[15], layer2[11], shiftamt[2], layer3[15]);
	mux_2to1_1bit mux_layer3_17(layer2[16], layer2[12], shiftamt[2], layer3[16]);
	mux_2to1_1bit mux_layer3_18(layer2[17], layer2[13], shiftamt[2], layer3[17]);
	mux_2to1_1bit mux_layer3_19(layer2[18], layer2[14], shiftamt[2], layer3[18]);
	mux_2to1_1bit mux_layer3_20(layer2[19], layer2[15], shiftamt[2], layer3[19]);
	mux_2to1_1bit mux_layer3_21(layer2[20], layer2[16], shiftamt[2], layer3[20]);
	mux_2to1_1bit mux_layer3_22(layer2[21], layer2[17], shiftamt[2], layer3[21]);
	mux_2to1_1bit mux_layer3_23(layer2[22], layer2[18], shiftamt[2], layer3[22]);
	mux_2to1_1bit mux_layer3_24(layer2[23], layer2[19], shiftamt[2], layer3[23]);
	mux_2to1_1bit mux_layer3_25(layer2[24], layer2[20], shiftamt[2], layer3[24]);
	mux_2to1_1bit mux_layer3_26(layer2[25], layer2[21], shiftamt[2], layer3[25]);
	mux_2to1_1bit mux_layer3_27(layer2[26], layer2[22], shiftamt[2], layer3[26]);
	mux_2to1_1bit mux_layer3_28(layer2[27], layer2[23], shiftamt[2], layer3[27]);
	mux_2to1_1bit mux_layer3_29(layer2[28], layer2[24], shiftamt[2], layer3[28]);
	mux_2to1_1bit mux_layer3_30(layer2[29], layer2[25], shiftamt[2], layer3[29]);
	mux_2to1_1bit mux_layer3_31(layer2[30], layer2[26], shiftamt[2], layer3[30]);
	mux_2to1_1bit mux_layer3_32(layer2[31], layer2[27], shiftamt[2], layer3[31]);
	
	//4rd layer
	mux_2to1_1bit mux_layer4_1(layer3[0], 1'b0, shiftamt[3], layer4[0]);
	mux_2to1_1bit mux_layer4_2(layer3[1], 1'b0, shiftamt[3], layer4[1]);
	mux_2to1_1bit mux_layer4_3(layer3[2], 1'b0, shiftamt[3], layer4[2]);
	mux_2to1_1bit mux_layer4_4(layer3[3], 1'b0, shiftamt[3], layer4[3]);
	mux_2to1_1bit mux_layer4_5(layer3[4], 1'b0, shiftamt[3], layer4[4]);
	mux_2to1_1bit mux_layer4_6(layer3[5], 1'b0, shiftamt[3], layer4[5]);
	mux_2to1_1bit mux_layer4_7(layer3[6], 1'b0, shiftamt[3], layer4[6]);
	mux_2to1_1bit mux_layer4_8(layer3[7], 1'b0, shiftamt[3], layer4[7]);
	mux_2to1_1bit mux_layer4_9(layer3[8], layer3[0], shiftamt[3], layer4[8]);
	mux_2to1_1bit mux_layer4_10(layer3[9], layer3[1], shiftamt[3], layer4[9]);
	mux_2to1_1bit mux_layer4_11(layer3[10], layer3[2], shiftamt[3], layer4[10]);
	mux_2to1_1bit mux_layer4_12(layer3[11], layer3[3], shiftamt[3], layer4[11]);
	mux_2to1_1bit mux_layer4_13(layer3[12], layer3[4], shiftamt[3], layer4[12]);
	mux_2to1_1bit mux_layer4_14(layer3[13], layer3[5], shiftamt[3], layer4[13]);
	mux_2to1_1bit mux_layer4_15(layer3[14], layer3[6], shiftamt[3], layer4[14]);
	mux_2to1_1bit mux_layer4_16(layer3[15], layer3[7], shiftamt[3], layer4[15]);
	mux_2to1_1bit mux_layer4_17(layer3[16], layer3[8], shiftamt[3], layer4[16]);
	mux_2to1_1bit mux_layer4_18(layer3[17], layer3[9], shiftamt[3], layer4[17]);
	mux_2to1_1bit mux_layer4_19(layer3[18], layer3[10], shiftamt[3], layer4[18]);
	mux_2to1_1bit mux_layer4_20(layer3[19], layer3[11], shiftamt[3], layer4[19]);
	mux_2to1_1bit mux_layer4_21(layer3[20], layer3[12], shiftamt[3], layer4[20]);
	mux_2to1_1bit mux_layer4_22(layer3[21], layer3[13], shiftamt[3], layer4[21]);
	mux_2to1_1bit mux_layer4_23(layer3[22], layer3[14], shiftamt[3], layer4[22]);
	mux_2to1_1bit mux_layer4_24(layer3[23], layer3[15], shiftamt[3], layer4[23]);
	mux_2to1_1bit mux_layer4_25(layer3[24], layer3[16], shiftamt[3], layer4[24]);
	mux_2to1_1bit mux_layer4_26(layer3[25], layer3[17], shiftamt[3], layer4[25]);
	mux_2to1_1bit mux_layer4_27(layer3[26], layer3[18], shiftamt[3], layer4[26]);
	mux_2to1_1bit mux_layer4_28(layer3[27], layer3[19], shiftamt[3], layer4[27]);
	mux_2to1_1bit mux_layer4_29(layer3[28], layer3[20], shiftamt[3], layer4[28]);
	mux_2to1_1bit mux_layer4_30(layer3[29], layer3[21], shiftamt[3], layer4[29]);
	mux_2to1_1bit mux_layer4_31(layer3[30], layer3[22], shiftamt[3], layer4[30]);
	mux_2to1_1bit mux_layer4_32(layer3[31], layer3[23], shiftamt[3], layer4[31]);
	
	//5rd layer
	mux_2to1_1bit mux_layer5_1(layer4[0], 1'b0, shiftamt[4], result[0]);
	mux_2to1_1bit mux_layer5_2(layer4[1], 1'b0, shiftamt[4], result[1]);
	mux_2to1_1bit mux_layer5_3(layer4[2], 1'b0, shiftamt[4], result[2]);
	mux_2to1_1bit mux_layer5_4(layer4[3], 1'b0, shiftamt[4], result[3]);
	mux_2to1_1bit mux_layer5_5(layer4[4], 1'b0, shiftamt[4], result[4]);
	mux_2to1_1bit mux_layer5_6(layer4[5], 1'b0, shiftamt[4], result[5]);
	mux_2to1_1bit mux_layer5_7(layer4[6], 1'b0, shiftamt[4], result[6]);
	mux_2to1_1bit mux_layer5_8(layer4[7], 1'b0, shiftamt[4], result[7]);
	mux_2to1_1bit mux_layer5_9(layer4[8], 1'b0, shiftamt[4], result[8]);
	mux_2to1_1bit mux_layer5_10(layer4[9], 1'b0, shiftamt[4], result[9]);
	mux_2to1_1bit mux_layer5_11(layer4[10], 1'b0, shiftamt[4], result[10]);
	mux_2to1_1bit mux_layer5_12(layer4[11], 1'b0, shiftamt[4], result[11]);
	mux_2to1_1bit mux_layer5_13(layer4[12], 1'b0, shiftamt[4], result[12]);
	mux_2to1_1bit mux_layer5_14(layer4[13], 1'b0, shiftamt[4], result[13]);
	mux_2to1_1bit mux_layer5_15(layer4[14], 1'b0, shiftamt[4], result[14]);
	mux_2to1_1bit mux_layer5_16(layer4[15], 1'b0, shiftamt[4], result[15]);
	mux_2to1_1bit mux_layer5_17(layer4[16], layer4[0], shiftamt[4], result[16]);
	mux_2to1_1bit mux_layer5_18(layer4[17], layer4[1], shiftamt[4], result[17]);
	mux_2to1_1bit mux_layer5_19(layer4[18], layer4[2], shiftamt[4], result[18]);
	mux_2to1_1bit mux_layer5_20(layer4[19], layer4[3], shiftamt[4], result[19]);
	mux_2to1_1bit mux_layer5_21(layer4[20], layer4[4], shiftamt[4], result[20]);
	mux_2to1_1bit mux_layer5_22(layer4[21], layer4[5], shiftamt[4], result[21]);
	mux_2to1_1bit mux_layer5_23(layer4[22], layer4[6], shiftamt[4], result[22]);
	mux_2to1_1bit mux_layer5_24(layer4[23], layer4[7], shiftamt[4], result[23]);
	mux_2to1_1bit mux_layer5_25(layer4[24], layer4[8], shiftamt[4], result[24]);
	mux_2to1_1bit mux_layer5_26(layer4[25], layer4[9], shiftamt[4], result[25]);
	mux_2to1_1bit mux_layer5_27(layer4[26], layer4[10], shiftamt[4], result[26]);
	mux_2to1_1bit mux_layer5_28(layer4[27], layer4[11], shiftamt[4], result[27]);
	mux_2to1_1bit mux_layer5_29(layer4[28], layer4[12], shiftamt[4], result[28]);
	mux_2to1_1bit mux_layer5_30(layer4[29], layer4[13], shiftamt[4], result[29]);
	mux_2to1_1bit mux_layer5_31(layer4[30], layer4[14], shiftamt[4], result[30]);
	mux_2to1_1bit mux_layer5_32(layer4[31], layer4[15], shiftamt[4], result[31]);
	
endmodule
