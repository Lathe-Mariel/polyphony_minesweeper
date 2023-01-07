module LEDMatrixAB_m
  (
    input wire clk,
    input wire rst,
    input wire swA,
    input wire rotary_a,
    input wire rotary_b,
    input wire rotary2_a,
    input wire rotary2_b,
    input wire rotary_SW,
    output reg boardLED2 = 0,
    input wire quaterSecondCLK,
    output reg boardLED1 = 0,
    output reg [7:0] row = 0,
    output reg [7:0] col = 0,
    input wire swB,
    input wire rotary2_SW
  );

  //localparams
  localparam LEDMatrixAB_m_main_ci_b1_INIT = 0;
  localparam LEDMatrixAB_m_main_ci_b1_S1 = 1;
  localparam LEDMatrixAB_m_main_ci_b1_S2 = 2;
  localparam LEDMatrixAB_m_main_ci_b1_S3 = 3;
  localparam LEDMatrixAB_m_main_ci_b1_S4 = 4;
  localparam LEDMatrixAB_m_main_ci_b1_S5 = 5;
  localparam LEDMatrixAB_m_main_ci_b1_S6 = 6;
  localparam LEDMatrixAB_m_main_ci_b1_S7 = 7;
  localparam LEDMatrixAB_m_main_ci_b1_S8 = 8;
  localparam LEDMatrixAB_m_main_ci_b1_S9 = 9;
  localparam LEDMatrixAB_m_main_ci_b1_S10 = 10;
  localparam LEDMatrixAB_m_main_ci_b1_S11 = 11;
  localparam LEDMatrixAB_m_main_ci_b1_S12 = 12;
  localparam LEDMatrixAB_m_main_ci_b1_S13 = 13;
  localparam LEDMatrixAB_m_main_ci_b1_S14 = 14;
  localparam LEDMatrixAB_m_main_ci_b1_S15 = 15;
  localparam LEDMatrixAB_m_main_ci_b1_S16 = 16;
  localparam LEDMatrixAB_m_main_ci_b1_S17 = 17;
  localparam LEDMatrixAB_m_main_ci_b1_S18 = 18;
  localparam LEDMatrixAB_m_main_ci_b1_S19 = 19;
  localparam LEDMatrixAB_m_main_ci_b1_S20 = 20;
  localparam LEDMatrixAB_m_main_ci_b1_S21 = 21;
  localparam LEDMatrixAB_m_main_ci_b1_S22 = 22;
  localparam LEDMatrixAB_m_main_ci_b1_S23 = 23;
  localparam LEDMatrixAB_m_main_ci_b1_S24 = 24;
  localparam LEDMatrixAB_m_main_ci_b1_S25 = 25;
  localparam LEDMatrixAB_m_main_ci_b1_S26 = 26;
  localparam LEDMatrixAB_m_main_ci_b1_S27 = 27;
  localparam LEDMatrixAB_m_main_ci_b1_S28 = 28;
  localparam LEDMatrixAB_m_main_ci_b1_S29 = 29;
  localparam LEDMatrixAB_m_main_ci_b1_S30 = 30;
  localparam LEDMatrixAB_m_main_ci_b1_S31 = 31;
  localparam LEDMatrixAB_m_main_ci_b1_S32 = 32;
  localparam LEDMatrixAB_m_main_ci_b1_S33 = 33;
  localparam LEDMatrixAB_m_main_ci_b1_S34 = 34;
  localparam LEDMatrixAB_m_main_ci_b1_S35 = 35;
  localparam LEDMatrixAB_m_main_ci_b1_S36 = 36;
  localparam LEDMatrixAB_m_main_ci_b1_S37 = 37;
  localparam LEDMatrixAB_m_main_ci_b1_S38 = 38;
  localparam LEDMatrixAB_m_main_ci_b1_S39 = 39;
  localparam LEDMatrixAB_m_main_ci_b1_S40 = 40;
  localparam LEDMatrixAB_m_main_ci_b1_S41 = 41;
  localparam LEDMatrixAB_m_main_ci_b1_S42 = 42;
  localparam LEDMatrixAB_m_main_ci_b1_S43 = 43;
  localparam LEDMatrixAB_m_main_ci_b1_S44 = 44;
  localparam LEDMatrixAB_m_main_ci_b1_S45 = 45;
  localparam LEDMatrixAB_m_main_ci_b1_S46 = 46;
  localparam LEDMatrixAB_m_main_ci_b1_S47 = 47;
  localparam LEDMatrixAB_m_main_ci_b1_S48 = 48;
  localparam LEDMatrixAB_m_main_ci_b1_S49 = 49;
  localparam LEDMatrixAB_m_main_ci_b1_S50 = 50;
  localparam LEDMatrixAB_m_main_ci_b1_S51 = 51;
  localparam LEDMatrixAB_m_main_ci_b1_S52 = 52;
  localparam LEDMatrixAB_m_main_ci_b1_S53 = 53;
  localparam LEDMatrixAB_m_main_ci_b1_S54 = 54;
  localparam LEDMatrixAB_m_main_ci_b1_S55 = 55;
  localparam LEDMatrixAB_m_main_ci_b1_S56 = 56;
  localparam LEDMatrixAB_m_main_ci_b1_S57 = 57;
  localparam LEDMatrixAB_m_main_ci_b1_S58 = 58;
  localparam LEDMatrixAB_m_main_ci_b1_S59 = 59;
  localparam LEDMatrixAB_m_main_ci_b1_S60 = 60;
  localparam LEDMatrixAB_m_main_ci_b1_S61 = 61;
  localparam LEDMatrixAB_m_main_ci_b1_S62 = 62;
  localparam LEDMatrixAB_m_main_ci_b1_S63 = 63;
  localparam LEDMatrixAB_m_main_ci_b1_S64 = 64;
  localparam LEDMatrixAB_m_main_ci_b1_FINISH = 65;
  localparam LEDMatrixAB_m_main_ci_L1_while2_S0 = 66;
  localparam LEDMatrixAB_m_main_ci_L1_while2_S1 = 67;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen4_S0 = 68;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse45_S0 = 69;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen5_S0 = 70;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen5_S1 = 71;
  localparam LEDMatrixAB_m_main_ci_L1_b10_S0 = 72;
  localparam LEDMatrixAB_m_main_ci_L1_b10_S1 = 73;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen11_S0 = 74;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse44_S0 = 75;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse44_S1 = 76;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen12_S0 = 77;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen12_S1 = 78;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen13_S0 = 79;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen13_S1 = 80;
  localparam LEDMatrixAB_m_main_ci_L1_b14_S0 = 81;
  localparam LEDMatrixAB_m_main_ci_L1_b14_S1 = 82;
  localparam LEDMatrixAB_m_main_ci_L1_b15_S0 = 83;
  localparam LEDMatrixAB_m_main_ci_L1_b15_S1 = 84;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen16_S0 = 85;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse43_S0 = 86;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse43_S1 = 87;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen17_S0 = 88;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen17_S1 = 89;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen18_S0 = 90;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen18_S1 = 91;
  localparam LEDMatrixAB_m_main_ci_L1_b19_S0 = 92;
  localparam LEDMatrixAB_m_main_ci_L1_b19_S1 = 93;
  localparam LEDMatrixAB_m_main_ci_L1_b20_S0 = 94;
  localparam LEDMatrixAB_m_main_ci_L1_b20_S1 = 95;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen21_S0 = 96;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse42_S0 = 97;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse42_S1 = 98;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen22_S0 = 99;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen22_S1 = 100;
  localparam LEDMatrixAB_m_main_ci_L1_b23_S0 = 101;
  localparam LEDMatrixAB_m_main_ci_L1_b24_S0 = 102;
  localparam LEDMatrixAB_m_main_ci_L1_b24_S1 = 103;
  localparam LEDMatrixAB_m_main_ci_L1_b24_S2 = 104;
  localparam LEDMatrixAB_m_main_ci_L1_b24_S3 = 105;
  localparam LEDMatrixAB_m_main_ci_L1_b24_S4 = 106;
  localparam LEDMatrixAB_m_main_ci_L1_b24_S5 = 107;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen25_S0 = 108;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen25_S1 = 109;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse41_S0 = 110;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse41_S1 = 111;
  localparam LEDMatrixAB_m_main_ci_L1_b26_S0 = 112;
  localparam LEDMatrixAB_m_main_ci_L1_b26_S1 = 113;
  localparam LEDMatrixAB_m_main_ci_L1_b26_S2 = 114;
  localparam LEDMatrixAB_m_main_ci_L1_b26_S3 = 115;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen27_S0 = 116;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen27_S1 = 117;
  localparam LEDMatrixAB_m_main_ci_L1_b28_S0 = 118;
  localparam LEDMatrixAB_m_main_ci_L1_b28_S1 = 119;
  localparam LEDMatrixAB_m_main_ci_L1_b28_S2 = 120;
  localparam LEDMatrixAB_m_main_ci_L1_b28_S3 = 121;
  localparam LEDMatrixAB_m_main_ci_L1_b28_S4 = 122;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen29_S0 = 123;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen29_S1 = 124;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse40_S0 = 125;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse40_S1 = 126;
  localparam LEDMatrixAB_m_main_ci_L1_b30_S0 = 127;
  localparam LEDMatrixAB_m_main_ci_L1_b30_S1 = 128;
  localparam LEDMatrixAB_m_main_ci_L1_b30_S2 = 129;
  localparam LEDMatrixAB_m_main_ci_L1_forelse39_S0 = 130;
  localparam LEDMatrixAB_m_main_ci_L1_whilebridge9_S0 = 131;
  localparam LEDMatrixAB_m_main_ci_L1_whilebridge9_S1 = 132;
  localparam LEDMatrixAB_m_main_ci_L2_fortest31_S0 = 133;
  localparam LEDMatrixAB_m_main_ci_L2_forbody32_S0 = 134;
  localparam LEDMatrixAB_m_main_ci_L2_forbody32_S1 = 135;
  localparam LEDMatrixAB_m_main_ci_L2_forelse35_S0 = 136;
  localparam LEDMatrixAB_m_main_ci_L2_forelse35_S1 = 137;
  localparam LEDMatrixAB_m_main_ci_L2_forelse38_S0 = 138;
  localparam LEDMatrixAB_m_main_ci_L2_forelse38_S1 = 139;
  localparam LEDMatrixAB_m_main_ci_L3_fortest33_S0 = 140;
  localparam LEDMatrixAB_m_main_ci_L3_forbody34_S0 = 141;
  localparam LEDMatrixAB_m_main_ci_L3_forbody34_S1 = 142;
  localparam LEDMatrixAB_m_main_ci_L3_forbody34_S2 = 143;
  localparam LEDMatrixAB_m_main_ci_L3_forbody34_S3 = 144;
  localparam LEDMatrixAB_m_main_ci_L3_forbody34_S4 = 145;
  localparam LEDMatrixAB_m_main_ci_L4_fortest36_S0 = 146;
  localparam LEDMatrixAB_m_main_ci_L4_forbody37_S0 = 147;
  localparam LEDMatrixAB_m_main_ci_L4_forbody37_S1 = 148;
  localparam LEDMatrixAB_m_main_ci_L5_fortest6_S0 = 149;
  localparam LEDMatrixAB_m_main_ci_L5_forbody7_S0 = 150;
  localparam LEDMatrixAB_m_main_ci_L5_forbody7_S1 = 151;
  localparam LEDMatrixAB_m_main_ci_L5_forbody7_S2 = 152;
  
  //signals: 
  wire        [4:0] m_main_ci_antiChatter_RESET3;
  wire        [4:0] m_main_ci_antiChatter_RESET6;
  wire        [4:0] m_main_ci_antiChatter_RESET7;
  wire        [7:0] m_main_ci_antiChatter_RESW13;
  wire        [7:0] m_main_ci_antiChatter_RESW16;
  wire        [7:0] m_main_ci_antiChatter_RESW17;
  wire m_main_ci_c1188;
  wire m_main_ci_c1189;
  wire m_main_ci_c1190;
  wire m_main_ci_c1191;
  wire m_main_ci_c1192;
  wire m_main_ci_c1193;
  wire m_main_ci_c1194;
  wire m_main_ci_c1195;
  wire m_main_ci_c1196;
  wire m_main_ci_c1197;
  wire m_main_ci_c1198;
  wire m_main_ci_c1199;
  wire m_main_ci_c1200;
  wire m_main_ci_c1201;
  wire m_main_ci_c1202;
  wire m_main_ci_c1203;
  wire m_main_ci_c1204;
  wire m_main_ci_c1205;
  wire m_main_ci_c1206;
  wire m_main_ci_c1207;
  wire m_main_ci_c1208;
  wire m_main_ci_c1209;
  wire m_main_ci_c1210;
  wire m_main_ci_c1211;
  wire m_main_ci_c1212;
  wire m_main_ci_c1213;
  wire m_main_ci_c1214;
  wire m_main_ci_c1215;
  wire m_main_ci_c1216;
  wire m_main_ci_c1217;
  wire m_main_ci_c1218;
  wire m_main_ci_c1219;
  wire m_main_ci_c620_inl1;
  wire m_main_ci_c624;
  wire m_main_ci_c625;
  wire m_main_ci_c626;
  wire m_main_ci_c629;
  wire m_main_ci_c630;
  wire m_main_ci_c631;
  wire m_main_ci_c633;
  wire m_main_ci_c635;
  wire m_main_ci_c636;
  wire m_main_ci_c637;
  wire m_main_ci_c639;
  wire m_main_ci_c641;
  wire m_main_ci_c642;
  wire m_main_ci_c646;
  wire m_main_ci_c650;
  wire m_main_ci_c654;
  wire m_main_ci_c659;
  wire m_main_ci_c661;
  wire m_main_ci_c666;
  wire m_main_ci_c750;
  wire m_main_ci_c751;
  wire m_main_ci_c752;
  wire m_main_ci_c753;
  wire m_main_ci_c761;
  wire m_main_ci_c762;
  wire m_main_ci_c763;
  wire m_main_ci_c764;
  wire m_main_ci_c765;
  wire m_main_ci_c766;
  wire m_main_ci_c767;
  wire m_main_ci_c768;
  wire m_main_ci_c769;
  wire m_main_ci_c770;
  wire m_main_ci_c771;
  wire m_main_ci_c772;
  wire m_main_ci_c773;
  wire m_main_ci_c774;
  wire m_main_ci_c775;
  wire m_main_ci_c776;
  wire m_main_ci_c777;
  wire m_main_ci_c778;
  wire m_main_ci_c779;
  wire m_main_ci_c780;
  wire m_main_ci_c781;
  wire m_main_ci_c782;
  wire m_main_ci_c783;
  wire m_main_ci_c784;
  wire m_main_ci_c785;
  wire m_main_ci_c786;
  wire m_main_ci_c787;
  wire m_main_ci_c788;
  wire m_main_ci_c789;
  wire m_main_ci_c790;
  wire m_main_ci_c791;
  wire m_main_ci_c792;
  wire m_main_ci_c793;
  wire m_main_ci_c794;
  wire m_main_ci_c795;
  wire m_main_ci_c796;
  wire m_main_ci_c797;
  wire m_main_ci_c798;
  wire m_main_ci_c799;
  wire m_main_ci_c800;
  wire m_main_ci_c801;
  wire m_main_ci_c802;
  wire m_main_ci_c803;
  wire m_main_ci_c804;
  wire m_main_ci_c805;
  wire m_main_ci_c806;
  wire m_main_ci_c807;
  wire m_main_ci_c808;
  wire m_main_ci_c809;
  wire m_main_ci_c810;
  wire m_main_ci_c811;
  wire m_main_ci_c812;
  wire m_main_ci_c813;
  wire m_main_ci_c814;
  wire m_main_ci_c815;
  wire m_main_ci_c816;
  wire m_main_ci_c817;
  wire m_main_ci_c818;
  wire m_main_ci_c819;
  wire m_main_ci_c820;
  wire m_main_ci_c821;
  wire m_main_ci_c822;
  wire m_main_ci_c823;
  wire        [5:0] m_main_ci_cursor;
  wire        [2:0] m_main_ci_loopCounter3;
  wire        [2:0] m_main_ci_loopCounter4;
  wire m_main_ci_oldRE2_a7;
  wire m_main_ci_oldRE2_a8;
  wire m_main_ci_oldRE_a7;
  wire m_main_ci_oldRE_a8;
  wire        [2:0] m_main_ci_old_xvalue4;
  wire        [2:0] m_main_ci_old_yvalue4;
  wire        [5:0] m_main_ci_prev_Cursor;
  wire        [31:0] m_main_ci_t627;
  wire        [5:0] m_main_ci_t643;
  wire        [7:0] m_main_ci_t645;
  wire        [7:0] m_main_ci_t648;
  wire        [5:0] m_main_ci_t649;
  wire        [7:0] m_main_ci_t652;
  wire        [7:0] m_main_ci_t656;
  wire        [31:0] m_main_ci_t662;
  wire        [31:0] m_main_ci_t663;
  wire        [31:0] m_main_ci_t665;
  wire        [7:0] m_main_ci_t669;
  wire        [7:0] m_main_ci_t671;
  wire        [7:0] m_main_ci_t927;
  wire        [7:0] m_main_ci_untiChatter13;
  wire        [7:0] m_main_ci_untiChatter18;
  wire        [7:0] m_main_ci_untiChatter19;
  wire        [7:0] m_main_ci_untiChatter23;
  wire        [7:0] m_main_ci_untiChatter28;
  wire        [7:0] m_main_ci_untiChatter29;
  wire        [2:0] m_main_ci_xvalue3;
  wire        [2:0] m_main_ci_xvalue4;
  wire        [2:0] m_main_ci_xvalue5;
  wire        [2:0] m_main_ci_xvalue6;
  wire        [2:0] m_main_ci_xvalue7;
  wire        [2:0] m_main_ci_yvalue3;
  wire        [2:0] m_main_ci_yvalue4;
  wire        [2:0] m_main_ci_yvalue5;
  wire        [2:0] m_main_ci_yvalue6;
  wire        [2:0] m_main_ci_yvalue7;
  reg        [4:0] m_main_ci_antiChatter_RESET2;
  reg        [7:0] m_main_ci_antiChatter_RESW12;
  reg        [2:0] m_main_ci_loopCounter2;
  reg m_main_ci_oldRE2_a2;
  reg m_main_ci_oldRE2_a3;
  reg m_main_ci_oldRE2_a5;
  reg m_main_ci_oldRE2_a6;
  reg m_main_ci_oldRE_a2;
  reg m_main_ci_oldRE_a3;
  reg m_main_ci_oldRE_a5;
  reg m_main_ci_oldRE_a6;
  reg        [2:0] m_main_ci_old_xvalue2;
  reg        [2:0] m_main_ci_old_yvalue2;
  reg        [7:0] m_main_ci_state;
  reg m_main_ci_t623;
  reg m_main_ci_t628;
  reg m_main_ci_t632;
  reg m_main_ci_t634;
  reg m_main_ci_t638;
  reg m_main_ci_t640;
  reg        [7:0] m_main_ci_t644;
  reg        [7:0] m_main_ci_t647;
  reg        [7:0] m_main_ci_t651;
  reg m_main_ci_t653;
  reg        [7:0] m_main_ci_t655;
  reg m_main_ci_t657;
  reg        [7:0] m_main_ci_t664;
  reg        [7:0] m_main_ci_t668;
  reg        [7:0] m_main_ci_t670;
  reg        [7:0] m_main_ci_untiChatter12;
  reg        [7:0] m_main_ci_untiChatter22;
  reg        [2:0] m_main_ci_xvalue2;
  reg        [2:0] m_main_ci_yvalue2;
  wire signed [31:0] interval;
  wire signed [31:0] m_main_ci_counter6114;
  wire signed [31:0] m_main_ci_currentLine5;
  wire signed [31:0] m_main_ci_currentLine6;
  wire signed [31:0] m_main_ci_i4;
  wire signed [31:0] m_main_ci_i_inl15;
  wire signed [31:0] m_main_ci_j5;
  wire signed [31:0] m_main_ci_lightLevel;
  wire signed [31:0] m_main_ci_t616_inl1;
  wire signed [31:0] m_main_ci_t660;
  wire signed [31:0] m_main_ci_t667;
  reg signed [31:0] m_main_ci_counter6113;
  reg signed [31:0] m_main_ci_currentLine4;
  reg signed [31:0] m_main_ci_i3;
  reg signed [31:0] m_main_ci_i_inl14;
  reg signed [31:0] m_main_ci_j4;
  //signals: m_main_ci_frameBuffer
  wire        [6:0] m_main_ci_frameBuffer_len;
  wire        [7:0] m_main_ci_frameBuffer_q;
  reg        [6:0] m_main_ci_frameBuffer_addr;
  reg        [7:0] m_main_ci_frameBuffer_d;
  reg m_main_ci_frameBuffer_req;
  reg m_main_ci_frameBuffer_we;
  //signals: ram
  wire        [6:0] m_main_ci_array748_ram_addr;
  wire        [7:0] m_main_ci_array748_ram_d;
  wire        [6:0] m_main_ci_array748_ram_len;
  wire        [7:0] m_main_ci_array748_ram_q;
  wire m_main_ci_array748_ram_we;
  //combinations: 
  function [31:0] m_main_ci_unnamed610 (
    input [5:0] m_main_ci_unnamed610_in
  );
  begin
    case (m_main_ci_unnamed610_in)
      0: begin
        m_main_ci_unnamed610 = 0;
      end
      1: begin
        m_main_ci_unnamed610 = 1;
      end
      2: begin
        m_main_ci_unnamed610 = 1;
      end
      3: begin
        m_main_ci_unnamed610 = 2;
      end
      4: begin
        m_main_ci_unnamed610 = 2;
      end
      5: begin
        m_main_ci_unnamed610 = 2;
      end
      6: begin
        m_main_ci_unnamed610 = 3;
      end
      7: begin
        m_main_ci_unnamed610 = 3;
      end
      8: begin
        m_main_ci_unnamed610 = 3;
      end
      9: begin
        m_main_ci_unnamed610 = 3;
      end
      10: begin
        m_main_ci_unnamed610 = 4;
      end
      11: begin
        m_main_ci_unnamed610 = 4;
      end
      12: begin
        m_main_ci_unnamed610 = 4;
      end
      13: begin
        m_main_ci_unnamed610 = 4;
      end
      14: begin
        m_main_ci_unnamed610 = 4;
      end
      15: begin
        m_main_ci_unnamed610 = 5;
      end
      16: begin
        m_main_ci_unnamed610 = 6;
      end
      17: begin
        m_main_ci_unnamed610 = 7;
      end
      18: begin
        m_main_ci_unnamed610 = 8;
      end
      19: begin
        m_main_ci_unnamed610 = 15;
      end
    endcase
  end
  endfunction
  function [7:0] stageParam (
    input [6:0] stageParam_in
  );
  begin
    case (stageParam_in)
      0: begin
        stageParam = 35;
      end
      1: begin
        stageParam = 35;
      end
      2: begin
        stageParam = 35;
      end
      3: begin
        stageParam = 33;
      end
      4: begin
        stageParam = 33;
      end
      5: begin
        stageParam = 33;
      end
      6: begin
        stageParam = 33;
      end
      7: begin
        stageParam = 33;
      end
      8: begin
        stageParam = 35;
      end
      9: begin
        stageParam = 65;
      end
      10: begin
        stageParam = 37;
      end
      11: begin
        stageParam = 35;
      end
      12: begin
        stageParam = 33;
      end
      13: begin
        stageParam = 33;
      end
      14: begin
        stageParam = 33;
      end
      15: begin
        stageParam = 33;
      end
      16: begin
        stageParam = 35;
      end
      17: begin
        stageParam = 37;
      end
      18: begin
        stageParam = 65;
      end
      19: begin
        stageParam = 35;
      end
      20: begin
        stageParam = 33;
      end
      21: begin
        stageParam = 33;
      end
      22: begin
        stageParam = 33;
      end
      23: begin
        stageParam = 33;
      end
      24: begin
        stageParam = 33;
      end
      25: begin
        stageParam = 35;
      end
      26: begin
        stageParam = 37;
      end
      27: begin
        stageParam = 37;
      end
      28: begin
        stageParam = 35;
      end
      29: begin
        stageParam = 33;
      end
      30: begin
        stageParam = 33;
      end
      31: begin
        stageParam = 33;
      end
      32: begin
        stageParam = 33;
      end
      33: begin
        stageParam = 33;
      end
      34: begin
        stageParam = 35;
      end
      35: begin
        stageParam = 65;
      end
      36: begin
        stageParam = 35;
      end
      37: begin
        stageParam = 33;
      end
      38: begin
        stageParam = 33;
      end
      39: begin
        stageParam = 33;
      end
      40: begin
        stageParam = 33;
      end
      41: begin
        stageParam = 33;
      end
      42: begin
        stageParam = 35;
      end
      43: begin
        stageParam = 35;
      end
      44: begin
        stageParam = 35;
      end
      45: begin
        stageParam = 33;
      end
      46: begin
        stageParam = 35;
      end
      47: begin
        stageParam = 35;
      end
      48: begin
        stageParam = 33;
      end
      49: begin
        stageParam = 33;
      end
      50: begin
        stageParam = 33;
      end
      51: begin
        stageParam = 33;
      end
      52: begin
        stageParam = 33;
      end
      53: begin
        stageParam = 33;
      end
      54: begin
        stageParam = 35;
      end
      55: begin
        stageParam = 65;
      end
      56: begin
        stageParam = 33;
      end
      57: begin
        stageParam = 33;
      end
      58: begin
        stageParam = 33;
      end
      59: begin
        stageParam = 33;
      end
      60: begin
        stageParam = 33;
      end
      61: begin
        stageParam = 33;
      end
      62: begin
        stageParam = 35;
      end
      63: begin
        stageParam = 35;
      end
    endcase
  end
  endfunction
  assign interval = 300;
  assign m_main_ci_antiChatter_RESET3 = (m_main_ci_antiChatter_RESET2 + 1);
  assign m_main_ci_antiChatter_RESET6 = (m_main_ci_c624 && !m_main_ci_c625) ? m_main_ci_antiChatter_RESET3 : m_main_ci_c761 ? 0 : 'bz;
  assign m_main_ci_antiChatter_RESET7 = m_main_ci_c762 ? 11 : m_main_ci_c818 ? m_main_ci_antiChatter_RESET6 : 'bz;
  assign m_main_ci_antiChatter_RESW13 = (m_main_ci_antiChatter_RESW12 + 1);
  assign m_main_ci_antiChatter_RESW16 = m_main_ci_c781 ? m_main_ci_t927 : m_main_ci_c782 ? 0 : 'bz;
  assign m_main_ci_antiChatter_RESW17 = m_main_ci_c762 ? m_main_ci_antiChatter_RESW12 : m_main_ci_c818 ? m_main_ci_antiChatter_RESW16 : 'bz;
  assign m_main_ci_c1188 = !m_main_ci_c624;
  assign m_main_ci_c1189 = (m_main_ci_c624 && m_main_ci_c625);
  assign m_main_ci_c1190 = (m_main_ci_c624 && !m_main_ci_c625);
  assign m_main_ci_c1191 = ((m_main_ci_c1190 || m_main_ci_c1188) && m_main_ci_c629);
  assign m_main_ci_c1192 = ((m_main_ci_c1190 || m_main_ci_c1188) && !m_main_ci_c629);
  assign m_main_ci_c1193 = (m_main_ci_c1189 && m_main_ci_c626);
  assign m_main_ci_c1194 = (m_main_ci_c1191 && m_main_ci_c630);
  assign m_main_ci_c1195 = (m_main_ci_c1194 && m_main_ci_c631);
  assign m_main_ci_c1196 = ((m_main_ci_c1194 && m_main_ci_c750) || (m_main_ci_c1194 && m_main_ci_c751));
  assign m_main_ci_c1197 = (m_main_ci_c1191 && !m_main_ci_c630);
  assign m_main_ci_c1198 = (m_main_ci_c1196 || m_main_ci_c1195);
  assign m_main_ci_c1199 = (((m_main_ci_c1197 || m_main_ci_c1192) || m_main_ci_c1198) && m_main_ci_c635);
  assign m_main_ci_c1200 = (((m_main_ci_c1197 || m_main_ci_c1192) || m_main_ci_c1198) && !m_main_ci_c635);
  assign m_main_ci_c1201 = (m_main_ci_c1199 && m_main_ci_c636);
  assign m_main_ci_c1202 = (m_main_ci_c1201 && m_main_ci_c637);
  assign m_main_ci_c1203 = ((m_main_ci_c1201 && m_main_ci_c752) || (m_main_ci_c1201 && m_main_ci_c753));
  assign m_main_ci_c1204 = (m_main_ci_c1199 && !m_main_ci_c636);
  assign m_main_ci_c1205 = (m_main_ci_c1203 || m_main_ci_c1202);
  assign m_main_ci_c1206 = (((m_main_ci_c1200 || m_main_ci_c1204) || m_main_ci_c1205) && m_main_ci_c641);
  assign m_main_ci_c1207 = (((m_main_ci_c1200 || m_main_ci_c1204) || m_main_ci_c1205) && !m_main_ci_c641);
  assign m_main_ci_c1208 = (m_main_ci_c1206 && m_main_ci_c642);
  assign m_main_ci_c1209 = (m_main_ci_c1206 && !m_main_ci_c642);
  assign m_main_ci_c1210 = (m_main_ci_c1209 || m_main_ci_c1208);
  assign m_main_ci_c1211 = ((m_main_ci_c1207 || m_main_ci_c1210) && m_main_ci_c646);
  assign m_main_ci_c1212 = ((m_main_ci_c1207 || m_main_ci_c1210) && !m_main_ci_c646);
  assign m_main_ci_c1213 = ((m_main_ci_c1211 || m_main_ci_c1212) && m_main_ci_c650);
  assign m_main_ci_c1214 = ((m_main_ci_c1211 || m_main_ci_c1212) && !m_main_ci_c650);
  assign m_main_ci_c1215 = ((m_main_ci_c1214 || m_main_ci_c1213) && m_main_ci_c654);
  assign m_main_ci_c1216 = ((m_main_ci_c1214 || m_main_ci_c1213) && !m_main_ci_c654);
  assign m_main_ci_c1217 = ((m_main_ci_c1215 || m_main_ci_c1216) && m_main_ci_c659);
  assign m_main_ci_c1218 = (m_main_ci_c1217 && m_main_ci_c661);
  assign m_main_ci_c1219 = (m_main_ci_c1217 && m_main_ci_c620_inl1);
  assign m_main_ci_c620_inl1 = (m_main_ci_i_inl14 < m_main_ci_t616_inl1);
  assign m_main_ci_c624 = (m_main_ci_t623 == 0);
  assign m_main_ci_c625 = (m_main_ci_antiChatter_RESET3 > 10);
  assign m_main_ci_c626 = (m_main_ci_i3 < 64);
  assign m_main_ci_c629 = (m_main_ci_oldRE_a2 != m_main_ci_t628);
  assign m_main_ci_c630 = (m_main_ci_untiChatter13 > 14);
  assign m_main_ci_c631 = (m_main_ci_oldRE_a2 != 0);
  assign m_main_ci_c633 = (m_main_ci_t632 != 0);
  assign m_main_ci_c635 = (m_main_ci_oldRE2_a2 != m_main_ci_t634);
  assign m_main_ci_c636 = (m_main_ci_untiChatter23 > 14);
  assign m_main_ci_c637 = (m_main_ci_oldRE2_a2 != 0);
  assign m_main_ci_c639 = (m_main_ci_t638 != 0);
  assign m_main_ci_c641 = (m_main_ci_t640 == 0);
  assign m_main_ci_c642 = (m_main_ci_antiChatter_RESW13 > 10);
  assign m_main_ci_c646 = (m_main_ci_t645 != 0);
  assign m_main_ci_c650 = (m_main_ci_antiChatter_RESW16 > 10);
  assign m_main_ci_c654 = (m_main_ci_t653 != 0);
  assign m_main_ci_c659 = (m_main_ci_counter6113 < 20);
  assign m_main_ci_c661 = (m_main_ci_j4 < 8);
  assign m_main_ci_c666 = (m_main_ci_t665 > m_main_ci_lightLevel);
  assign m_main_ci_c750 = (!m_main_ci_c631 && m_main_ci_c633);
  assign m_main_ci_c751 = (!m_main_ci_c631 && !m_main_ci_c633);
  assign m_main_ci_c752 = (!m_main_ci_c637 && m_main_ci_c639);
  assign m_main_ci_c753 = (!m_main_ci_c637 && !m_main_ci_c639);
  assign m_main_ci_c761 = !m_main_ci_c624;
  assign m_main_ci_c762 = (m_main_ci_c624 && m_main_ci_c625);
  assign m_main_ci_c763 = (m_main_ci_c624 && !m_main_ci_c625);
  assign m_main_ci_c764 = (m_main_ci_c796 && m_main_ci_c629);
  assign m_main_ci_c765 = (m_main_ci_c823 && !m_main_ci_c629);
  assign m_main_ci_c766 = (m_main_ci_c762 && m_main_ci_c626);
  assign m_main_ci_c767 = (m_main_ci_c764 && m_main_ci_c630);
  assign m_main_ci_c768 = (m_main_ci_c767 && m_main_ci_c631);
  assign m_main_ci_c769 = (m_main_ci_c767 && m_main_ci_c750);
  assign m_main_ci_c770 = (m_main_ci_c767 && m_main_ci_c751);
  assign m_main_ci_c771 = (m_main_ci_c764 && !m_main_ci_c630);
  assign m_main_ci_c772 = (m_main_ci_c797 || m_main_ci_c770);
  assign m_main_ci_c773 = (m_main_ci_c801 && m_main_ci_c635);
  assign m_main_ci_c774 = (m_main_ci_c822 && !m_main_ci_c635);
  assign m_main_ci_c775 = (m_main_ci_c773 && m_main_ci_c636);
  assign m_main_ci_c776 = (m_main_ci_c775 && m_main_ci_c637);
  assign m_main_ci_c777 = (m_main_ci_c775 && m_main_ci_c752);
  assign m_main_ci_c778 = (m_main_ci_c775 && m_main_ci_c753);
  assign m_main_ci_c779 = (m_main_ci_c773 && !m_main_ci_c636);
  assign m_main_ci_c780 = (m_main_ci_c802 || m_main_ci_c777);
  assign m_main_ci_c781 = (m_main_ci_c806 && m_main_ci_c641);
  assign m_main_ci_c782 = (m_main_ci_c821 && !m_main_ci_c641);
  assign m_main_ci_c783 = (m_main_ci_c781 && m_main_ci_c642);
  assign m_main_ci_c784 = (m_main_ci_c781 && !m_main_ci_c642);
  assign m_main_ci_c785 = (m_main_ci_c809 && m_main_ci_c646);
  assign m_main_ci_c786 = (m_main_ci_c820 && !m_main_ci_c646);
  assign m_main_ci_c787 = (m_main_ci_c811 && m_main_ci_c650);
  assign m_main_ci_c788 = (m_main_ci_c812 && !m_main_ci_c650);
  assign m_main_ci_c789 = (m_main_ci_c814 && m_main_ci_c654);
  assign m_main_ci_c790 = (m_main_ci_c819 && !m_main_ci_c654);
  assign m_main_ci_c791 = (m_main_ci_c817 && m_main_ci_c659);
  assign m_main_ci_c792 = (m_main_ci_c791 && m_main_ci_c661);
  assign m_main_ci_c793 = (m_main_ci_c792 && m_main_ci_c666);
  assign m_main_ci_c794 = (m_main_ci_c791 && m_main_ci_c620_inl1);
  assign m_main_ci_c795 = (m_main_ci_c761 || m_main_ci_c763);
  assign m_main_ci_c796 = (m_main_ci_c761 || m_main_ci_c763);
  assign m_main_ci_c797 = (m_main_ci_c768 || m_main_ci_c769);
  assign m_main_ci_c798 = (m_main_ci_c797 || m_main_ci_c770);
  assign m_main_ci_c799 = (m_main_ci_c771 || m_main_ci_c765);
  assign m_main_ci_c800 = (m_main_ci_c799 || m_main_ci_c772);
  assign m_main_ci_c801 = (m_main_ci_c799 || m_main_ci_c772);
  assign m_main_ci_c802 = (m_main_ci_c778 || m_main_ci_c776);
  assign m_main_ci_c803 = (m_main_ci_c802 || m_main_ci_c777);
  assign m_main_ci_c804 = (m_main_ci_c779 || m_main_ci_c774);
  assign m_main_ci_c805 = (m_main_ci_c804 || m_main_ci_c780);
  assign m_main_ci_c806 = (m_main_ci_c804 || m_main_ci_c780);
  assign m_main_ci_c807 = (m_main_ci_c782 || m_main_ci_c784);
  assign m_main_ci_c808 = (m_main_ci_c807 || m_main_ci_c783);
  assign m_main_ci_c809 = (m_main_ci_c807 || m_main_ci_c783);
  assign m_main_ci_c810 = (m_main_ci_c786 || m_main_ci_c785);
  assign m_main_ci_c811 = (m_main_ci_c786 || m_main_ci_c785);
  assign m_main_ci_c812 = (m_main_ci_c786 || m_main_ci_c785);
  assign m_main_ci_c813 = (m_main_ci_c788 || m_main_ci_c787);
  assign m_main_ci_c814 = (m_main_ci_c788 || m_main_ci_c787);
  assign m_main_ci_c815 = (m_main_ci_c789 || m_main_ci_c790);
  assign m_main_ci_c816 = (m_main_ci_c789 || m_main_ci_c790);
  assign m_main_ci_c817 = (m_main_ci_c789 || m_main_ci_c790);
  assign m_main_ci_c818 = (m_main_ci_c789 || m_main_ci_c790);
  assign m_main_ci_c819 = (m_main_ci_c788 || m_main_ci_c787);
  assign m_main_ci_c820 = (m_main_ci_c807 || m_main_ci_c783);
  assign m_main_ci_c821 = (m_main_ci_c804 || m_main_ci_c780);
  assign m_main_ci_c822 = (m_main_ci_c799 || m_main_ci_c772);
  assign m_main_ci_c823 = (m_main_ci_c761 || m_main_ci_c763);
  assign m_main_ci_counter6114 = (m_main_ci_counter6113 + 1);
  assign m_main_ci_currentLine5 = (m_main_ci_currentLine4 | m_main_ci_t667);
  assign m_main_ci_currentLine6 = m_main_ci_c793 ? m_main_ci_currentLine5 : (m_main_ci_c792 && !m_main_ci_c666) ? m_main_ci_currentLine4 : 'bz;
  assign m_main_ci_cursor = (m_main_ci_t649 + m_main_ci_yvalue6);
  assign m_main_ci_i4 = (m_main_ci_i3 + 1);
  assign m_main_ci_i_inl15 = (m_main_ci_i_inl14 + 1);
  assign m_main_ci_j5 = (m_main_ci_j4 + 1);
  assign m_main_ci_lightLevel = m_main_ci_unnamed610(m_main_ci_counter6113);
  assign m_main_ci_loopCounter3 = (m_main_ci_loopCounter2 + 1);
  assign m_main_ci_loopCounter4 = m_main_ci_c762 ? m_main_ci_loopCounter2 : m_main_ci_c818 ? m_main_ci_loopCounter3 : 'bz;
  assign m_main_ci_oldRE2_a7 = m_main_ci_c803 ? m_main_ci_oldRE2_a5 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_oldRE2_a2 : m_main_ci_c774 ? m_main_ci_oldRE2_a6 : 'bz;
  assign m_main_ci_oldRE2_a8 = m_main_ci_c762 ? m_main_ci_oldRE2_a2 : m_main_ci_c818 ? m_main_ci_oldRE2_a7 : 'bz;
  assign m_main_ci_oldRE_a7 = m_main_ci_c798 ? m_main_ci_oldRE_a5 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_oldRE_a2 : m_main_ci_c765 ? m_main_ci_oldRE_a6 : 'bz;
  assign m_main_ci_oldRE_a8 = m_main_ci_c762 ? m_main_ci_oldRE_a2 : m_main_ci_c818 ? m_main_ci_oldRE_a7 : 'bz;
  assign m_main_ci_old_xvalue4 = m_main_ci_c762 ? m_main_ci_old_xvalue2 : m_main_ci_c818 ? m_main_ci_xvalue6 : 'bz;
  assign m_main_ci_old_yvalue4 = m_main_ci_c762 ? m_main_ci_old_yvalue2 : m_main_ci_c818 ? m_main_ci_yvalue6 : 'bz;
  assign m_main_ci_prev_Cursor = (m_main_ci_t643 + m_main_ci_old_yvalue2);
  assign m_main_ci_t616_inl1 = (interval / 2);
  assign m_main_ci_t627 = stageParam(m_main_ci_i3);
  assign m_main_ci_t643 = (m_main_ci_old_xvalue2 * 8);
  assign m_main_ci_t645 = (m_main_ci_t644 & 1);
  assign m_main_ci_t648 = (m_main_ci_t647 | 32);
  assign m_main_ci_t649 = (m_main_ci_xvalue6 * 8);
  assign m_main_ci_t652 = (m_main_ci_t651 & 62);
  assign m_main_ci_t656 = (m_main_ci_t655 & 31);
  assign m_main_ci_t660 = (1 << m_main_ci_loopCounter2);
  assign m_main_ci_t662 = (m_main_ci_loopCounter2 * 8);
  assign m_main_ci_t663 = (m_main_ci_t662 + m_main_ci_j4);
  assign m_main_ci_t665 = (m_main_ci_t664 >>> 1);
  assign m_main_ci_t667 = (128 >>> m_main_ci_j4);
  assign m_main_ci_t669 = (m_main_ci_t668 | 32);
  assign m_main_ci_t671 = (m_main_ci_t670 & 31);
  assign m_main_ci_t927 = m_main_ci_c783 ? 11 : (m_main_ci_c781 && !m_main_ci_c642) ? m_main_ci_antiChatter_RESW13 : 'bz;
  assign m_main_ci_untiChatter13 = (m_main_ci_untiChatter12 + 1);
  assign m_main_ci_untiChatter18 = m_main_ci_c798 ? 0 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_untiChatter13 : m_main_ci_c765 ? 0 : 'bz;
  assign m_main_ci_untiChatter19 = m_main_ci_c762 ? m_main_ci_untiChatter12 : m_main_ci_c818 ? m_main_ci_untiChatter18 : 'bz;
  assign m_main_ci_untiChatter23 = (m_main_ci_untiChatter22 + 1);
  assign m_main_ci_untiChatter28 = m_main_ci_c803 ? 0 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_untiChatter23 : m_main_ci_c774 ? 0 : 'bz;
  assign m_main_ci_untiChatter29 = m_main_ci_c762 ? m_main_ci_untiChatter22 : m_main_ci_c818 ? m_main_ci_untiChatter28 : 'bz;
  assign m_main_ci_xvalue3 = (m_main_ci_xvalue2 - 1);
  assign m_main_ci_xvalue4 = (m_main_ci_xvalue2 + 1);
  assign m_main_ci_xvalue5 = m_main_ci_c768 ? m_main_ci_xvalue2 : m_main_ci_c769 ? m_main_ci_xvalue3 : m_main_ci_c770 ? m_main_ci_xvalue4 : 'bz;
  assign m_main_ci_xvalue6 = m_main_ci_c798 ? m_main_ci_xvalue5 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_xvalue2 : m_main_ci_c765 ? m_main_ci_xvalue2 : 'bz;
  assign m_main_ci_xvalue7 = m_main_ci_c762 ? m_main_ci_xvalue2 : m_main_ci_c818 ? m_main_ci_xvalue6 : 'bz;
  assign m_main_ci_yvalue3 = (m_main_ci_yvalue2 + 1);
  assign m_main_ci_yvalue4 = (m_main_ci_yvalue2 - 1);
  assign m_main_ci_yvalue5 = m_main_ci_c776 ? m_main_ci_yvalue2 : m_main_ci_c777 ? m_main_ci_yvalue3 : m_main_ci_c778 ? m_main_ci_yvalue4 : 'bz;
  assign m_main_ci_yvalue6 = m_main_ci_c803 ? m_main_ci_yvalue5 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_yvalue2 : m_main_ci_c774 ? m_main_ci_yvalue2 : 'bz;
  assign m_main_ci_yvalue7 = m_main_ci_c762 ? m_main_ci_yvalue2 : m_main_ci_c818 ? m_main_ci_yvalue6 : 'bz;
  //combinations: m_main_ci_array748
  assign m_main_ci_array748_ram_addr = m_main_ci_frameBuffer_addr;
  assign m_main_ci_array748_ram_d = m_main_ci_frameBuffer_d;
  assign m_main_ci_array748_ram_we = m_main_ci_frameBuffer_we;
  assign m_main_ci_frameBuffer_len = m_main_ci_array748_ram_len;
  assign m_main_ci_frameBuffer_q = m_main_ci_array748_ram_q;
  //sub modules
  //m_main_ci_array748 instance
  BidirectionalSinglePortRam#(
    .DATA_WIDTH(8),
    .ADDR_WIDTH(7),
    .RAM_LENGTH(64)
    )
    m_main_ci_array748(
      .clk(clk),
      .rst(rst),
      .ram_addr(m_main_ci_array748_ram_addr),
      .ram_d(m_main_ci_array748_ram_d),
      .ram_we(m_main_ci_array748_ram_we),
      .ram_q(m_main_ci_array748_ram_q),
      .ram_len(m_main_ci_array748_ram_len)
    );
  
  
  always @(posedge clk) begin
    if (rst) begin
      boardLED1 <= 0;
      boardLED2 <= 0;
      col <= 0;
      m_main_ci_antiChatter_RESET2 <= 0;
      m_main_ci_antiChatter_RESW12 <= 0;
      m_main_ci_counter6113 <= 0;
      m_main_ci_currentLine4 <= 0;
      m_main_ci_frameBuffer_addr <= 0;
      m_main_ci_frameBuffer_d <= 0;
      m_main_ci_frameBuffer_req <= 0;
      m_main_ci_frameBuffer_we <= 0;
      m_main_ci_i3 <= 0;
      m_main_ci_i_inl14 <= 0;
      m_main_ci_j4 <= 0;
      m_main_ci_loopCounter2 <= 0;
      m_main_ci_oldRE2_a2 <= 0;
      m_main_ci_oldRE2_a3 <= 0;
      m_main_ci_oldRE2_a5 <= 0;
      m_main_ci_oldRE2_a6 <= 0;
      m_main_ci_oldRE_a2 <= 0;
      m_main_ci_oldRE_a3 <= 0;
      m_main_ci_oldRE_a5 <= 0;
      m_main_ci_oldRE_a6 <= 0;
      m_main_ci_old_xvalue2 <= 0;
      m_main_ci_old_yvalue2 <= 0;
      m_main_ci_t623 <= 0;
      m_main_ci_t628 <= 0;
      m_main_ci_t632 <= 0;
      m_main_ci_t634 <= 0;
      m_main_ci_t638 <= 0;
      m_main_ci_t640 <= 0;
      m_main_ci_t644 <= 0;
      m_main_ci_t647 <= 0;
      m_main_ci_t651 <= 0;
      m_main_ci_t653 <= 0;
      m_main_ci_t655 <= 0;
      m_main_ci_t657 <= 0;
      m_main_ci_t664 <= 0;
      m_main_ci_t668 <= 0;
      m_main_ci_t670 <= 0;
      m_main_ci_untiChatter12 <= 0;
      m_main_ci_untiChatter22 <= 0;
      m_main_ci_xvalue2 <= 0;
      m_main_ci_yvalue2 <= 0;
      row <= 0;
      m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_INIT;
    end else begin //if (rst)
      case(m_main_ci_state)
      LEDMatrixAB_m_main_ci_b1_INIT: begin
        m_main_ci_frameBuffer_addr <= 0;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_antiChatter_RESET2 <= 0;
        m_main_ci_antiChatter_RESW12 <= 0;
        m_main_ci_loopCounter2 <= 0;
        m_main_ci_oldRE2_a2 <= 0;
        m_main_ci_oldRE_a2 <= 0;
        m_main_ci_old_xvalue2 <= 0;
        m_main_ci_old_yvalue2 <= 0;
        m_main_ci_untiChatter12 <= 0;
        m_main_ci_untiChatter22 <= 0;
        m_main_ci_xvalue2 <= 0;
        m_main_ci_yvalue2 <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S1;
      end
      LEDMatrixAB_m_main_ci_b1_S1: begin
        m_main_ci_frameBuffer_addr <= 1;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S2;
      end
      LEDMatrixAB_m_main_ci_b1_S2: begin
        m_main_ci_frameBuffer_addr <= 2;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S3;
      end
      LEDMatrixAB_m_main_ci_b1_S3: begin
        m_main_ci_frameBuffer_addr <= 3;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S4;
      end
      LEDMatrixAB_m_main_ci_b1_S4: begin
        m_main_ci_frameBuffer_addr <= 4;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S5;
      end
      LEDMatrixAB_m_main_ci_b1_S5: begin
        m_main_ci_frameBuffer_addr <= 5;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S6;
      end
      LEDMatrixAB_m_main_ci_b1_S6: begin
        m_main_ci_frameBuffer_addr <= 6;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S7;
      end
      LEDMatrixAB_m_main_ci_b1_S7: begin
        m_main_ci_frameBuffer_addr <= 7;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S8;
      end
      LEDMatrixAB_m_main_ci_b1_S8: begin
        m_main_ci_frameBuffer_addr <= 8;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S9;
      end
      LEDMatrixAB_m_main_ci_b1_S9: begin
        m_main_ci_frameBuffer_addr <= 9;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 65;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S10;
      end
      LEDMatrixAB_m_main_ci_b1_S10: begin
        m_main_ci_frameBuffer_addr <= 10;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 37;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S11;
      end
      LEDMatrixAB_m_main_ci_b1_S11: begin
        m_main_ci_frameBuffer_addr <= 11;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S12;
      end
      LEDMatrixAB_m_main_ci_b1_S12: begin
        m_main_ci_frameBuffer_addr <= 12;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S13;
      end
      LEDMatrixAB_m_main_ci_b1_S13: begin
        m_main_ci_frameBuffer_addr <= 13;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S14;
      end
      LEDMatrixAB_m_main_ci_b1_S14: begin
        m_main_ci_frameBuffer_addr <= 14;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S15;
      end
      LEDMatrixAB_m_main_ci_b1_S15: begin
        m_main_ci_frameBuffer_addr <= 15;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S16;
      end
      LEDMatrixAB_m_main_ci_b1_S16: begin
        m_main_ci_frameBuffer_addr <= 16;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S17;
      end
      LEDMatrixAB_m_main_ci_b1_S17: begin
        m_main_ci_frameBuffer_addr <= 17;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 37;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S18;
      end
      LEDMatrixAB_m_main_ci_b1_S18: begin
        m_main_ci_frameBuffer_addr <= 18;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 65;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S19;
      end
      LEDMatrixAB_m_main_ci_b1_S19: begin
        m_main_ci_frameBuffer_addr <= 19;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S20;
      end
      LEDMatrixAB_m_main_ci_b1_S20: begin
        m_main_ci_frameBuffer_addr <= 20;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S21;
      end
      LEDMatrixAB_m_main_ci_b1_S21: begin
        m_main_ci_frameBuffer_addr <= 21;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S22;
      end
      LEDMatrixAB_m_main_ci_b1_S22: begin
        m_main_ci_frameBuffer_addr <= 22;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S23;
      end
      LEDMatrixAB_m_main_ci_b1_S23: begin
        m_main_ci_frameBuffer_addr <= 23;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S24;
      end
      LEDMatrixAB_m_main_ci_b1_S24: begin
        m_main_ci_frameBuffer_addr <= 24;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S25;
      end
      LEDMatrixAB_m_main_ci_b1_S25: begin
        m_main_ci_frameBuffer_addr <= 25;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S26;
      end
      LEDMatrixAB_m_main_ci_b1_S26: begin
        m_main_ci_frameBuffer_addr <= 26;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 37;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S27;
      end
      LEDMatrixAB_m_main_ci_b1_S27: begin
        m_main_ci_frameBuffer_addr <= 27;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 37;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S28;
      end
      LEDMatrixAB_m_main_ci_b1_S28: begin
        m_main_ci_frameBuffer_addr <= 28;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S29;
      end
      LEDMatrixAB_m_main_ci_b1_S29: begin
        m_main_ci_frameBuffer_addr <= 29;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S30;
      end
      LEDMatrixAB_m_main_ci_b1_S30: begin
        m_main_ci_frameBuffer_addr <= 30;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S31;
      end
      LEDMatrixAB_m_main_ci_b1_S31: begin
        m_main_ci_frameBuffer_addr <= 31;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S32;
      end
      LEDMatrixAB_m_main_ci_b1_S32: begin
        m_main_ci_frameBuffer_addr <= 32;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S33;
      end
      LEDMatrixAB_m_main_ci_b1_S33: begin
        m_main_ci_frameBuffer_addr <= 33;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S34;
      end
      LEDMatrixAB_m_main_ci_b1_S34: begin
        m_main_ci_frameBuffer_addr <= 34;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S35;
      end
      LEDMatrixAB_m_main_ci_b1_S35: begin
        m_main_ci_frameBuffer_addr <= 35;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 65;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S36;
      end
      LEDMatrixAB_m_main_ci_b1_S36: begin
        m_main_ci_frameBuffer_addr <= 36;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S37;
      end
      LEDMatrixAB_m_main_ci_b1_S37: begin
        m_main_ci_frameBuffer_addr <= 37;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S38;
      end
      LEDMatrixAB_m_main_ci_b1_S38: begin
        m_main_ci_frameBuffer_addr <= 38;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S39;
      end
      LEDMatrixAB_m_main_ci_b1_S39: begin
        m_main_ci_frameBuffer_addr <= 39;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S40;
      end
      LEDMatrixAB_m_main_ci_b1_S40: begin
        m_main_ci_frameBuffer_addr <= 40;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S41;
      end
      LEDMatrixAB_m_main_ci_b1_S41: begin
        m_main_ci_frameBuffer_addr <= 41;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S42;
      end
      LEDMatrixAB_m_main_ci_b1_S42: begin
        m_main_ci_frameBuffer_addr <= 42;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S43;
      end
      LEDMatrixAB_m_main_ci_b1_S43: begin
        m_main_ci_frameBuffer_addr <= 43;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S44;
      end
      LEDMatrixAB_m_main_ci_b1_S44: begin
        m_main_ci_frameBuffer_addr <= 44;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S45;
      end
      LEDMatrixAB_m_main_ci_b1_S45: begin
        m_main_ci_frameBuffer_addr <= 45;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S46;
      end
      LEDMatrixAB_m_main_ci_b1_S46: begin
        m_main_ci_frameBuffer_addr <= 46;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S47;
      end
      LEDMatrixAB_m_main_ci_b1_S47: begin
        m_main_ci_frameBuffer_addr <= 47;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S48;
      end
      LEDMatrixAB_m_main_ci_b1_S48: begin
        m_main_ci_frameBuffer_addr <= 48;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S49;
      end
      LEDMatrixAB_m_main_ci_b1_S49: begin
        m_main_ci_frameBuffer_addr <= 49;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S50;
      end
      LEDMatrixAB_m_main_ci_b1_S50: begin
        m_main_ci_frameBuffer_addr <= 50;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S51;
      end
      LEDMatrixAB_m_main_ci_b1_S51: begin
        m_main_ci_frameBuffer_addr <= 51;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S52;
      end
      LEDMatrixAB_m_main_ci_b1_S52: begin
        m_main_ci_frameBuffer_addr <= 52;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S53;
      end
      LEDMatrixAB_m_main_ci_b1_S53: begin
        m_main_ci_frameBuffer_addr <= 53;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S54;
      end
      LEDMatrixAB_m_main_ci_b1_S54: begin
        m_main_ci_frameBuffer_addr <= 54;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S55;
      end
      LEDMatrixAB_m_main_ci_b1_S55: begin
        m_main_ci_frameBuffer_addr <= 55;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 65;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S56;
      end
      LEDMatrixAB_m_main_ci_b1_S56: begin
        m_main_ci_frameBuffer_addr <= 56;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S57;
      end
      LEDMatrixAB_m_main_ci_b1_S57: begin
        m_main_ci_frameBuffer_addr <= 57;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S58;
      end
      LEDMatrixAB_m_main_ci_b1_S58: begin
        m_main_ci_frameBuffer_addr <= 58;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S59;
      end
      LEDMatrixAB_m_main_ci_b1_S59: begin
        m_main_ci_frameBuffer_addr <= 59;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S60;
      end
      LEDMatrixAB_m_main_ci_b1_S60: begin
        m_main_ci_frameBuffer_addr <= 60;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S61;
      end
      LEDMatrixAB_m_main_ci_b1_S61: begin
        m_main_ci_frameBuffer_addr <= 61;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S62;
      end
      LEDMatrixAB_m_main_ci_b1_S62: begin
        m_main_ci_frameBuffer_addr <= 62;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S63;
      end
      LEDMatrixAB_m_main_ci_b1_S63: begin
        m_main_ci_frameBuffer_addr <= 63;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 35;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S64;
      end
      LEDMatrixAB_m_main_ci_b1_S64: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_while2_S0;
      end
      LEDMatrixAB_m_main_ci_L1_while2_S0: begin
        m_main_ci_t623 <= swA;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_while2_S1;
      end
      LEDMatrixAB_m_main_ci_L1_while2_S1: begin
        /* m_main_ci_c624 <= (m_main_ci_t623 == 0); */
        if (m_main_ci_c624) begin
          /* m_main_ci_antiChatter_RESET3 <= (m_main_ci_antiChatter_RESET2 + 1); */
          /* m_main_ci_c625 <= (m_main_ci_antiChatter_RESET3 > 10); */
          if (m_main_ci_c625) begin
            m_main_ci_i3 <= 0;
            /* m_main_ci_c1189 <= (m_main_ci_c624 && m_main_ci_c625); */
            /* m_main_ci_c762 <= (m_main_ci_c624 && m_main_ci_c625); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L5_fortest6_S0;
          end else begin
            m_main_ci_t628 <= rotary_a;
            /* m_main_ci_c1190 <= (m_main_ci_c624 && !m_main_ci_c625); */
            /* m_main_ci_c763 <= (m_main_ci_c624 && !m_main_ci_c625); */
            /* m_main_ci_antiChatter_RESET6 <= (m_main_ci_c624 && !m_main_ci_c625) ? m_main_ci_antiChatter_RESET3 : m_main_ci_c761 ? 0 : 'bz; */
            /* m_main_ci_c795 <= (m_main_ci_c761 || m_main_ci_c763); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b10_S1;
          end
        end else begin
          /* m_main_ci_c1188 <= !m_main_ci_c624; */
          /* m_main_ci_c761 <= !m_main_ci_c624; */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b10_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b10_S0: begin
        m_main_ci_t628 <= rotary_a;
        /* m_main_ci_c1190 <= (m_main_ci_c624 && !m_main_ci_c625); */
        /* m_main_ci_c763 <= (m_main_ci_c624 && !m_main_ci_c625); */
        /* m_main_ci_antiChatter_RESET6 <= (m_main_ci_c624 && !m_main_ci_c625) ? m_main_ci_antiChatter_RESET3 : m_main_ci_c761 ? 0 : 'bz; */
        /* m_main_ci_c795 <= (m_main_ci_c761 || m_main_ci_c763); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b10_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b10_S1: begin
        /* m_main_ci_c629 <= (m_main_ci_oldRE_a2 != m_main_ci_t628); */
        if (m_main_ci_c629) begin
          /* m_main_ci_untiChatter13 <= (m_main_ci_untiChatter12 + 1); */
          /* m_main_ci_c630 <= (m_main_ci_untiChatter13 > 14); */
          /* m_main_ci_c1191 <= ((m_main_ci_c1190 || m_main_ci_c1188) && m_main_ci_c629); */
          /* m_main_ci_c796 <= (m_main_ci_c761 || m_main_ci_c763); */
          /* m_main_ci_c764 <= (m_main_ci_c796 && m_main_ci_c629); */
          if (m_main_ci_c630) begin
            m_main_ci_t632 <= rotary_b;
            /* m_main_ci_c631 <= (m_main_ci_oldRE_a2 != 0); */
            /* m_main_ci_xvalue3 <= (m_main_ci_xvalue2 - 1); */
            /* m_main_ci_xvalue4 <= (m_main_ci_xvalue2 + 1); */
            /* m_main_ci_c1194 <= (m_main_ci_c1191 && m_main_ci_c630); */
            /* m_main_ci_c767 <= (m_main_ci_c764 && m_main_ci_c630); */
            /* m_main_ci_c768 <= (m_main_ci_c767 && m_main_ci_c631); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen12_S1;
          end else begin
            m_main_ci_t634 <= rotary2_a;
            /* m_main_ci_c1197 <= (m_main_ci_c1191 && !m_main_ci_c630); */
            /* m_main_ci_c771 <= (m_main_ci_c764 && !m_main_ci_c630); */
            /* m_main_ci_c1198 <= (m_main_ci_c1196 || m_main_ci_c1195); */
            /* m_main_ci_c799 <= (m_main_ci_c771 || m_main_ci_c765); */
            /* m_main_ci_c772 <= (m_main_ci_c797 || m_main_ci_c770); */
            /* m_main_ci_oldRE_a7 <= m_main_ci_c798 ? m_main_ci_oldRE_a5 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_oldRE_a2 : m_main_ci_c765 ? m_main_ci_oldRE_a6 : 'bz; */
            /* m_main_ci_untiChatter18 <= m_main_ci_c798 ? 0 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_untiChatter13 : m_main_ci_c765 ? 0 : 'bz; */
            /* m_main_ci_xvalue6 <= m_main_ci_c798 ? m_main_ci_xvalue5 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_xvalue2 : m_main_ci_c765 ? m_main_ci_xvalue2 : 'bz; */
            /* m_main_ci_c800 <= (m_main_ci_c799 || m_main_ci_c772); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S1;
          end
        end else begin
          m_main_ci_oldRE_a6 <= rotary_a;
          /* m_main_ci_c1192 <= ((m_main_ci_c1190 || m_main_ci_c1188) && !m_main_ci_c629); */
          /* m_main_ci_c823 <= (m_main_ci_c761 || m_main_ci_c763); */
          /* m_main_ci_c765 <= (m_main_ci_c823 && !m_main_ci_c629); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen12_S1: begin
        /* m_main_ci_c633 <= (m_main_ci_t632 != 0); */
        /* m_main_ci_c750 <= (!m_main_ci_c631 && m_main_ci_c633); */
        /* m_main_ci_c751 <= (!m_main_ci_c631 && !m_main_ci_c633); */
        /* m_main_ci_c769 <= (m_main_ci_c767 && m_main_ci_c750); */
        /* m_main_ci_c770 <= (m_main_ci_c767 && m_main_ci_c751); */
        if (m_main_ci_c631) begin
          m_main_ci_oldRE_a3 <= rotary_a;
          /* m_main_ci_c1195 <= (m_main_ci_c1194 && m_main_ci_c631); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b14_S0;
        end else if (m_main_ci_c750) begin
          m_main_ci_oldRE_a5 <= rotary_a;
          /* m_main_ci_c1196 <= ((m_main_ci_c1194 && m_main_ci_c750) || (m_main_ci_c1194 && m_main_ci_c751)); */
          /* m_main_ci_xvalue5 <= m_main_ci_c768 ? m_main_ci_xvalue2 : m_main_ci_c769 ? m_main_ci_xvalue3 : m_main_ci_c770 ? m_main_ci_xvalue4 : 'bz; */
          /* m_main_ci_c797 <= (m_main_ci_c768 || m_main_ci_c769); */
          /* m_main_ci_c798 <= (m_main_ci_c797 || m_main_ci_c770); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b14_S1;
        end else if (m_main_ci_c751) begin
          m_main_ci_oldRE_a5 <= rotary_a;
          /* m_main_ci_c1196 <= ((m_main_ci_c1194 && m_main_ci_c750) || (m_main_ci_c1194 && m_main_ci_c751)); */
          /* m_main_ci_xvalue5 <= m_main_ci_c768 ? m_main_ci_xvalue2 : m_main_ci_c769 ? m_main_ci_xvalue3 : m_main_ci_c770 ? m_main_ci_xvalue4 : 'bz; */
          /* m_main_ci_c797 <= (m_main_ci_c768 || m_main_ci_c769); */
          /* m_main_ci_c798 <= (m_main_ci_c797 || m_main_ci_c770); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b14_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b14_S0: begin
        m_main_ci_oldRE_a5 <= rotary_a;
        /* m_main_ci_c1196 <= ((m_main_ci_c1194 && m_main_ci_c750) || (m_main_ci_c1194 && m_main_ci_c751)); */
        /* m_main_ci_xvalue5 <= m_main_ci_c768 ? m_main_ci_xvalue2 : m_main_ci_c769 ? m_main_ci_xvalue3 : m_main_ci_c770 ? m_main_ci_xvalue4 : 'bz; */
        /* m_main_ci_c797 <= (m_main_ci_c768 || m_main_ci_c769); */
        /* m_main_ci_c798 <= (m_main_ci_c797 || m_main_ci_c770); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b14_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b14_S1: begin
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b15_S0: begin
        m_main_ci_t634 <= rotary2_a;
        /* m_main_ci_c1197 <= (m_main_ci_c1191 && !m_main_ci_c630); */
        /* m_main_ci_c771 <= (m_main_ci_c764 && !m_main_ci_c630); */
        /* m_main_ci_c1198 <= (m_main_ci_c1196 || m_main_ci_c1195); */
        /* m_main_ci_c799 <= (m_main_ci_c771 || m_main_ci_c765); */
        /* m_main_ci_c772 <= (m_main_ci_c797 || m_main_ci_c770); */
        /* m_main_ci_oldRE_a7 <= m_main_ci_c798 ? m_main_ci_oldRE_a5 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_oldRE_a2 : m_main_ci_c765 ? m_main_ci_oldRE_a6 : 'bz; */
        /* m_main_ci_untiChatter18 <= m_main_ci_c798 ? 0 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_untiChatter13 : m_main_ci_c765 ? 0 : 'bz; */
        /* m_main_ci_xvalue6 <= m_main_ci_c798 ? m_main_ci_xvalue5 : (m_main_ci_c764 && !m_main_ci_c630) ? m_main_ci_xvalue2 : m_main_ci_c765 ? m_main_ci_xvalue2 : 'bz; */
        /* m_main_ci_c800 <= (m_main_ci_c799 || m_main_ci_c772); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b15_S1: begin
        /* m_main_ci_c635 <= (m_main_ci_oldRE2_a2 != m_main_ci_t634); */
        if (m_main_ci_c635) begin
          /* m_main_ci_untiChatter23 <= (m_main_ci_untiChatter22 + 1); */
          /* m_main_ci_c636 <= (m_main_ci_untiChatter23 > 14); */
          /* m_main_ci_c1199 <= (((m_main_ci_c1197 || m_main_ci_c1192) || m_main_ci_c1198) && m_main_ci_c635); */
          /* m_main_ci_c801 <= (m_main_ci_c799 || m_main_ci_c772); */
          /* m_main_ci_c773 <= (m_main_ci_c801 && m_main_ci_c635); */
          if (m_main_ci_c636) begin
            m_main_ci_t638 <= rotary2_b;
            /* m_main_ci_c637 <= (m_main_ci_oldRE2_a2 != 0); */
            /* m_main_ci_yvalue3 <= (m_main_ci_yvalue2 + 1); */
            /* m_main_ci_yvalue4 <= (m_main_ci_yvalue2 - 1); */
            /* m_main_ci_c1201 <= (m_main_ci_c1199 && m_main_ci_c636); */
            /* m_main_ci_c775 <= (m_main_ci_c773 && m_main_ci_c636); */
            /* m_main_ci_c776 <= (m_main_ci_c775 && m_main_ci_c637); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen17_S1;
          end else begin
            m_main_ci_t640 <= rotary_SW;
            /* m_main_ci_c1204 <= (m_main_ci_c1199 && !m_main_ci_c636); */
            /* m_main_ci_c1205 <= (m_main_ci_c1203 || m_main_ci_c1202); */
            /* m_main_ci_c779 <= (m_main_ci_c773 && !m_main_ci_c636); */
            /* m_main_ci_c804 <= (m_main_ci_c779 || m_main_ci_c774); */
            /* m_main_ci_c780 <= (m_main_ci_c802 || m_main_ci_c777); */
            /* m_main_ci_oldRE2_a7 <= m_main_ci_c803 ? m_main_ci_oldRE2_a5 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_oldRE2_a2 : m_main_ci_c774 ? m_main_ci_oldRE2_a6 : 'bz; */
            /* m_main_ci_untiChatter28 <= m_main_ci_c803 ? 0 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_untiChatter23 : m_main_ci_c774 ? 0 : 'bz; */
            /* m_main_ci_yvalue6 <= m_main_ci_c803 ? m_main_ci_yvalue5 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_yvalue2 : m_main_ci_c774 ? m_main_ci_yvalue2 : 'bz; */
            /* m_main_ci_c805 <= (m_main_ci_c804 || m_main_ci_c780); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b20_S1;
          end
        end else begin
          m_main_ci_oldRE2_a6 <= rotary2_a;
          /* m_main_ci_c1200 <= (((m_main_ci_c1197 || m_main_ci_c1192) || m_main_ci_c1198) && !m_main_ci_c635); */
          /* m_main_ci_c822 <= (m_main_ci_c799 || m_main_ci_c772); */
          /* m_main_ci_c774 <= (m_main_ci_c822 && !m_main_ci_c635); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b20_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen17_S1: begin
        /* m_main_ci_c639 <= (m_main_ci_t638 != 0); */
        /* m_main_ci_c752 <= (!m_main_ci_c637 && m_main_ci_c639); */
        /* m_main_ci_c753 <= (!m_main_ci_c637 && !m_main_ci_c639); */
        /* m_main_ci_c777 <= (m_main_ci_c775 && m_main_ci_c752); */
        /* m_main_ci_c778 <= (m_main_ci_c775 && m_main_ci_c753); */
        if (m_main_ci_c637) begin
          m_main_ci_oldRE2_a3 <= rotary2_a;
          /* m_main_ci_c1202 <= (m_main_ci_c1201 && m_main_ci_c637); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b19_S0;
        end else if (m_main_ci_c752) begin
          m_main_ci_oldRE2_a5 <= rotary2_a;
          /* m_main_ci_c1203 <= ((m_main_ci_c1201 && m_main_ci_c752) || (m_main_ci_c1201 && m_main_ci_c753)); */
          /* m_main_ci_yvalue5 <= m_main_ci_c776 ? m_main_ci_yvalue2 : m_main_ci_c777 ? m_main_ci_yvalue3 : m_main_ci_c778 ? m_main_ci_yvalue4 : 'bz; */
          /* m_main_ci_c802 <= (m_main_ci_c778 || m_main_ci_c776); */
          /* m_main_ci_c803 <= (m_main_ci_c802 || m_main_ci_c777); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b19_S1;
        end else if (m_main_ci_c753) begin
          m_main_ci_oldRE2_a5 <= rotary2_a;
          /* m_main_ci_c1203 <= ((m_main_ci_c1201 && m_main_ci_c752) || (m_main_ci_c1201 && m_main_ci_c753)); */
          /* m_main_ci_yvalue5 <= m_main_ci_c776 ? m_main_ci_yvalue2 : m_main_ci_c777 ? m_main_ci_yvalue3 : m_main_ci_c778 ? m_main_ci_yvalue4 : 'bz; */
          /* m_main_ci_c802 <= (m_main_ci_c778 || m_main_ci_c776); */
          /* m_main_ci_c803 <= (m_main_ci_c802 || m_main_ci_c777); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b19_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b19_S0: begin
        m_main_ci_oldRE2_a5 <= rotary2_a;
        /* m_main_ci_c1203 <= ((m_main_ci_c1201 && m_main_ci_c752) || (m_main_ci_c1201 && m_main_ci_c753)); */
        /* m_main_ci_yvalue5 <= m_main_ci_c776 ? m_main_ci_yvalue2 : m_main_ci_c777 ? m_main_ci_yvalue3 : m_main_ci_c778 ? m_main_ci_yvalue4 : 'bz; */
        /* m_main_ci_c802 <= (m_main_ci_c778 || m_main_ci_c776); */
        /* m_main_ci_c803 <= (m_main_ci_c802 || m_main_ci_c777); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b19_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b19_S1: begin
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b20_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b20_S0: begin
        m_main_ci_t640 <= rotary_SW;
        /* m_main_ci_c1204 <= (m_main_ci_c1199 && !m_main_ci_c636); */
        /* m_main_ci_c1205 <= (m_main_ci_c1203 || m_main_ci_c1202); */
        /* m_main_ci_c779 <= (m_main_ci_c773 && !m_main_ci_c636); */
        /* m_main_ci_c804 <= (m_main_ci_c779 || m_main_ci_c774); */
        /* m_main_ci_c780 <= (m_main_ci_c802 || m_main_ci_c777); */
        /* m_main_ci_oldRE2_a7 <= m_main_ci_c803 ? m_main_ci_oldRE2_a5 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_oldRE2_a2 : m_main_ci_c774 ? m_main_ci_oldRE2_a6 : 'bz; */
        /* m_main_ci_untiChatter28 <= m_main_ci_c803 ? 0 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_untiChatter23 : m_main_ci_c774 ? 0 : 'bz; */
        /* m_main_ci_yvalue6 <= m_main_ci_c803 ? m_main_ci_yvalue5 : (m_main_ci_c773 && !m_main_ci_c636) ? m_main_ci_yvalue2 : m_main_ci_c774 ? m_main_ci_yvalue2 : 'bz; */
        /* m_main_ci_c805 <= (m_main_ci_c804 || m_main_ci_c780); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b20_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b20_S1: begin
        /* m_main_ci_c641 <= (m_main_ci_t640 == 0); */
        if (m_main_ci_c641) begin
          /* m_main_ci_antiChatter_RESW13 <= (m_main_ci_antiChatter_RESW12 + 1); */
          /* m_main_ci_c642 <= (m_main_ci_antiChatter_RESW13 > 10); */
          /* m_main_ci_c1206 <= (((m_main_ci_c1200 || m_main_ci_c1204) || m_main_ci_c1205) && m_main_ci_c641); */
          /* m_main_ci_c806 <= (m_main_ci_c804 || m_main_ci_c780); */
          /* m_main_ci_c781 <= (m_main_ci_c806 && m_main_ci_c641); */
          /* m_main_ci_c783 <= (m_main_ci_c781 && m_main_ci_c642); */
          if (m_main_ci_c642) begin
            boardLED2 <= 1;
            /* m_main_ci_c1208 <= (m_main_ci_c1206 && m_main_ci_c642); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b23_S0;
          end else begin
            /* m_main_ci_c1209 <= (m_main_ci_c1206 && !m_main_ci_c642); */
            /* m_main_ci_t927 <= m_main_ci_c783 ? 11 : (m_main_ci_c781 && !m_main_ci_c642) ? m_main_ci_antiChatter_RESW13 : 'bz; */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b24_S0;
          end
        end else begin
          boardLED2 <= 0;
          /* m_main_ci_c1207 <= (((m_main_ci_c1200 || m_main_ci_c1204) || m_main_ci_c1205) && !m_main_ci_c641); */
          /* m_main_ci_c821 <= (m_main_ci_c804 || m_main_ci_c780); */
          /* m_main_ci_c782 <= (m_main_ci_c821 && !m_main_ci_c641); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b24_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b23_S0: begin
        /* m_main_ci_c1209 <= (m_main_ci_c1206 && !m_main_ci_c642); */
        /* m_main_ci_t927 <= m_main_ci_c783 ? 11 : (m_main_ci_c781 && !m_main_ci_c642) ? m_main_ci_antiChatter_RESW13 : 'bz; */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b24_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b24_S0: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /* m_main_ci_t643 <= (m_main_ci_old_xvalue2 * 8); */
        /* m_main_ci_prev_Cursor <= (m_main_ci_t643 + m_main_ci_old_yvalue2); */
        /* m_main_ci_c1210 <= (m_main_ci_c1209 || m_main_ci_c1208); */
        /* m_main_ci_c784 <= (m_main_ci_c781 && !m_main_ci_c642); */
        /* m_main_ci_c807 <= (m_main_ci_c782 || m_main_ci_c784); */
        /* m_main_ci_antiChatter_RESW16 <= m_main_ci_c781 ? m_main_ci_t927 : m_main_ci_c782 ? 0 : 'bz; */
        /* m_main_ci_c808 <= (m_main_ci_c807 || m_main_ci_c783); */
        /* m_main_ci_c809 <= (m_main_ci_c807 || m_main_ci_c783); */
        /* m_main_ci_c820 <= (m_main_ci_c807 || m_main_ci_c783); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b24_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b24_S1: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b24_S2;
      end
      LEDMatrixAB_m_main_ci_L1_b24_S2: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t644 <= m_main_ci_frameBuffer_q;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b24_S3;
      end
      LEDMatrixAB_m_main_ci_L1_b24_S3: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t647 <= m_main_ci_frameBuffer_q;
        /* m_main_ci_t645 <= (m_main_ci_t644 & 1); */
        /* m_main_ci_c646 <= (m_main_ci_t645 != 0); */
        /* m_main_ci_c785 <= (m_main_ci_c809 && m_main_ci_c646); */
        /* m_main_ci_c786 <= (m_main_ci_c820 && !m_main_ci_c646); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b24_S4;
      end
      LEDMatrixAB_m_main_ci_L1_b24_S4: begin
        m_main_ci_t670 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        /* m_main_ci_t648 <= (m_main_ci_t647 | 32); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b24_S5;
      end
      LEDMatrixAB_m_main_ci_L1_b24_S5: begin
        /* m_main_ci_t671 <= (m_main_ci_t670 & 31); */
        if (m_main_ci_c646) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t648;
          /* m_main_ci_c1211 <= ((m_main_ci_c1207 || m_main_ci_c1210) && m_main_ci_c646); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen25_S1;
        end else begin
          m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t671;
          /* m_main_ci_c1212 <= ((m_main_ci_c1207 || m_main_ci_c1210) && !m_main_ci_c646); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifelse41_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen25_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b26_S0;
      end
      LEDMatrixAB_m_main_ci_L1_ifelse41_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b26_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b26_S0: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /* m_main_ci_t649 <= (m_main_ci_xvalue6 * 8); */
        /* m_main_ci_cursor <= (m_main_ci_t649 + m_main_ci_yvalue6); */
        /* m_main_ci_c650 <= (m_main_ci_antiChatter_RESW16 > 10); */
        /* m_main_ci_c810 <= (m_main_ci_c786 || m_main_ci_c785); */
        /* m_main_ci_c811 <= (m_main_ci_c786 || m_main_ci_c785); */
        /* m_main_ci_c787 <= (m_main_ci_c811 && m_main_ci_c650); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b26_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b26_S1: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b26_S2;
      end
      LEDMatrixAB_m_main_ci_L1_b26_S2: begin
        m_main_ci_t651 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b26_S3;
      end
      LEDMatrixAB_m_main_ci_L1_b26_S3: begin
        /* m_main_ci_t652 <= (m_main_ci_t651 & 62); */
        if (m_main_ci_c650) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t652;
          /* m_main_ci_c1213 <= ((m_main_ci_c1211 || m_main_ci_c1212) && m_main_ci_c650); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen27_S1;
        end else begin
          m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
          m_main_ci_frameBuffer_we <= 0;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_t653 <= quaterSecondCLK;
          /* m_main_ci_c1214 <= ((m_main_ci_c1211 || m_main_ci_c1212) && !m_main_ci_c650); */
          /* m_main_ci_c812 <= (m_main_ci_c786 || m_main_ci_c785); */
          /* m_main_ci_c788 <= (m_main_ci_c812 && !m_main_ci_c650); */
          /* m_main_ci_c813 <= (m_main_ci_c788 || m_main_ci_c787); */
          /* m_main_ci_c814 <= (m_main_ci_c788 || m_main_ci_c787); */
          /* m_main_ci_c819 <= (m_main_ci_c788 || m_main_ci_c787); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b28_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen27_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b28_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b28_S0: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_t653 <= quaterSecondCLK;
        /* m_main_ci_c1214 <= ((m_main_ci_c1211 || m_main_ci_c1212) && !m_main_ci_c650); */
        /* m_main_ci_c812 <= (m_main_ci_c786 || m_main_ci_c785); */
        /* m_main_ci_c788 <= (m_main_ci_c812 && !m_main_ci_c650); */
        /* m_main_ci_c813 <= (m_main_ci_c788 || m_main_ci_c787); */
        /* m_main_ci_c814 <= (m_main_ci_c788 || m_main_ci_c787); */
        /* m_main_ci_c819 <= (m_main_ci_c788 || m_main_ci_c787); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b28_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b28_S1: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        /* m_main_ci_c654 <= (m_main_ci_t653 != 0); */
        /* m_main_ci_c789 <= (m_main_ci_c814 && m_main_ci_c654); */
        /* m_main_ci_c790 <= (m_main_ci_c819 && !m_main_ci_c654); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b28_S2;
      end
      LEDMatrixAB_m_main_ci_L1_b28_S2: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t655 <= m_main_ci_frameBuffer_q;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b28_S3;
      end
      LEDMatrixAB_m_main_ci_L1_b28_S3: begin
        m_main_ci_t668 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        /* m_main_ci_t656 <= (m_main_ci_t655 & 31); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b28_S4;
      end
      LEDMatrixAB_m_main_ci_L1_b28_S4: begin
        /* m_main_ci_t669 <= (m_main_ci_t668 | 32); */
        if (m_main_ci_c654) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t656;
          /* m_main_ci_c1215 <= ((m_main_ci_c1214 || m_main_ci_c1213) && m_main_ci_c654); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen29_S1;
        end else begin
          m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t669;
          /* m_main_ci_c1216 <= ((m_main_ci_c1214 || m_main_ci_c1213) && !m_main_ci_c654); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifelse40_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen29_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b30_S0;
      end
      LEDMatrixAB_m_main_ci_L1_ifelse40_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b30_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b30_S0: begin
        m_main_ci_t657 <= quaterSecondCLK;
        m_main_ci_counter6113 <= 0;
        /* m_main_ci_c815 <= (m_main_ci_c789 || m_main_ci_c790); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b30_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b30_S1: begin
        boardLED1 <= m_main_ci_t657;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L2_fortest31_S0;
      end
      LEDMatrixAB_m_main_ci_L1_whilebridge9_S0: begin
        /* m_main_ci_antiChatter_RESET7 <= m_main_ci_c762 ? 11 : m_main_ci_c818 ? m_main_ci_antiChatter_RESET6 : 'bz; */
        /* m_main_ci_antiChatter_RESW17 <= m_main_ci_c762 ? m_main_ci_antiChatter_RESW12 : m_main_ci_c818 ? m_main_ci_antiChatter_RESW16 : 'bz; */
        /* m_main_ci_loopCounter4 <= m_main_ci_c762 ? m_main_ci_loopCounter2 : m_main_ci_c818 ? m_main_ci_loopCounter3 : 'bz; */
        /* m_main_ci_oldRE2_a8 <= m_main_ci_c762 ? m_main_ci_oldRE2_a2 : m_main_ci_c818 ? m_main_ci_oldRE2_a7 : 'bz; */
        /* m_main_ci_oldRE_a8 <= m_main_ci_c762 ? m_main_ci_oldRE_a2 : m_main_ci_c818 ? m_main_ci_oldRE_a7 : 'bz; */
        /* m_main_ci_old_xvalue4 <= m_main_ci_c762 ? m_main_ci_old_xvalue2 : m_main_ci_c818 ? m_main_ci_xvalue6 : 'bz; */
        /* m_main_ci_old_yvalue4 <= m_main_ci_c762 ? m_main_ci_old_yvalue2 : m_main_ci_c818 ? m_main_ci_yvalue6 : 'bz; */
        /* m_main_ci_untiChatter19 <= m_main_ci_c762 ? m_main_ci_untiChatter12 : m_main_ci_c818 ? m_main_ci_untiChatter18 : 'bz; */
        /* m_main_ci_untiChatter29 <= m_main_ci_c762 ? m_main_ci_untiChatter22 : m_main_ci_c818 ? m_main_ci_untiChatter28 : 'bz; */
        /* m_main_ci_xvalue7 <= m_main_ci_c762 ? m_main_ci_xvalue2 : m_main_ci_c818 ? m_main_ci_xvalue6 : 'bz; */
        /* m_main_ci_yvalue7 <= m_main_ci_c762 ? m_main_ci_yvalue2 : m_main_ci_c818 ? m_main_ci_yvalue6 : 'bz; */
        m_main_ci_antiChatter_RESET2 <= m_main_ci_antiChatter_RESET7;
        m_main_ci_antiChatter_RESW12 <= m_main_ci_antiChatter_RESW17;
        m_main_ci_loopCounter2 <= m_main_ci_loopCounter4;
        m_main_ci_oldRE2_a2 <= m_main_ci_oldRE2_a8;
        m_main_ci_oldRE_a2 <= m_main_ci_oldRE_a8;
        m_main_ci_old_xvalue2 <= m_main_ci_old_xvalue4;
        m_main_ci_old_yvalue2 <= m_main_ci_old_yvalue4;
        m_main_ci_untiChatter12 <= m_main_ci_untiChatter19;
        m_main_ci_untiChatter22 <= m_main_ci_untiChatter29;
        m_main_ci_xvalue2 <= m_main_ci_xvalue7;
        m_main_ci_yvalue2 <= m_main_ci_yvalue7;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_whilebridge9_S1;
      end
      LEDMatrixAB_m_main_ci_L1_whilebridge9_S1: begin
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_while2_S0;
      end
      LEDMatrixAB_m_main_ci_L2_fortest31_S0: begin
        /* m_main_ci_c659 <= (m_main_ci_counter6113 < 20); */
        /* m_main_ci_c816 <= (m_main_ci_c789 || m_main_ci_c790); */
        if (m_main_ci_c659) begin
          row <= m_main_ci_t660;
          /* m_main_ci_c817 <= (m_main_ci_c789 || m_main_ci_c790); */
          /* m_main_ci_lightLevel <= m_main_ci_unnamed610(m_main_ci_counter6113); */
          /* m_main_ci_t660 <= (1 << m_main_ci_loopCounter2); */
          m_main_ci_currentLine4 <= 0;
          m_main_ci_j4 <= 0;
          /* m_main_ci_c1217 <= ((m_main_ci_c1215 || m_main_ci_c1216) && m_main_ci_c659); */
          /* m_main_ci_c791 <= (m_main_ci_c817 && m_main_ci_c659); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_fortest33_S0;
        end else begin
          /* m_main_ci_loopCounter3 <= (m_main_ci_loopCounter2 + 1); */
          /* m_main_ci_c818 <= (m_main_ci_c789 || m_main_ci_c790); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_whilebridge9_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L3_fortest33_S0: begin
        /* m_main_ci_c661 <= (m_main_ci_j4 < 8); */
        if (m_main_ci_c661) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_t663;
          m_main_ci_frameBuffer_we <= 0;
          m_main_ci_frameBuffer_req <= 1;
          /* m_main_ci_t662 <= (m_main_ci_loopCounter2 * 8); */
          /* m_main_ci_t667 <= (128 >>> m_main_ci_j4); */
          /* m_main_ci_j5 <= (m_main_ci_j4 + 1); */
          /* m_main_ci_c1218 <= (m_main_ci_c1217 && m_main_ci_c661); */
          /* m_main_ci_c792 <= (m_main_ci_c791 && m_main_ci_c661); */
          /* m_main_ci_t663 <= (m_main_ci_t662 + m_main_ci_j4); */
          /* m_main_ci_currentLine5 <= (m_main_ci_currentLine4 | m_main_ci_t667); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody34_S1;
        end else begin
          col <= m_main_ci_currentLine4;
          /* m_main_ci_t616_inl1 <= (interval / 2); */
          m_main_ci_i_inl14 <= 0;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L4_fortest36_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L3_forbody34_S1: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody34_S2;
      end
      LEDMatrixAB_m_main_ci_L3_forbody34_S2: begin
        m_main_ci_t664 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody34_S3;
      end
      LEDMatrixAB_m_main_ci_L3_forbody34_S3: begin
        /* m_main_ci_t665 <= (m_main_ci_t664 >>> 1); */
        /* m_main_ci_c666 <= (m_main_ci_t665 > m_main_ci_lightLevel); */
        /* m_main_ci_c793 <= (m_main_ci_c792 && m_main_ci_c666); */
        /* m_main_ci_currentLine6 <= m_main_ci_c793 ? m_main_ci_currentLine5 : (m_main_ci_c792 && !m_main_ci_c666) ? m_main_ci_currentLine4 : 'bz; */
        m_main_ci_currentLine4 <= m_main_ci_currentLine6;
        m_main_ci_j4 <= m_main_ci_j5;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_fortest33_S0;
      end
      LEDMatrixAB_m_main_ci_L4_fortest36_S0: begin
        /* m_main_ci_c620_inl1 <= (m_main_ci_i_inl14 < m_main_ci_t616_inl1); */
        if (m_main_ci_c620_inl1) begin
          /* m_main_ci_i_inl15 <= (m_main_ci_i_inl14 + 1); */
          /* m_main_ci_c1219 <= (m_main_ci_c1217 && m_main_ci_c620_inl1); */
          /* m_main_ci_c794 <= (m_main_ci_c791 && m_main_ci_c620_inl1); */
          m_main_ci_i_inl14 <= m_main_ci_i_inl15;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L4_fortest36_S0;
        end else begin
          /* m_main_ci_counter6114 <= (m_main_ci_counter6113 + 1); */
          m_main_ci_counter6113 <= m_main_ci_counter6114;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L2_fortest31_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L5_fortest6_S0: begin
        /* m_main_ci_c626 <= (m_main_ci_i3 < 64); */
        if (m_main_ci_c626) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_i3;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t627;
          /* m_main_ci_t627 <= stageParam(m_main_ci_i3); */
          /* m_main_ci_i4 <= (m_main_ci_i3 + 1); */
          /* m_main_ci_c1193 <= (m_main_ci_c1189 && m_main_ci_c626); */
          /* m_main_ci_c766 <= (m_main_ci_c762 && m_main_ci_c626); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L5_forbody7_S1;
        end else begin
          /* m_main_ci_antiChatter_RESET7 <= m_main_ci_c762 ? 11 : m_main_ci_c818 ? m_main_ci_antiChatter_RESET6 : 'bz; */
          /* m_main_ci_antiChatter_RESW17 <= m_main_ci_c762 ? m_main_ci_antiChatter_RESW12 : m_main_ci_c818 ? m_main_ci_antiChatter_RESW16 : 'bz; */
          /* m_main_ci_loopCounter4 <= m_main_ci_c762 ? m_main_ci_loopCounter2 : m_main_ci_c818 ? m_main_ci_loopCounter3 : 'bz; */
          /* m_main_ci_oldRE2_a8 <= m_main_ci_c762 ? m_main_ci_oldRE2_a2 : m_main_ci_c818 ? m_main_ci_oldRE2_a7 : 'bz; */
          /* m_main_ci_oldRE_a8 <= m_main_ci_c762 ? m_main_ci_oldRE_a2 : m_main_ci_c818 ? m_main_ci_oldRE_a7 : 'bz; */
          /* m_main_ci_old_xvalue4 <= m_main_ci_c762 ? m_main_ci_old_xvalue2 : m_main_ci_c818 ? m_main_ci_xvalue6 : 'bz; */
          /* m_main_ci_old_yvalue4 <= m_main_ci_c762 ? m_main_ci_old_yvalue2 : m_main_ci_c818 ? m_main_ci_yvalue6 : 'bz; */
          /* m_main_ci_untiChatter19 <= m_main_ci_c762 ? m_main_ci_untiChatter12 : m_main_ci_c818 ? m_main_ci_untiChatter18 : 'bz; */
          /* m_main_ci_untiChatter29 <= m_main_ci_c762 ? m_main_ci_untiChatter22 : m_main_ci_c818 ? m_main_ci_untiChatter28 : 'bz; */
          /* m_main_ci_xvalue7 <= m_main_ci_c762 ? m_main_ci_xvalue2 : m_main_ci_c818 ? m_main_ci_xvalue6 : 'bz; */
          /* m_main_ci_yvalue7 <= m_main_ci_c762 ? m_main_ci_yvalue2 : m_main_ci_c818 ? m_main_ci_yvalue6 : 'bz; */
          m_main_ci_antiChatter_RESET2 <= m_main_ci_antiChatter_RESET7;
          m_main_ci_antiChatter_RESW12 <= m_main_ci_antiChatter_RESW17;
          m_main_ci_loopCounter2 <= m_main_ci_loopCounter4;
          m_main_ci_oldRE2_a2 <= m_main_ci_oldRE2_a8;
          m_main_ci_oldRE_a2 <= m_main_ci_oldRE_a8;
          m_main_ci_old_xvalue2 <= m_main_ci_old_xvalue4;
          m_main_ci_old_yvalue2 <= m_main_ci_old_yvalue4;
          m_main_ci_untiChatter12 <= m_main_ci_untiChatter19;
          m_main_ci_untiChatter22 <= m_main_ci_untiChatter29;
          m_main_ci_xvalue2 <= m_main_ci_xvalue7;
          m_main_ci_yvalue2 <= m_main_ci_yvalue7;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_whilebridge9_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L5_forbody7_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_i3 <= m_main_ci_i4;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L5_fortest6_S0;
      end
      endcase
    end
  end
  

endmodule

