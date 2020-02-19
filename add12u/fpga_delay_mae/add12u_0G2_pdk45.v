/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.48 %
// MAE = 39 
// WCE% = 1.59 %
// WCE = 130 
// WCRE% = 7900.00 %
// EP% = 99.23 %
// MRE% = 1.31 %
// MSE = 2316 
// FPGA_POWER = 0.32
// FPGA_DELAY = 6.6
// FPGA_LUT = 6.0


module add12u_0G2(A, B, O);
  input [11:0] A, B;
  output [12:0] O;
  wire sig_57, sig_61, sig_63, sig_65, sig_66, sig_67;
  wire sig_68, sig_70, sig_71, sig_72, sig_73, sig_75;
  wire sig_76, sig_77, sig_78;
  assign O[4] = 1'b1;
  assign O[7] = B[7] ^ A[7];
  assign sig_57 = A[7] & B[7];
  assign O[1] = sig_57;
  assign sig_61 = A[8] ^ B[8];
  assign O[0] = A[8] & B[8];
  assign sig_63 = sig_61 & O[1];
  assign O[8] = sig_61 ^ O[1];
  assign sig_65 = O[0] | sig_63;
  assign sig_66 = A[9] ^ B[9];
  assign sig_67 = A[9] & B[9];
  assign sig_68 = sig_66 & sig_65;
  assign O[9] = sig_66 ^ sig_65;
  assign sig_70 = sig_67 | sig_68;
  assign sig_71 = A[10] ^ B[10];
  assign sig_72 = A[10] & B[10];
  assign sig_73 = sig_71 & sig_70;
  assign O[10] = sig_71 ^ sig_70;
  assign sig_75 = sig_72 | sig_73;
  assign sig_76 = A[11] ^ B[11];
  assign sig_77 = A[11] & B[11];
  assign sig_78 = sig_76 & sig_75;
  assign O[11] = sig_76 ^ sig_75;
  assign O[12] = sig_77 | sig_78;
  assign O[2] = A[6];
  assign O[3] = B[6];
  assign O[5] = B[6];
  assign O[6] = O[4];
endmodule

