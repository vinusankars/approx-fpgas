/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.036 %
// MAE = 24 
// WCE% = 0.095 %
// WCE = 62 
// WCRE% = 5500.00 %
// EP% = 98.49 %
// MRE% = 1.76 %
// MSE = 846 
// FPGA_POWER = 1.1
// FPGA_DELAY = 11
// FPGA_LUT = 65

module mul8u_1G9M(A, B, O);
  input [7:0] A, B;
  output [15:0] O;
  wire n_1753, n_946, n_1364, n_543, n_542, n_1194, n_1195, n_418, n_1116, n_1752;
  wire n_1241, n_41, n_40, n_1954, n_1955, n_1893, n_1892, n_1380, n_1596, n_1009;
  wire n_1286, n_1287, n_1815, n_1814, n_388, n_2016, n_141, n_140, n_1566, n_1736;
  wire n_466, n_776, n_777, n_1055, n_1054, n_248, n_1426, n_714, n_1628, n_30;
  wire n_31, n_1348, n_1100, n_790, n_791, n_1582, n_1211, n_1210, n_2000, n_652;
  wire n_1691, n_1690, n_1459, n_1458, n_666, n_1860, n_1861, n_868, n_497, n_496;
  wire n_729, n_728, n_1024, n_434, n_232, n_23, n_22, n_21, n_20, n_27;
  wire n_26, n_25, n_24, n_29, n_28, n_806, n_807, n_1612, n_1658, n_327;
  wire n_326, n_1877, n_1876, n_1505, n_1504, n_1272, n_125, n_124, n_558, n_559;
  wire n_480, n_1799, n_575, n_343, n_342, n_1039, n_1038, n_839, n_838, n_1644;
  wire n_1968, n_18, n_19, n_16, n_17, n_14, n_15, n_12, n_13, n_10;
  wire n_11, n_94, n_95, n_1831, n_1844, n_1845, n_884, n_1534, n_1535, n_356;
  wire n_357, n_822, n_823, n_1008, n_930, n_450, n_1550, n_1488, n_1086, n_900;
  wire n_1489, n_1659, n_1334, n_1830, n_1071, n_1025, n_1768, n_109, n_108, n_1521;
  wire n_1520, n_590, n_591, n_1707, n_1706, n_1257, n_1256, n_1721, n_1318, n_1148;
  wire n_914, n_699, n_698, n_1396, n_1720, n_1906, n_1132, n_1984, n_1240, n_1798;
  wire n_1442, n_1410, n_1443, n_1769, n_218, n_1303, n_1302, n_1178, n_372, n_373;
  wire n_1737, n_963, n_962, n_1675, n_682, n_1938, n_1939, n_1674, n_1224, n_1225;
  wire n_202, n_1273, n_992, n_993, n_1783, n_1782, n_1162, n_264, n_265, n_8;
  wire n_9, n_4, n_5, n_574, n_7, n_0, n_1, n_2, n_3, n_1923;
  wire n_1922, n_976, n_1070, n_6, n_604, n_605, n_1473, n_1472;
  assign n_0 = A[0];
  assign n_1 = A[0];
  assign n_2 = A[1];
  assign n_3 = A[1];
  assign n_4 = A[2];
  assign n_5 = A[2];
  assign n_6 = A[3];
  assign n_7 = A[3];
  assign n_8 = A[4];
  assign n_9 = A[4];
  assign n_10 = A[5];
  assign n_11 = A[5];
  assign n_12 = A[6];
  assign n_13 = A[6];
  assign n_14 = A[7];
  assign n_15 = A[7];
  assign n_16 = B[0];
  assign n_17 = B[0];
  assign n_18 = B[1];
  assign n_19 = B[1];
  assign n_20 = B[2];
  assign n_21 = B[2];
  assign n_22 = B[3];
  assign n_23 = B[3];
  assign n_24 = B[4];
  assign n_25 = B[4];
  assign n_26 = B[5];
  assign n_27 = B[5];
  assign n_28 = B[6];
  assign n_29 = B[6];
  assign n_30 = B[7];
  assign n_31 = B[7];
  assign n_40 = ~(n_12 ^ n_12);
  assign n_41 = n_40;
  assign n_94 = n_8 & n_16;
  assign n_95 = n_94;
  assign n_108 = n_10 & n_16;
  assign n_109 = n_108;
  assign n_124 = n_12 & n_16;
  assign n_125 = n_124;
  assign n_140 = n_14 & n_16;
  assign n_141 = n_140;
  assign n_202 = n_6 & n_18;
  assign n_218 = n_8 & n_18;
  assign n_232 = n_10 & n_18;
  assign n_248 = n_12 & n_18;
  assign n_264 = n_14 & n_18;
  assign n_265 = n_264;
  assign n_326 = n_95 & n_202;
  assign n_327 = n_326;
  PDKGENHAX1 tmp61(.YS(n_342), .YC(n_343), .A(n_109), .B(n_218));
  PDKGENHAX1 tmp62(.YS(n_356), .YC(n_357), .A(n_125), .B(n_232));
  PDKGENHAX1 tmp63(.YS(n_372), .YC(n_373), .A(n_141), .B(n_248));
  assign n_388 = n_2 & n_20;
  assign n_418 = n_4 & n_388;
  assign n_434 = n_6 & n_20;
  assign n_450 = n_8 & n_20;
  assign n_466 = n_10 & n_20;
  assign n_480 = n_12 & n_20;
  assign n_496 = n_14 & n_20;
  assign n_497 = n_496;
  assign n_542 = n_22 & n_418;
  assign n_543 = n_542;
  PDKGENFAX1 tmp74(.YS(n_558), .YC(n_559), .A(n_342), .B(n_434), .C(n_327));
  PDKGENFAX1 tmp75(.YS(n_574), .YC(n_575), .A(n_356), .B(n_450), .C(n_343));
  PDKGENFAX1 tmp76(.YS(n_590), .YC(n_591), .A(n_372), .B(n_466), .C(n_357));
  PDKGENFAX1 tmp77(.YS(n_604), .YC(n_605), .A(n_265), .B(n_480), .C(n_373));
  assign n_652 = n_4 & n_22;
  assign n_666 = n_6 & n_22;
  assign n_682 = n_8 & n_22;
  assign n_698 = n_10 & n_22;
  assign n_699 = n_698;
  assign n_714 = n_12 & n_22;
  assign n_728 = n_14 & n_22;
  assign n_729 = n_728;
  PDKGENFAX1 tmp86(.YS(n_776), .YC(n_777), .A(n_558), .B(n_652), .C(n_543));
  PDKGENFAX1 tmp87(.YS(n_790), .YC(n_791), .A(n_574), .B(n_666), .C(n_559));
  PDKGENFAX1 tmp88(.YS(n_806), .YC(n_807), .A(n_590), .B(n_682), .C(n_575));
  PDKGENFAX1 tmp89(.YS(n_822), .YC(n_823), .A(n_604), .B(n_699), .C(n_591));
  PDKGENFAX1 tmp90(.YS(n_838), .YC(n_839), .A(n_497), .B(n_714), .C(n_605));
  assign n_868 = n_2 & n_24;
  assign n_884 = n_4 & n_24;
  assign n_900 = n_6 & n_24;
  assign n_914 = n_8 & n_24;
  assign n_930 = n_10 & n_24;
  assign n_946 = n_12 & n_24;
  assign n_962 = n_14 & n_24;
  assign n_963 = n_962;
  assign n_976 = n_41;
  assign n_992 = n_776 & n_868;
  assign n_993 = n_992;
  PDKGENFAX1 tmp102(.YS(n_1008), .YC(n_1009), .A(n_790), .B(n_884), .C(n_777));
  PDKGENFAX1 tmp103(.YS(n_1024), .YC(n_1025), .A(n_806), .B(n_900), .C(n_791));
  PDKGENFAX1 tmp104(.YS(n_1038), .YC(n_1039), .A(n_822), .B(n_914), .C(n_807));
  PDKGENFAX1 tmp105(.YS(n_1054), .YC(n_1055), .A(n_838), .B(n_930), .C(n_823));
  PDKGENFAX1 tmp106(.YS(n_1070), .YC(n_1071), .A(n_729), .B(n_946), .C(n_839));
  assign n_1086 = n_0 & n_26;
  assign n_1100 = n_2 & n_26;
  assign n_1116 = n_4 & n_26;
  assign n_1132 = n_6 & n_26;
  assign n_1148 = n_8 & n_26;
  assign n_1162 = n_10 & n_26;
  assign n_1178 = n_12 & n_26;
  assign n_1194 = n_14 & n_26;
  assign n_1195 = n_1194;
  PDKGENFAX1 tmp116(.YS(n_1210), .YC(n_1211), .A(n_993), .B(n_1086), .C(n_41));
  PDKGENHAX1 tmp117(.YS(n_1224), .YC(n_1225), .A(n_1008), .B(n_1100));
  PDKGENFAX1 tmp118(.YS(n_1240), .YC(n_1241), .A(n_1024), .B(n_1116), .C(n_1009));
  PDKGENFAX1 tmp119(.YS(n_1256), .YC(n_1257), .A(n_1038), .B(n_1132), .C(n_1025));
  PDKGENFAX1 tmp120(.YS(n_1272), .YC(n_1273), .A(n_1054), .B(n_1148), .C(n_1039));
  PDKGENFAX1 tmp121(.YS(n_1286), .YC(n_1287), .A(n_1070), .B(n_1162), .C(n_1055));
  PDKGENFAX1 tmp122(.YS(n_1302), .YC(n_1303), .A(n_963), .B(n_1178), .C(n_1071));
  assign n_1318 = n_0 & n_28;
  assign n_1334 = n_2 & n_28;
  assign n_1348 = n_4 & n_28;
  assign n_1364 = n_6 & n_28;
  assign n_1380 = n_8 & n_28;
  assign n_1396 = n_10 & n_28;
  assign n_1410 = n_12 & n_28;
  assign n_1426 = n_14 & n_28;
  PDKGENFAX1 tmp131(.YS(n_1442), .YC(n_1443), .A(n_1224), .B(n_1318), .C(n_1211));
  PDKGENFAX1 tmp132(.YS(n_1458), .YC(n_1459), .A(n_1240), .B(n_1334), .C(n_1225));
  PDKGENFAX1 tmp133(.YS(n_1472), .YC(n_1473), .A(n_1256), .B(n_1348), .C(n_1241));
  PDKGENFAX1 tmp134(.YS(n_1488), .YC(n_1489), .A(n_1272), .B(n_1364), .C(n_1257));
  PDKGENFAX1 tmp135(.YS(n_1504), .YC(n_1505), .A(n_1286), .B(n_1380), .C(n_1273));
  PDKGENFAX1 tmp136(.YS(n_1520), .YC(n_1521), .A(n_1302), .B(n_1396), .C(n_1287));
  PDKGENFAX1 tmp137(.YS(n_1534), .YC(n_1535), .A(n_1195), .B(n_1410), .C(n_1303));
  assign n_1550 = n_0 & n_30;
  assign n_1566 = n_2 & n_30;
  assign n_1582 = n_4 & n_30;
  assign n_1596 = n_6 & n_30;
  assign n_1612 = n_8 & n_30;
  assign n_1628 = n_10 & n_30;
  assign n_1644 = n_12 & n_30;
  assign n_1658 = n_14 & n_30;
  assign n_1659 = n_1658;
  PDKGENFAX1 tmp147(.YS(n_1674), .YC(n_1675), .A(n_1458), .B(n_1550), .C(n_1443));
  PDKGENFAX1 tmp148(.YS(n_1690), .YC(n_1691), .A(n_1472), .B(n_1566), .C(n_1459));
  PDKGENFAX1 tmp149(.YS(n_1706), .YC(n_1707), .A(n_1488), .B(n_1582), .C(n_1473));
  PDKGENFAX1 tmp150(.YS(n_1720), .YC(n_1721), .A(n_1504), .B(n_1596), .C(n_1489));
  PDKGENFAX1 tmp151(.YS(n_1736), .YC(n_1737), .A(n_1520), .B(n_1612), .C(n_1505));
  PDKGENFAX1 tmp152(.YS(n_1752), .YC(n_1753), .A(n_1534), .B(n_1628), .C(n_1521));
  PDKGENFAX1 tmp153(.YS(n_1768), .YC(n_1769), .A(n_1426), .B(n_1644), .C(n_1535));
  PDKGENHAX1 tmp154(.YS(n_1782), .YC(n_1783), .A(n_1690), .B(n_1675));
  PDKGENFAX1 tmp155(.YS(n_1798), .YC(n_1799), .A(n_1706), .B(n_1691), .C(n_1783));
  PDKGENFAX1 tmp156(.YS(n_1814), .YC(n_1815), .A(n_1720), .B(n_1707), .C(n_1799));
  PDKGENFAX1 tmp157(.YS(n_1830), .YC(n_1831), .A(n_1736), .B(n_1721), .C(n_1815));
  PDKGENHAX1 tmp158(.YS(n_1844), .YC(n_1845), .A(n_1752), .B(n_1737));
  PDKGENFAX1 tmp159(.YS(n_1860), .YC(n_1861), .A(n_1768), .B(n_1753), .C(n_1845));
  PDKGENFAX1 tmp160(.YS(n_1876), .YC(n_1877), .A(n_1658), .B(n_1769), .C(n_1861));
  PDKGENHAX1 tmp161(.YS(n_1892), .YC(n_1893), .A(n_1752), .B(n_1737));
  assign n_1906 = ~n_1892;
  assign n_1922 = n_1845 | n_1844;
  assign n_1923 = n_1922;
  PDKGENFAX1 tmp165(.YS(n_1938), .YC(n_1939), .A(n_1768), .B(n_1753), .C(n_1923));
  PDKGENFAX1 tmp166(.YS(n_1954), .YC(n_1955), .A(n_1659), .B(n_1769), .C(n_1939));
  PDKGENMUX2X1 tmp167(.Y(n_1968), .A(n_1844), .B(n_1906), .S(n_1831));
  PDKGENMUX2X1 tmp168(.Y(n_1984), .A(n_1860), .B(n_1938), .S(n_1831));
  PDKGENMUX2X1 tmp169(.Y(n_2000), .A(n_1876), .B(n_1954), .S(n_1831));
  PDKGENMUX2X1 tmp170(.Y(n_2016), .A(n_1877), .B(n_1955), .S(n_1831));
  assign O[0] = n_18;
  assign O[1] = n_12;
  assign O[2] = n_6;
  assign O[3] = n_976;
  assign O[4] = n_976;
  assign O[5] = n_1210;
  assign O[6] = n_1442;
  assign O[7] = n_1674;
  assign O[8] = n_1782;
  assign O[9] = n_1798;
  assign O[10] = n_1814;
  assign O[11] = n_1830;
  assign O[12] = n_1968;
  assign O[13] = n_1984;
  assign O[14] = n_2000;
  assign O[15] = n_2016;
endmodule

/* mod */
module PDKGENFAX1( input A, input B, input C, output YS, output YC );
    assign YS = (A ^ B) ^ C;
    assign YC = (A & B) | (B & C) | (A & C);
endmodule
/* mod */
module PDKGENMUX2X1( input A, input B, input S, output Y );
    assign Y = (A & ~S) | (B & S);
endmodule
/* mod */
module PDKGENHAX1( input A, input B, output YS, output YC );
    assign YS = A ^ B;
    assign YC = A & B;
endmodule
