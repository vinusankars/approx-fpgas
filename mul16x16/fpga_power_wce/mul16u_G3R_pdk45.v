/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.042 %
// MAE = 1802240 
// WCE% = 0.17 %
// WCE = 7208961 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 1.07 %
// MSE = 37739.059e8 
// FPGA_POWER = 1.9
// FPGA_DELAY = 13
// FPGA_LUT = 100


module mul16u_G3R ( A, B, O );
  input [15:0] A;
  input [15:0] B;
  output [31:0] O;

  wire C_10_10,C_10_11,C_10_12,C_10_13,C_10_14,C_10_9,C_11_10,C_11_11,C_11_12,C_11_13,C_11_14,C_11_8,C_11_9,C_12_10,C_12_11,C_12_12,C_12_13,C_12_14,C_12_7,C_12_8,C_12_9,C_13_10,C_13_11,C_13_12,C_13_13,C_13_14,C_13_6,C_13_7,C_13_8,C_13_9,C_14_10,C_14_11,C_14_12,C_14_13,C_14_14,C_14_5,C_14_6,C_14_7,C_14_8,C_14_9,C_15_10,C_15_11,C_15_12,C_15_13,C_15_14,C_15_4,C_15_5,C_15_6,C_15_7,C_15_8,C_15_9,C_5_14,C_6_13,C_6_14,C_7_12,C_7_13,C_7_14,C_8_11,C_8_12,C_8_13,C_8_14,C_9_10,C_9_11,C_9_12,C_9_13,C_9_14,S_10_10,S_10_11,S_10_12,S_10_13,S_10_14,S_10_15,S_10_9,S_11_10,S_11_11,S_11_12,S_11_13,S_11_14,S_11_15,S_11_8,S_11_9,S_12_10,S_12_11,S_12_12,S_12_13,S_12_14,S_12_15,S_12_7,S_12_8,S_12_9,S_13_10,S_13_11,S_13_12,S_13_13,S_13_14,S_13_15,S_13_6,S_13_7,S_13_8,S_13_9,S_14_10,S_14_11,S_14_12,S_14_13,S_14_14,S_14_15,S_14_5,S_14_6,S_14_7,S_14_8,S_14_9,S_15_10,S_15_11,S_15_12,S_15_13,S_15_14,S_15_15,S_15_4,S_15_5,S_15_6,S_15_7,S_15_8,S_15_9,S_16_10,S_16_11,S_16_12,S_16_13,S_16_14,S_16_15,S_16_3,S_16_4,S_16_5,S_16_6,S_16_7,S_16_8,S_16_9,S_4_15,S_5_14,S_5_15,S_6_13,S_6_14,S_6_15,S_7_12,S_7_13,S_7_14,S_7_15,S_8_11,S_8_12,S_8_13,S_8_14,S_8_15,S_9_10,S_9_11,S_9_12,S_9_13,S_9_14,S_9_15;

  assign S_4_15 = (A[4] & B[15]);
  HAX1 U378185 (.A(S_4_15), .B((A[5] & B[14])), .YS(S_5_14), .YC(C_5_14));
  assign S_5_15 = (A[5] & B[15]);
  HAX1 U378200 (.A(S_5_14), .B((A[6] & B[13])), .YS(S_6_13), .YC(C_6_13));
  FAX1 U378201 (.A(S_5_15), .B(C_5_14), .C((A[6] & B[14])), .YS(S_6_14), .YC(C_6_14));
  assign S_6_15 = (A[6] & B[15]);
  HAX1 U378215 (.A(S_6_13), .B((A[7] & B[12])), .YS(S_7_12), .YC(C_7_12));
  FAX1 U378216 (.A(S_6_14), .B(C_6_13), .C((A[7] & B[13])), .YS(S_7_13), .YC(C_7_13));
  FAX1 U378217 (.A(S_6_15), .B(C_6_14), .C((A[7] & B[14])), .YS(S_7_14), .YC(C_7_14));
  assign S_7_15 = (A[7] & B[15]);
  HAX1 U378230 (.A(S_7_12), .B((A[8] & B[11])), .YS(S_8_11), .YC(C_8_11));
  FAX1 U378231 (.A(S_7_13), .B(C_7_12), .C((A[8] & B[12])), .YS(S_8_12), .YC(C_8_12));
  FAX1 U378232 (.A(S_7_14), .B(C_7_13), .C((A[8] & B[13])), .YS(S_8_13), .YC(C_8_13));
  FAX1 U378233 (.A(S_7_15), .B(C_7_14), .C((A[8] & B[14])), .YS(S_8_14), .YC(C_8_14));
  assign S_8_15 = (A[8] & B[15]);
  HAX1 U378245 (.A(S_8_11), .B((A[9] & B[10])), .YS(S_9_10), .YC(C_9_10));
  FAX1 U378246 (.A(S_8_12), .B(C_8_11), .C((A[9] & B[11])), .YS(S_9_11), .YC(C_9_11));
  FAX1 U378247 (.A(S_8_13), .B(C_8_12), .C((A[9] & B[12])), .YS(S_9_12), .YC(C_9_12));
  FAX1 U378248 (.A(S_8_14), .B(C_8_13), .C((A[9] & B[13])), .YS(S_9_13), .YC(C_9_13));
  FAX1 U378249 (.A(S_8_15), .B(C_8_14), .C((A[9] & B[14])), .YS(S_9_14), .YC(C_9_14));
  assign S_9_15 = (A[9] & B[15]);
  HAX1 U378260 (.A(S_9_10), .B((A[10] & B[9])), .YS(S_10_9), .YC(C_10_9));
  FAX1 U378261 (.A(S_9_11), .B(C_9_10), .C((A[10] & B[10])), .YS(S_10_10), .YC(C_10_10));
  FAX1 U378262 (.A(S_9_12), .B(C_9_11), .C((A[10] & B[11])), .YS(S_10_11), .YC(C_10_11));
  FAX1 U378263 (.A(S_9_13), .B(C_9_12), .C((A[10] & B[12])), .YS(S_10_12), .YC(C_10_12));
  FAX1 U378264 (.A(S_9_14), .B(C_9_13), .C((A[10] & B[13])), .YS(S_10_13), .YC(C_10_13));
  FAX1 U378265 (.A(S_9_15), .B(C_9_14), .C((A[10] & B[14])), .YS(S_10_14), .YC(C_10_14));
  assign S_10_15 = (A[10] & B[15]);
  HAX1 U378275 (.A(S_10_9), .B((A[11] & B[8])), .YS(S_11_8), .YC(C_11_8));
  FAX1 U378276 (.A(S_10_10), .B(C_10_9), .C((A[11] & B[9])), .YS(S_11_9), .YC(C_11_9));
  FAX1 U378277 (.A(S_10_11), .B(C_10_10), .C((A[11] & B[10])), .YS(S_11_10), .YC(C_11_10));
  FAX1 U378278 (.A(S_10_12), .B(C_10_11), .C((A[11] & B[11])), .YS(S_11_11), .YC(C_11_11));
  FAX1 U378279 (.A(S_10_13), .B(C_10_12), .C((A[11] & B[12])), .YS(S_11_12), .YC(C_11_12));
  FAX1 U378280 (.A(S_10_14), .B(C_10_13), .C((A[11] & B[13])), .YS(S_11_13), .YC(C_11_13));
  FAX1 U378281 (.A(S_10_15), .B(C_10_14), .C((A[11] & B[14])), .YS(S_11_14), .YC(C_11_14));
  assign S_11_15 = (A[11] & B[15]);
  HAX1 U378290 (.A(S_11_8), .B((A[12] & B[7])), .YS(S_12_7), .YC(C_12_7));
  FAX1 U378291 (.A(S_11_9), .B(C_11_8), .C((A[12] & B[8])), .YS(S_12_8), .YC(C_12_8));
  FAX1 U378292 (.A(S_11_10), .B(C_11_9), .C((A[12] & B[9])), .YS(S_12_9), .YC(C_12_9));
  FAX1 U378293 (.A(S_11_11), .B(C_11_10), .C((A[12] & B[10])), .YS(S_12_10), .YC(C_12_10));
  FAX1 U378294 (.A(S_11_12), .B(C_11_11), .C((A[12] & B[11])), .YS(S_12_11), .YC(C_12_11));
  FAX1 U378295 (.A(S_11_13), .B(C_11_12), .C((A[12] & B[12])), .YS(S_12_12), .YC(C_12_12));
  FAX1 U378296 (.A(S_11_14), .B(C_11_13), .C((A[12] & B[13])), .YS(S_12_13), .YC(C_12_13));
  FAX1 U378297 (.A(S_11_15), .B(C_11_14), .C((A[12] & B[14])), .YS(S_12_14), .YC(C_12_14));
  assign S_12_15 = (A[12] & B[15]);
  HAX1 U378305 (.A(S_12_7), .B((A[13] & B[6])), .YS(S_13_6), .YC(C_13_6));
  FAX1 U378306 (.A(S_12_8), .B(C_12_7), .C((A[13] & B[7])), .YS(S_13_7), .YC(C_13_7));
  FAX1 U378307 (.A(S_12_9), .B(C_12_8), .C((A[13] & B[8])), .YS(S_13_8), .YC(C_13_8));
  FAX1 U378308 (.A(S_12_10), .B(C_12_9), .C((A[13] & B[9])), .YS(S_13_9), .YC(C_13_9));
  FAX1 U378309 (.A(S_12_11), .B(C_12_10), .C((A[13] & B[10])), .YS(S_13_10), .YC(C_13_10));
  FAX1 U378310 (.A(S_12_12), .B(C_12_11), .C((A[13] & B[11])), .YS(S_13_11), .YC(C_13_11));
  FAX1 U378311 (.A(S_12_13), .B(C_12_12), .C((A[13] & B[12])), .YS(S_13_12), .YC(C_13_12));
  FAX1 U378312 (.A(S_12_14), .B(C_12_13), .C((A[13] & B[13])), .YS(S_13_13), .YC(C_13_13));
  FAX1 U378313 (.A(S_12_15), .B(C_12_14), .C((A[13] & B[14])), .YS(S_13_14), .YC(C_13_14));
  assign S_13_15 = (A[13] & B[15]);
  HAX1 U378320 (.A(S_13_6), .B((A[14] & B[5])), .YS(S_14_5), .YC(C_14_5));
  FAX1 U378321 (.A(S_13_7), .B(C_13_6), .C((A[14] & B[6])), .YS(S_14_6), .YC(C_14_6));
  FAX1 U378322 (.A(S_13_8), .B(C_13_7), .C((A[14] & B[7])), .YS(S_14_7), .YC(C_14_7));
  FAX1 U378323 (.A(S_13_9), .B(C_13_8), .C((A[14] & B[8])), .YS(S_14_8), .YC(C_14_8));
  FAX1 U378324 (.A(S_13_10), .B(C_13_9), .C((A[14] & B[9])), .YS(S_14_9), .YC(C_14_9));
  FAX1 U378325 (.A(S_13_11), .B(C_13_10), .C((A[14] & B[10])), .YS(S_14_10), .YC(C_14_10));
  FAX1 U378326 (.A(S_13_12), .B(C_13_11), .C((A[14] & B[11])), .YS(S_14_11), .YC(C_14_11));
  FAX1 U378327 (.A(S_13_13), .B(C_13_12), .C((A[14] & B[12])), .YS(S_14_12), .YC(C_14_12));
  FAX1 U378328 (.A(S_13_14), .B(C_13_13), .C((A[14] & B[13])), .YS(S_14_13), .YC(C_14_13));
  FAX1 U378329 (.A(S_13_15), .B(C_13_14), .C((A[14] & B[14])), .YS(S_14_14), .YC(C_14_14));
  assign S_14_15 = (A[14] & B[15]);
  HAX1 U378335 (.A(S_14_5), .B((A[15] & B[4])), .YS(S_15_4), .YC(C_15_4));
  FAX1 U378336 (.A(S_14_6), .B(C_14_5), .C((A[15] & B[5])), .YS(S_15_5), .YC(C_15_5));
  FAX1 U378337 (.A(S_14_7), .B(C_14_6), .C((A[15] & B[6])), .YS(S_15_6), .YC(C_15_6));
  FAX1 U378338 (.A(S_14_8), .B(C_14_7), .C((A[15] & B[7])), .YS(S_15_7), .YC(C_15_7));
  FAX1 U378339 (.A(S_14_9), .B(C_14_8), .C((A[15] & B[8])), .YS(S_15_8), .YC(C_15_8));
  FAX1 U378340 (.A(S_14_10), .B(C_14_9), .C((A[15] & B[9])), .YS(S_15_9), .YC(C_15_9));
  FAX1 U378341 (.A(S_14_11), .B(C_14_10), .C((A[15] & B[10])), .YS(S_15_10), .YC(C_15_10));
  FAX1 U378342 (.A(S_14_12), .B(C_14_11), .C((A[15] & B[11])), .YS(S_15_11), .YC(C_15_11));
  FAX1 U378343 (.A(S_14_13), .B(C_14_12), .C((A[15] & B[12])), .YS(S_15_12), .YC(C_15_12));
  FAX1 U378344 (.A(S_14_14), .B(C_14_13), .C((A[15] & B[13])), .YS(S_15_13), .YC(C_15_13));
  FAX1 U378345 (.A(S_14_15), .B(C_14_14), .C((A[15] & B[14])), .YS(S_15_14), .YC(C_15_14));
  assign S_15_15 = (A[15] & B[15]);
  assign {S_16_15, S_16_14, S_16_13, S_16_12, S_16_11, S_16_10, S_16_9, S_16_8, S_16_7, S_16_6, S_16_5, S_16_4, S_16_3} = {C_15_14, C_15_13, C_15_12, C_15_11, C_15_10, C_15_9, C_15_8, C_15_7, C_15_6, C_15_5, C_15_4, 1'b0} + {S_15_15, S_15_14, S_15_13, S_15_12, S_15_11, S_15_10, S_15_9, S_15_8, S_15_7, S_15_6, S_15_5, S_15_4};
  assign O = {S_16_15,S_16_14,S_16_13,S_16_12,S_16_11,S_16_10,S_16_9,S_16_8,S_16_7,S_16_6,S_16_5,S_16_4,S_16_3,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};

endmodule

