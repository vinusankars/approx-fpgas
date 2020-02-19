/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 2.34 %
// MAE = 100630528 
// WCE% = 9.37 %
// WCE = 402522113 
// WCRE% = 100.00 %
// EP% = 100.00 %
// MRE% = 22.94 %
// MSE = 14285.02e12 
// FPGA_POWER = 0.39
// FPGA_DELAY = 8.6
// FPGA_LUT = 19
#include <stdint.h>
#include <stdlib.h>

uint32_t mul16u_GAM(uint16_t A, uint16_t B)
{
  uint32_t P, P_;
  uint16_t tmp, C_13_12,C_13_13,C_13_14,C_14_11,C_14_12,C_14_13,C_14_14,C_15_10,C_15_11,C_15_12,C_15_13,C_15_14,C_16_10,C_16_11,C_16_12,C_16_13,C_16_14,S_12_13,S_12_14,S_12_15,S_13_12,S_13_13,S_13_14,S_13_15,S_14_11,S_14_12,S_14_13,S_14_14,S_14_15,S_15_10,S_15_11,S_15_12,S_15_13,S_15_14,S_15_15,S_16_10,S_16_11,S_16_12,S_16_13,S_16_14,S_16_15,S_16_9;
  S_12_13 = (((A>>12)&1) & ((B>>13)&1));
  S_12_14 = (((A>>12)&1) & ((B>>14)&1));
  S_12_15 = (((A>>12)&1) & ((B>>15)&1));
  S_13_12 = S_12_13^(((A>>13)&1) & ((B>>12)&1));
  C_13_12 = S_12_13&(((A>>13)&1) & ((B>>12)&1));
  S_13_13 = S_12_14^(((A>>13)&1) & ((B>>13)&1));
  C_13_13 = S_12_14&(((A>>13)&1) & ((B>>13)&1));
  S_13_14 = S_12_15^(((A>>13)&1) & ((B>>14)&1));
  C_13_14 = S_12_15&(((A>>13)&1) & ((B>>14)&1));
  S_13_15 = (((A>>13)&1) & ((B>>15)&1));
  S_14_11 = S_13_12^(((A>>14)&1) & ((B>>11)&1));
  C_14_11 = S_13_12&(((A>>14)&1) & ((B>>11)&1));
  tmp = S_13_13^C_13_12;
  S_14_12 = tmp^(((A>>14)&1) & ((B>>12)&1));
  C_14_12 = (tmp&(((A>>14)&1) & ((B>>12)&1)))|(S_13_13&C_13_12);
  tmp = S_13_14^C_13_13;
  S_14_13 = tmp^(((A>>14)&1) & ((B>>13)&1));
  C_14_13 = (tmp&(((A>>14)&1) & ((B>>13)&1)))|(S_13_14&C_13_13);
  tmp = S_13_15^C_13_14;
  S_14_14 = tmp^(((A>>14)&1) & ((B>>14)&1));
  C_14_14 = (tmp&(((A>>14)&1) & ((B>>14)&1)))|(S_13_15&C_13_14);
  S_14_15 = (((A>>14)&1) & ((B>>15)&1));
  S_15_10 = S_14_11^(((A>>15)&1) & ((B>>10)&1));
  C_15_10 = S_14_11&(((A>>15)&1) & ((B>>10)&1));
  tmp = S_14_12^C_14_11;
  S_15_11 = tmp^(((A>>15)&1) & ((B>>11)&1));
  C_15_11 = (tmp&(((A>>15)&1) & ((B>>11)&1)))|(S_14_12&C_14_11);
  tmp = S_14_13^C_14_12;
  S_15_12 = tmp^(((A>>15)&1) & ((B>>12)&1));
  C_15_12 = (tmp&(((A>>15)&1) & ((B>>12)&1)))|(S_14_13&C_14_12);
  tmp = S_14_14^C_14_13;
  S_15_13 = tmp^(((A>>15)&1) & ((B>>13)&1));
  C_15_13 = (tmp&(((A>>15)&1) & ((B>>13)&1)))|(S_14_14&C_14_13);
  tmp = S_14_15^C_14_14;
  S_15_14 = tmp^(((A>>15)&1) & ((B>>14)&1));
  C_15_14 = (tmp&(((A>>15)&1) & ((B>>14)&1)))|(S_14_15&C_14_14);
  S_15_15 = (((A>>15)&1) & ((B>>15)&1));
  S_16_9 = S_15_10;
  S_16_10 = S_15_11^C_15_10;
  C_16_10 = S_15_11&C_15_10;
  tmp = S_15_12^C_16_10;
  S_16_11 = tmp^C_15_11;
  C_16_11 = (tmp&C_15_11)|(S_15_12&C_16_10);
  tmp = S_15_13^C_16_11;
  S_16_12 = tmp^C_15_12;
  C_16_12 = (tmp&C_15_12)|(S_15_13&C_16_11);
  tmp = S_15_14^C_16_12;
  S_16_13 = tmp^C_15_13;
  C_16_13 = (tmp&C_15_13)|(S_15_14&C_16_12);
  tmp = S_15_15^C_16_13;
  S_16_14 = tmp^C_15_14;
  C_16_14 = (tmp&C_15_14)|(S_15_15&C_16_13);
  S_16_15 = C_16_14;
  P = 0;
  P |= (S_16_9 & 1) << 25;
  P |= (S_16_10 & 1) << 26;
  P |= (S_16_11 & 1) << 27;
  P |= (S_16_12 & 1) << 28;
  P |= (S_16_13 & 1) << 29;
  P |= (S_16_14 & 1) << 30;
  P |= (S_16_15 & 1) << 31;
  return P;
}
