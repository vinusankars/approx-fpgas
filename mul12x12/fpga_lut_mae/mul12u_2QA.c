/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 1.26 %
// MAE = 210944 
// WCE% = 5.03 %
// WCE = 843777 
// WCRE% = 100.00 %
// EP% = 99.95 %
// MRE% = 14.56 %
// MSE = 60863.622e6 
// FPGA_POWER = 0.47
// FPGA_DELAY = 9.1
// FPGA_LUT = 20
#include <stdint.h>
#include <stdlib.h>

uint32_t mul12u_2QA(uint16_t A, uint16_t B)
{
  uint32_t P, P_;
  uint16_t tmp, C_10_10,C_10_6,C_10_7,C_10_8,C_10_9,C_11_10,C_11_5,C_11_6,C_11_7,C_11_8,C_11_9,C_8_10,C_8_8,C_8_9,C_9_10,C_9_7,C_9_8,C_9_9,S_10_10,S_10_11,S_10_6,S_10_7,S_10_8,S_10_9,S_11_10,S_11_11,S_11_5,S_11_6,S_11_7,S_11_8,S_11_9,S_12_10,S_12_11,S_12_4,S_12_5,S_12_6,S_12_7,S_12_8,S_12_9,S_7_10,S_7_11,S_7_9,S_8_10,S_8_11,S_8_8,S_8_9,S_9_10,S_9_11,S_9_7,S_9_8,S_9_9;
  S_7_9 = (((A>>7)&1) & ((B>>9)&1));
  S_7_10 = (((A>>7)&1) & ((B>>10)&1));
  S_7_11 = (((A>>7)&1) & ((B>>11)&1));
  S_8_8 = S_7_9^(((A>>8)&1) & ((B>>8)&1));
  C_8_8 = S_7_9&(((A>>8)&1) & ((B>>8)&1));
  S_8_9 = S_7_10^(((A>>8)&1) & ((B>>9)&1));
  C_8_9 = S_7_10&(((A>>8)&1) & ((B>>9)&1));
  S_8_10 = S_7_11^(((A>>8)&1) & ((B>>10)&1));
  C_8_10 = S_7_11&(((A>>8)&1) & ((B>>10)&1));
  S_8_11 = (((A>>8)&1) & ((B>>11)&1));
  S_9_7 = S_8_8^(((A>>9)&1) & ((B>>7)&1));
  C_9_7 = S_8_8&(((A>>9)&1) & ((B>>7)&1));
  tmp = S_8_9^C_8_8;
  S_9_8 = tmp^(((A>>9)&1) & ((B>>8)&1));
  C_9_8 = (tmp&(((A>>9)&1) & ((B>>8)&1)))|(S_8_9&C_8_8);
  tmp = S_8_10^C_8_9;
  S_9_9 = tmp^(((A>>9)&1) & ((B>>9)&1));
  C_9_9 = (tmp&(((A>>9)&1) & ((B>>9)&1)))|(S_8_10&C_8_9);
  tmp = S_8_11^C_8_10;
  S_9_10 = tmp^(((A>>9)&1) & ((B>>10)&1));
  C_9_10 = (tmp&(((A>>9)&1) & ((B>>10)&1)))|(S_8_11&C_8_10);
  S_9_11 = (((A>>9)&1) & ((B>>11)&1));
  S_10_6 = S_9_7^(((A>>10)&1) & ((B>>6)&1));
  C_10_6 = S_9_7&(((A>>10)&1) & ((B>>6)&1));
  tmp = S_9_8^C_9_7;
  S_10_7 = tmp^(((A>>10)&1) & ((B>>7)&1));
  C_10_7 = (tmp&(((A>>10)&1) & ((B>>7)&1)))|(S_9_8&C_9_7);
  tmp = S_9_9^C_9_8;
  S_10_8 = tmp^(((A>>10)&1) & ((B>>8)&1));
  C_10_8 = (tmp&(((A>>10)&1) & ((B>>8)&1)))|(S_9_9&C_9_8);
  tmp = S_9_10^C_9_9;
  S_10_9 = tmp^(((A>>10)&1) & ((B>>9)&1));
  C_10_9 = (tmp&(((A>>10)&1) & ((B>>9)&1)))|(S_9_10&C_9_9);
  tmp = S_9_11^C_9_10;
  S_10_10 = tmp^(((A>>10)&1) & ((B>>10)&1));
  C_10_10 = (tmp&(((A>>10)&1) & ((B>>10)&1)))|(S_9_11&C_9_10);
  S_10_11 = (((A>>10)&1) & ((B>>11)&1));
  S_11_5 = S_10_6^(((A>>11)&1) & ((B>>5)&1));
  C_11_5 = S_10_6&(((A>>11)&1) & ((B>>5)&1));
  tmp = S_10_7^C_10_6;
  S_11_6 = tmp^(((A>>11)&1) & ((B>>6)&1));
  C_11_6 = (tmp&(((A>>11)&1) & ((B>>6)&1)))|(S_10_7&C_10_6);
  tmp = S_10_8^C_10_7;
  S_11_7 = tmp^(((A>>11)&1) & ((B>>7)&1));
  C_11_7 = (tmp&(((A>>11)&1) & ((B>>7)&1)))|(S_10_8&C_10_7);
  tmp = S_10_9^C_10_8;
  S_11_8 = tmp^(((A>>11)&1) & ((B>>8)&1));
  C_11_8 = (tmp&(((A>>11)&1) & ((B>>8)&1)))|(S_10_9&C_10_8);
  tmp = S_10_10^C_10_9;
  S_11_9 = tmp^(((A>>11)&1) & ((B>>9)&1));
  C_11_9 = (tmp&(((A>>11)&1) & ((B>>9)&1)))|(S_10_10&C_10_9);
  tmp = S_10_11^C_10_10;
  S_11_10 = tmp^(((A>>11)&1) & ((B>>10)&1));
  C_11_10 = (tmp&(((A>>11)&1) & ((B>>10)&1)))|(S_10_11&C_10_10);
  S_11_11 = (((A>>11)&1) & ((B>>11)&1));
  P_ = (((C_11_5 & 1)<<1)|((C_11_6 & 1)<<2)|((C_11_7 & 1)<<3)|((C_11_8 & 1)<<4)|((C_11_9 & 1)<<5)|((C_11_10 & 1)<<6)) + (((S_11_5 & 1)<<0)|((S_11_6 & 1)<<1)|((S_11_7 & 1)<<2)|((S_11_8 & 1)<<3)|((S_11_9 & 1)<<4)|((S_11_10 & 1)<<5)|((S_11_11 & 1)<<6));
  S_12_4 = (P_ >> 0) & 1;
  S_12_5 = (P_ >> 1) & 1;
  S_12_6 = (P_ >> 2) & 1;
  S_12_7 = (P_ >> 3) & 1;
  S_12_8 = (P_ >> 4) & 1;
  S_12_9 = (P_ >> 5) & 1;
  S_12_10 = (P_ >> 6) & 1;
  S_12_11 = (P_ >> 7) & 1;
  P = 0;
  P |= (S_12_4 & 1) << 16;
  P |= (S_12_5 & 1) << 17;
  P |= (S_12_6 & 1) << 18;
  P |= (S_12_7 & 1) << 19;
  P |= (S_12_8 & 1) << 20;
  P |= (S_12_9 & 1) << 21;
  P |= (S_12_10 & 1) << 22;
  P |= (S_12_11 & 1) << 23;
  return P;
}
