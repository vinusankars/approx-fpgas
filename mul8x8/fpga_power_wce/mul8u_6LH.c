/***
* This code is a part of EvoApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under The MIT License.
* When used, please cite the following article(s): PRABAKARAN B. S., MRAZEK V., VASICEK Z., SEKANINA L., SHAFIQUE M. ApproxFPGAs: Embracing ASIC-based Approximate Arithmetic Components for FPGA-Based Systems. DAC 2020. 
***/
// MAE% = 0.051 %
// MAE = 33 
// WCE% = 0.25 %
// WCE = 163 
// WCRE% = 725.00 %
// EP% = 84.76 %
// MRE% = 1.28 %
// MSE = 2005 
// FPGA_POWER = 1.0
// FPGA_DELAY = 11
// FPGA_LUT = 63
#include <stdint.h>
#include <stdlib.h>

uint64_t mul8u_6LH(const uint64_t B,const uint64_t A)
{
   uint64_t O, dout_20, dout_21, dout_22, dout_23, dout_27, dout_28, dout_29, dout_30, dout_31, dout_34, dout_35, dout_36, dout_37, dout_38, dout_39, dout_41, dout_42, dout_43, dout_44, dout_45, dout_46, dout_47, dout_49, dout_50, dout_51, dout_52, dout_53, dout_54, dout_55, dout_56, dout_57, dout_58, dout_59, dout_60, dout_61, dout_62, dout_63, dout_64, dout_65, dout_66, dout_67, dout_68, dout_69, dout_70, dout_71, dout_72, dout_73, dout_74, dout_75, dout_76, dout_77, dout_78, dout_79, dout_89, dout_95, dout_97, dout_99, dout_100, dout_102, dout_103, dout_104, dout_105, dout_106, dout_107, dout_108, dout_109, dout_110, dout_111, dout_112, dout_113, dout_116, dout_119, dout_121, dout_122, dout_123, dout_124, dout_125, dout_126, dout_127, dout_128, dout_129, dout_130, dout_131, dout_132, dout_133, dout_134, dout_135, dout_136, dout_137, dout_138, dout_139, dout_140, dout_141, dout_142, dout_143, dout_144, dout_145, dout_146, dout_147, dout_158, dout_163, dout_165, dout_166, dout_167, dout_168, dout_169, dout_170, dout_171, dout_172, dout_173, dout_174, dout_175, dout_176, dout_177, dout_178, dout_179, dout_180, dout_182, dout_183, dout_184, dout_185, dout_186, dout_187, dout_188, dout_189, dout_190, dout_191, dout_192, dout_193, dout_194, dout_195, dout_196, dout_197, dout_198, dout_199, dout_200, dout_201, dout_202, dout_203, dout_204, dout_205, dout_206, dout_207, dout_208, dout_209, dout_210, dout_211, dout_212, dout_213, dout_214, dout_215, dout_216, dout_217, dout_218, dout_230, dout_231, dout_233, dout_234, dout_235, dout_236, dout_237, dout_238, dout_239, dout_240, dout_241, dout_242, dout_243, dout_244, dout_245, dout_246, dout_247, dout_248, dout_249, dout_250, dout_251, dout_252, dout_253, dout_254, dout_255, dout_256, dout_263, dout_264, dout_265, dout_266, dout_267, dout_268, dout_269, dout_270, dout_271, dout_272, dout_273, dout_274, dout_275, dout_276, dout_277, dout_278, dout_279, dout_280, dout_281, dout_282, dout_283, dout_284, dout_285, dout_286, dout_287, dout_288, dout_289, dout_290, dout_291, dout_292, dout_293, dout_294, dout_295, dout_296, dout_297, dout_298, dout_299, dout_306, dout_307, dout_308, dout_309, dout_310, dout_311, dout_312, dout_313, dout_314, dout_315, dout_316, dout_317, dout_318, dout_319, dout_353, dout_354, dout_364, dout_372, dout_380, dout_384, dout_385, dout_390, dout_391, dout_400, dout_403, dout_404, dout_405, dout_409, dout_411, dout_414, dout_425, dout_427, dout_428, dout_429, dout_433, dout_435, dout_437, dout_451, dout_453, dout_454, dout_456, dout_459, dout_462, dout_463, dout_464, dout_499, dout_500, dout_501, dout_502, dout_503, dout_504, dout_505;   int avg=0;

   dout_20=((B >> 4)&1)&((A >> 0)&1);
   dout_21=((B >> 5)&1)&((A >> 0)&1);
   dout_22=((B >> 6)&1)&((A >> 0)&1);
   dout_23=((B >> 7)&1)&((A >> 0)&1);
   dout_27=((B >> 2)&1)&((A >> 1)&1);
   dout_28=((B >> 4)&1)&((A >> 1)&1);
   dout_29=((B >> 5)&1)&((A >> 1)&1);
   dout_30=((B >> 6)&1)&((A >> 1)&1);
   dout_31=((B >> 7)&1)&((A >> 1)&1);
   dout_34=((B >> 2)&1)&((A >> 2)&1);
   dout_35=((B >> 3)&1)&((A >> 2)&1);
   dout_36=((B >> 4)&1)&((A >> 2)&1);
   dout_37=((B >> 5)&1)&((A >> 2)&1);
   dout_38=((B >> 6)&1)&((A >> 2)&1);
   dout_39=((B >> 7)&1)&((A >> 2)&1);
   dout_41=((B >> 1)&1)&((A >> 3)&1);
   dout_42=((B >> 2)&1)&((A >> 3)&1);
   dout_43=((B >> 3)&1)&((A >> 3)&1);
   dout_44=((B >> 4)&1)&((A >> 3)&1);
   dout_45=((B >> 5)&1)&((A >> 3)&1);
   dout_46=((B >> 6)&1)&((A >> 3)&1);
   dout_47=((B >> 7)&1)&((A >> 3)&1);
   dout_49=((B >> 1)&1)&((A >> 4)&1);
   dout_50=((B >> 2)&1)&((A >> 4)&1);
   dout_51=((B >> 3)&1)&((A >> 4)&1);
   dout_52=((B >> 4)&1)&((A >> 4)&1);
   dout_53=((B >> 5)&1)&((A >> 4)&1);
   dout_54=((B >> 6)&1)&((A >> 4)&1);
   dout_55=((B >> 7)&1)&((A >> 4)&1);
   dout_56=((B >> 0)&1)&((A >> 5)&1);
   dout_57=((B >> 1)&1)&((A >> 5)&1);
   dout_58=((B >> 2)&1)&((A >> 5)&1);
   dout_59=((B >> 3)&1)&((A >> 5)&1);
   dout_60=((B >> 4)&1)&((A >> 5)&1);
   dout_61=((B >> 5)&1)&((A >> 5)&1);
   dout_62=((B >> 6)&1)&((A >> 5)&1);
   dout_63=((B >> 7)&1)&((A >> 5)&1);
   dout_64=((B >> 0)&1)&((A >> 6)&1);
   dout_65=((B >> 1)&1)&((A >> 6)&1);
   dout_66=((B >> 2)&1)&((A >> 6)&1);
   dout_67=((B >> 3)&1)&((A >> 6)&1);
   dout_68=((B >> 4)&1)&((A >> 6)&1);
   dout_69=((B >> 5)&1)&((A >> 6)&1);
   dout_70=((B >> 6)&1)&((A >> 6)&1);
   dout_71=((B >> 7)&1)&((A >> 6)&1);
   dout_72=((B >> 0)&1)&((A >> 7)&1);
   dout_73=((B >> 1)&1)&((A >> 7)&1);
   dout_74=((B >> 2)&1)&((A >> 7)&1);
   dout_75=((B >> 3)&1)&((A >> 7)&1);
   dout_76=((B >> 4)&1)&((A >> 7)&1);
   dout_77=((B >> 5)&1)&((A >> 7)&1);
   dout_78=((B >> 6)&1)&((A >> 7)&1);
   dout_79=((B >> 7)&1)&((A >> 7)&1);
   dout_89=dout_42&((B >> 0)&1);
   dout_95=dout_20|dout_34;
   dout_97=dout_21|dout_28;
   dout_99=((B >> 1)&1)&((A >> 2)&1);
   dout_100=dout_97|dout_35;
   dout_102=dout_22^dout_29;
   dout_103=dout_22&dout_29;
   dout_104=dout_102&dout_36;
   dout_105=dout_102^dout_36;
   dout_106=dout_103|dout_104;
   dout_107=dout_23^dout_30;
   dout_108=dout_23&dout_30;
   dout_109=dout_107&dout_37;
   dout_110=dout_107^dout_37;
   dout_111=dout_108|dout_109;
   dout_112=dout_31&dout_38;
   dout_113=dout_31^dout_38;
   dout_116=dout_42|dout_49;
   dout_119=dout_116|dout_56;
   dout_121=dout_43^dout_50;
   dout_122=dout_43&dout_50;
   dout_123=dout_121&dout_57;
   dout_124=dout_121|dout_57;
   dout_125=dout_122|dout_123;
   dout_126=dout_44^dout_51;
   dout_127=dout_44&dout_51;
   dout_128=dout_126&dout_58;
   dout_129=dout_126^dout_58;
   dout_130=dout_127|dout_128;
   dout_131=dout_45^dout_52;
   dout_132=dout_45&dout_52;
   dout_133=dout_131&dout_59;
   dout_134=dout_131^dout_59;
   dout_135=dout_132|dout_133;
   dout_136=dout_46^dout_53;
   dout_137=dout_46&dout_53;
   dout_138=dout_136&dout_60;
   dout_139=dout_136^dout_60;
   dout_140=dout_137|dout_138;
   dout_141=dout_47^dout_54;
   dout_142=dout_47&dout_54;
   dout_143=dout_141&dout_61;
   dout_144=dout_141^dout_61;
   dout_145=dout_142|dout_143;
   dout_146=dout_55&dout_62;
   dout_147=dout_55^dout_62;
   dout_158=dout_95|dout_41;
   dout_163=dout_100|dout_119;
   dout_165=dout_105^dout_99;
   dout_166=dout_105&dout_99;
   dout_167=dout_165&dout_124;
   dout_168=dout_165^dout_124;
   dout_169=dout_166|dout_167;
   dout_170=dout_110^dout_106;
   dout_171=dout_110&dout_106;
   dout_172=dout_170&dout_129;
   dout_173=dout_170^dout_129;
   dout_174=dout_171|dout_172;
   dout_175=dout_113^dout_111;
   dout_176=dout_113&dout_111;
   dout_177=dout_175&dout_134;
   dout_178=dout_175^dout_134;
   dout_179=dout_176|dout_177;
   dout_180=dout_39^dout_112;
   dout_182=dout_180&dout_139;
   dout_183=dout_180^dout_139;
   dout_184=dout_112|dout_182;
   dout_185=dout_89^dout_64;
   dout_186=dout_89&((A >> 6)&1);
   dout_187=dout_125^dout_65;
   dout_188=dout_125&dout_65;
   dout_189=dout_187&dout_72;
   dout_190=dout_187^dout_72;
   dout_191=dout_188|dout_189;
   dout_192=dout_130^dout_66;
   dout_193=dout_130&dout_66;
   dout_194=dout_192&dout_73;
   dout_195=dout_192^dout_73;
   dout_196=dout_193|dout_194;
   dout_197=dout_135^dout_67;
   dout_198=dout_135&dout_67;
   dout_199=dout_197&dout_74;
   dout_200=dout_197^dout_74;
   dout_201=dout_198|dout_199;
   dout_202=dout_140^dout_68;
   dout_203=dout_140&dout_68;
   dout_204=dout_202&dout_75;
   dout_205=dout_202^dout_75;
   dout_206=dout_203|dout_204;
   dout_207=dout_145^dout_69;
   dout_208=dout_145&dout_69;
   dout_209=dout_207&dout_76;
   dout_210=dout_207^dout_76;
   dout_211=dout_208|dout_209;
   dout_212=dout_146^dout_70;
   dout_213=dout_146&((A >> 6)&1);
   dout_214=dout_212&dout_77;
   dout_215=dout_212^dout_77;
   dout_216=dout_213|dout_214;
   dout_217=dout_71&((A >> 7)&1);
   dout_218=dout_71^dout_78;
   dout_230=dout_168&dout_185;
   dout_231=dout_168|dout_185;
   dout_233=dout_173^dout_169;
   dout_234=dout_173&dout_169;
   dout_235=dout_233&dout_190;
   dout_236=dout_233^dout_190;
   dout_237=dout_234|dout_235;
   dout_238=dout_178^dout_174;
   dout_239=dout_178&dout_174;
   dout_240=dout_238&dout_195;
   dout_241=dout_238^dout_195;
   dout_242=dout_239|dout_240;
   dout_243=dout_183^dout_179;
   dout_244=dout_183&dout_179;
   dout_245=dout_243&dout_200;
   dout_246=dout_243^dout_200;
   dout_247=dout_244|dout_245;
   dout_248=dout_144^dout_184;
   dout_249=dout_144&dout_184;
   dout_250=dout_248&dout_205;
   dout_251=dout_248^dout_205;
   dout_252=dout_249|dout_250;
   dout_253=dout_147&dout_210;
   dout_254=dout_147^dout_210;
   dout_255=dout_63&dout_215;
   dout_256=dout_63^dout_215;
   dout_263=dout_236^dout_230;
   dout_264=dout_236&dout_230;
   dout_265=dout_263&dout_186;
   dout_266=dout_263^dout_186;
   dout_267=dout_264|dout_265;
   dout_268=dout_241^dout_237;
   dout_269=dout_241&dout_237;
   dout_270=dout_268&dout_191;
   dout_271=dout_268^dout_191;
   dout_272=dout_269|dout_270;
   dout_273=dout_246^dout_242;
   dout_274=dout_246&dout_242;
   dout_275=dout_273&dout_196;
   dout_276=dout_273^dout_196;
   dout_277=dout_274|dout_275;
   dout_278=dout_251^dout_247;
   dout_279=dout_251&dout_247;
   dout_280=dout_278&dout_201;
   dout_281=dout_278^dout_201;
   dout_282=dout_279|dout_280;
   dout_283=dout_254^dout_252;
   dout_284=dout_254&dout_252;
   dout_285=dout_283&dout_206;
   dout_286=dout_283^dout_206;
   dout_287=dout_284|dout_285;
   dout_288=dout_256^dout_253;
   dout_289=dout_256&dout_253;
   dout_290=dout_288&dout_211;
   dout_291=dout_288^dout_211;
   dout_292=dout_289|dout_290;
   dout_293=dout_218^dout_255;
   dout_294=dout_218&dout_255;
   dout_295=dout_293&dout_216;
   dout_296=dout_293^dout_216;
   dout_297=dout_294|dout_295;
   dout_298=((B >> 6)&1)&dout_217;
   dout_299=dout_79^dout_298;
   dout_306=dout_271^dout_267;
   dout_307=dout_271&dout_267;
   dout_308=dout_276^dout_272;
   dout_309=dout_276&dout_272;
   dout_310=dout_281^dout_277;
   dout_311=dout_281&dout_277;
   dout_312=dout_286^dout_282;
   dout_313=dout_286&dout_282;
   dout_314=dout_291^dout_287;
   dout_315=dout_291&dout_287;
   dout_316=dout_296^dout_292;
   dout_317=dout_296&dout_292;
   dout_318=dout_299^dout_297;
   dout_319=dout_299&dout_297;
   dout_353=dout_308&dout_307;
   dout_354=dout_309|dout_353;
   dout_364=dout_310&dout_354;
   dout_372=dout_311|dout_364;
   dout_380=dout_312&dout_364;
   dout_384=dout_312&dout_311;
   dout_385=dout_313|dout_384;
   dout_390=dout_385|dout_380;
   dout_391=dout_314&dout_312;
   dout_400=dout_391&dout_364;
   dout_403=dout_391&dout_311;
   dout_404=dout_314&dout_313;
   dout_405=dout_315|dout_404;
   dout_409=dout_405|dout_403;
   dout_411=dout_409|dout_400;
   dout_414=dout_316&dout_314;
   dout_425=dout_414&dout_380;
   dout_427=dout_414&dout_385;
   dout_428=dout_316&dout_315;
   dout_429=dout_317|dout_428;
   dout_433=dout_429|dout_427;
   dout_435=dout_433|dout_425;
   dout_437=dout_318&dout_414;
   dout_451=dout_437&dout_400;
   dout_453=dout_437&dout_384;
   dout_454=dout_437&dout_404;
   dout_456=dout_318&dout_429;
   dout_459=dout_453|dout_456;
   dout_462=dout_319|dout_454;
   dout_463=dout_459|dout_451;
   dout_464=dout_462|dout_463;
   dout_499=dout_308^dout_307;
   dout_500=dout_310^dout_354;
   dout_501=dout_312^dout_372;
   dout_502=dout_314^dout_390;
   dout_503=dout_316^dout_411;
   dout_504=dout_318^dout_435;
   dout_505=dout_298|dout_464;

   O = 0;
   O |= (0&1) << 0;
   O |= (dout_99&1) << 1;
   O |= (dout_354&1) << 2;
   O |= (dout_27&1) << 3;
   O |= (dout_158&1) << 4;
   O |= (dout_163&1) << 5;
   O |= (dout_231&1) << 6;
   O |= (dout_266&1) << 7;
   O |= (dout_306&1) << 8;
   O |= (dout_499&1) << 9;
   O |= (dout_500&1) << 10;
   O |= (dout_501&1) << 11;
   O |= (dout_502&1) << 12;
   O |= (dout_503&1) << 13;
   O |= (dout_504&1) << 14;
   O |= (dout_505&1) << 15;
   return O;
}
