/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.049 %
// MAE = 65 
// WCE% = 0.12 %
// WCE = 159 
// WCRE% = 100.00 %
// EP% = 99.61 %
// MRE% = 0.14 %
// MSE = 5645 
// FPGA_POWER = 0.39
// FPGA_DELAY = 8.1
// FPGA_LUT = 9.0


module add16u_0EX(A, B, O);
  input [15:0] A, B;
  output [16:0] O;
  wire sig_69, sig_70, sig_71, sig_73, sig_74, sig_76;
  wire sig_78, sig_79, sig_80, sig_81, sig_83, sig_84;
  wire sig_85, sig_86, sig_88, sig_89, sig_90, sig_91;
  wire sig_93, sig_94, sig_95, sig_96, sig_98, sig_99;
  wire sig_100, sig_101, sig_103, sig_104, sig_105, sig_106;
  assign sig_69 = A[8] ^ B[8];
  assign sig_70 = A[8] & B[8];
  assign sig_71 = sig_69 & A[7];
  assign O[8] = sig_69 ^ A[7];
  assign sig_73 = sig_70 | sig_71;
  assign sig_74 = A[9] ^ B[9];
  assign O[2] = A[9] & B[9];
  assign sig_76 = sig_74 & sig_73;
  assign O[9] = sig_74 ^ sig_73;
  assign sig_78 = O[2] | sig_76;
  assign sig_79 = A[10] ^ B[10];
  assign sig_80 = A[10] & B[10];
  assign sig_81 = sig_79 & sig_78;
  assign O[10] = sig_79 ^ sig_78;
  assign sig_83 = sig_80 | sig_81;
  assign sig_84 = A[11] ^ B[11];
  assign sig_85 = A[11] & B[11];
  assign sig_86 = sig_84 & sig_83;
  assign O[11] = sig_84 ^ sig_83;
  assign sig_88 = sig_85 | sig_86;
  assign sig_89 = A[12] ^ B[12];
  assign sig_90 = A[12] & B[12];
  assign sig_91 = sig_89 & sig_88;
  assign O[12] = sig_89 ^ sig_88;
  assign sig_93 = sig_90 | sig_91;
  assign sig_94 = A[13] ^ B[13];
  assign sig_95 = A[13] & B[13];
  assign sig_96 = sig_94 & sig_93;
  assign O[13] = sig_94 ^ sig_93;
  assign sig_98 = sig_95 | sig_96;
  assign sig_99 = A[14] ^ B[14];
  assign sig_100 = A[14] & B[14];
  assign sig_101 = sig_99 & sig_98;
  assign O[14] = sig_99 ^ sig_98;
  assign sig_103 = sig_100 | sig_101;
  assign sig_104 = A[15] ^ B[15];
  assign sig_105 = A[15] & B[15];
  assign sig_106 = sig_104 & sig_103;
  assign O[15] = sig_104 ^ sig_103;
  assign O[16] = sig_105 | sig_106;
  assign O[0] = B[7];
  assign O[1] = B[6];
  assign O[3] = O[2];
  assign O[4] = A[5];
  assign O[5] = A[5];
  assign O[6] = B[6];
  assign O[7] = B[7];
endmodule

