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
  localparam LEDMatrixAB_m_main_ci_L1_ifelse40_S0 = 69;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen5_S0 = 70;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen5_S1 = 71;
  localparam LEDMatrixAB_m_main_ci_L1_b7_S0 = 72;
  localparam LEDMatrixAB_m_main_ci_L1_b7_S1 = 73;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen8_S0 = 74;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse39_S0 = 75;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse39_S1 = 76;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen9_S0 = 77;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen9_S1 = 78;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen10_S0 = 79;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen10_S1 = 80;
  localparam LEDMatrixAB_m_main_ci_L1_b11_S0 = 81;
  localparam LEDMatrixAB_m_main_ci_L1_b11_S1 = 82;
  localparam LEDMatrixAB_m_main_ci_L1_b12_S0 = 83;
  localparam LEDMatrixAB_m_main_ci_L1_b12_S1 = 84;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen13_S0 = 85;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse38_S0 = 86;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse38_S1 = 87;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen14_S0 = 88;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen14_S1 = 89;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen15_S0 = 90;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen15_S1 = 91;
  localparam LEDMatrixAB_m_main_ci_L1_b16_S0 = 92;
  localparam LEDMatrixAB_m_main_ci_L1_b16_S1 = 93;
  localparam LEDMatrixAB_m_main_ci_L1_b17_S0 = 94;
  localparam LEDMatrixAB_m_main_ci_L1_b17_S1 = 95;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen18_S0 = 96;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse37_S0 = 97;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse37_S1 = 98;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen19_S0 = 99;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen19_S1 = 100;
  localparam LEDMatrixAB_m_main_ci_L1_b20_S0 = 101;
  localparam LEDMatrixAB_m_main_ci_L1_b21_S0 = 102;
  localparam LEDMatrixAB_m_main_ci_L1_b21_S1 = 103;
  localparam LEDMatrixAB_m_main_ci_L1_b21_S2 = 104;
  localparam LEDMatrixAB_m_main_ci_L1_b21_S3 = 105;
  localparam LEDMatrixAB_m_main_ci_L1_b21_S4 = 106;
  localparam LEDMatrixAB_m_main_ci_L1_b21_S5 = 107;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen22_S0 = 108;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen22_S1 = 109;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse36_S0 = 110;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse36_S1 = 111;
  localparam LEDMatrixAB_m_main_ci_L1_b23_S0 = 112;
  localparam LEDMatrixAB_m_main_ci_L1_b23_S1 = 113;
  localparam LEDMatrixAB_m_main_ci_L1_b23_S2 = 114;
  localparam LEDMatrixAB_m_main_ci_L1_b23_S3 = 115;
  localparam LEDMatrixAB_m_main_ci_L1_b23_S4 = 116;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen24_S0 = 117;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen24_S1 = 118;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse35_S0 = 119;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse35_S1 = 120;
  localparam LEDMatrixAB_m_main_ci_L1_b25_S0 = 121;
  localparam LEDMatrixAB_m_main_ci_L1_b25_S1 = 122;
  localparam LEDMatrixAB_m_main_ci_L1_b25_S2 = 123;
  localparam LEDMatrixAB_m_main_ci_L1_forelse34_S0 = 124;
  localparam LEDMatrixAB_m_main_ci_L1_whilebridge6_S0 = 125;
  localparam LEDMatrixAB_m_main_ci_L1_whilebridge6_S1 = 126;
  localparam LEDMatrixAB_m_main_ci_L2_fortest26_S0 = 127;
  localparam LEDMatrixAB_m_main_ci_L2_forbody27_S0 = 128;
  localparam LEDMatrixAB_m_main_ci_L2_forbody27_S1 = 129;
  localparam LEDMatrixAB_m_main_ci_L2_forelse30_S0 = 130;
  localparam LEDMatrixAB_m_main_ci_L2_forelse30_S1 = 131;
  localparam LEDMatrixAB_m_main_ci_L2_forelse33_S0 = 132;
  localparam LEDMatrixAB_m_main_ci_L2_forelse33_S1 = 133;
  localparam LEDMatrixAB_m_main_ci_L3_fortest28_S0 = 134;
  localparam LEDMatrixAB_m_main_ci_L3_forbody29_S0 = 135;
  localparam LEDMatrixAB_m_main_ci_L3_forbody29_S1 = 136;
  localparam LEDMatrixAB_m_main_ci_L3_forbody29_S2 = 137;
  localparam LEDMatrixAB_m_main_ci_L3_forbody29_S3 = 138;
  localparam LEDMatrixAB_m_main_ci_L3_forbody29_S4 = 139;
  localparam LEDMatrixAB_m_main_ci_L4_fortest31_S0 = 140;
  localparam LEDMatrixAB_m_main_ci_L4_forbody32_S0 = 141;
  localparam LEDMatrixAB_m_main_ci_L4_forbody32_S1 = 142;
  
  //signals: 
  wire        [4:0] m_main_ci_antiChatter_RESET3;
  wire        [4:0] m_main_ci_antiChatter_RESET6;
  wire        [4:0] m_main_ci_antiChatter_RESET7;
  wire        [7:0] m_main_ci_antiChatter_RESW13;
  wire        [7:0] m_main_ci_antiChatter_RESW16;
  wire        [7:0] m_main_ci_antiChatter_RESW17;
  wire m_main_ci_c1150;
  wire m_main_ci_c1151;
  wire m_main_ci_c1152;
  wire m_main_ci_c1153;
  wire m_main_ci_c1154;
  wire m_main_ci_c1155;
  wire m_main_ci_c1156;
  wire m_main_ci_c1157;
  wire m_main_ci_c1158;
  wire m_main_ci_c1159;
  wire m_main_ci_c1160;
  wire m_main_ci_c1161;
  wire m_main_ci_c1162;
  wire m_main_ci_c1163;
  wire m_main_ci_c1164;
  wire m_main_ci_c1165;
  wire m_main_ci_c1166;
  wire m_main_ci_c1167;
  wire m_main_ci_c1168;
  wire m_main_ci_c1169;
  wire m_main_ci_c1170;
  wire m_main_ci_c1171;
  wire m_main_ci_c1172;
  wire m_main_ci_c1173;
  wire m_main_ci_c1174;
  wire m_main_ci_c1175;
  wire m_main_ci_c1176;
  wire m_main_ci_c1177;
  wire m_main_ci_c1178;
  wire m_main_ci_c618_inl1;
  wire m_main_ci_c622;
  wire m_main_ci_c623;
  wire m_main_ci_c625;
  wire m_main_ci_c626;
  wire m_main_ci_c627;
  wire m_main_ci_c629;
  wire m_main_ci_c631;
  wire m_main_ci_c632;
  wire m_main_ci_c633;
  wire m_main_ci_c635;
  wire m_main_ci_c637;
  wire m_main_ci_c638;
  wire m_main_ci_c642;
  wire m_main_ci_c647;
  wire m_main_ci_c652;
  wire m_main_ci_c654;
  wire m_main_ci_c659;
  wire m_main_ci_c742;
  wire m_main_ci_c743;
  wire m_main_ci_c744;
  wire m_main_ci_c745;
  wire m_main_ci_c753;
  wire m_main_ci_c754;
  wire m_main_ci_c755;
  wire m_main_ci_c756;
  wire m_main_ci_c757;
  wire m_main_ci_c758;
  wire m_main_ci_c759;
  wire m_main_ci_c760;
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
  wire        [5:0] m_main_ci_t639;
  wire        [7:0] m_main_ci_t641;
  wire        [7:0] m_main_ci_t644;
  wire        [5:0] m_main_ci_t645;
  wire        [7:0] m_main_ci_t649;
  wire        [31:0] m_main_ci_t655;
  wire        [31:0] m_main_ci_t656;
  wire        [31:0] m_main_ci_t658;
  wire        [7:0] m_main_ci_t662;
  wire        [7:0] m_main_ci_t664;
  wire        [7:0] m_main_ci_t908;
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
  reg m_main_ci_t621;
  reg m_main_ci_t624;
  reg m_main_ci_t628;
  reg m_main_ci_t630;
  reg m_main_ci_t634;
  reg m_main_ci_t636;
  reg        [7:0] m_main_ci_t640;
  reg        [7:0] m_main_ci_t643;
  reg m_main_ci_t646;
  reg        [7:0] m_main_ci_t648;
  reg m_main_ci_t650;
  reg        [7:0] m_main_ci_t657;
  reg        [7:0] m_main_ci_t661;
  reg        [7:0] m_main_ci_t663;
  reg        [7:0] m_main_ci_untiChatter12;
  reg        [7:0] m_main_ci_untiChatter22;
  reg        [2:0] m_main_ci_xvalue2;
  reg        [2:0] m_main_ci_yvalue2;
  wire signed [31:0] interval;
  wire signed [31:0] m_main_ci_counter6094;
  wire signed [31:0] m_main_ci_currentLine5;
  wire signed [31:0] m_main_ci_currentLine6;
  wire signed [31:0] m_main_ci_i_inl15;
  wire signed [31:0] m_main_ci_j5;
  wire signed [31:0] m_main_ci_lightLevel;
  wire signed [31:0] m_main_ci_t614_inl1;
  wire signed [31:0] m_main_ci_t653;
  wire signed [31:0] m_main_ci_t660;
  reg signed [31:0] m_main_ci_counter6093;
  reg signed [31:0] m_main_ci_currentLine4;
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
  wire        [6:0] m_main_ci_array740_ram_addr;
  wire        [7:0] m_main_ci_array740_ram_d;
  wire        [6:0] m_main_ci_array740_ram_len;
  wire        [7:0] m_main_ci_array740_ram_q;
  wire m_main_ci_array740_ram_we;
  //combinations: 
  function [31:0] m_main_ci_unnamed608 (
    input [4:0] m_main_ci_unnamed608_in
  );
  begin
    case (m_main_ci_unnamed608_in)
      0: begin
        m_main_ci_unnamed608 = 0;
      end
      1: begin
        m_main_ci_unnamed608 = 1;
      end
      2: begin
        m_main_ci_unnamed608 = 2;
      end
      3: begin
        m_main_ci_unnamed608 = 3;
      end
      4: begin
        m_main_ci_unnamed608 = 4;
      end
      5: begin
        m_main_ci_unnamed608 = 4;
      end
      6: begin
        m_main_ci_unnamed608 = 5;
      end
      7: begin
        m_main_ci_unnamed608 = 5;
      end
      8: begin
        m_main_ci_unnamed608 = 6;
      end
      9: begin
        m_main_ci_unnamed608 = 6;
      end
      10: begin
        m_main_ci_unnamed608 = 7;
      end
      11: begin
        m_main_ci_unnamed608 = 7;
      end
      12: begin
        m_main_ci_unnamed608 = 8;
      end
      13: begin
        m_main_ci_unnamed608 = 15;
      end
    endcase
  end
  endfunction
  assign interval = 600;
  assign m_main_ci_antiChatter_RESET3 = (m_main_ci_antiChatter_RESET2 + 1);
  assign m_main_ci_antiChatter_RESET6 = (m_main_ci_c622 && !m_main_ci_c623) ? m_main_ci_antiChatter_RESET3 : m_main_ci_c753 ? 0 : 'bz;
  assign m_main_ci_antiChatter_RESET7 = m_main_ci_c754 ? 11 : m_main_ci_c804 ? m_main_ci_antiChatter_RESET6 : 'bz;
  assign m_main_ci_antiChatter_RESW13 = (m_main_ci_antiChatter_RESW12 + 1);
  assign m_main_ci_antiChatter_RESW16 = m_main_ci_c772 ? m_main_ci_t908 : m_main_ci_c773 ? 0 : 'bz;
  assign m_main_ci_antiChatter_RESW17 = m_main_ci_c754 ? m_main_ci_antiChatter_RESW12 : m_main_ci_c804 ? m_main_ci_antiChatter_RESW16 : 'bz;
  assign m_main_ci_c1150 = !m_main_ci_c622;
  assign m_main_ci_c1151 = (m_main_ci_c622 && m_main_ci_c623);
  assign m_main_ci_c1152 = (m_main_ci_c622 && !m_main_ci_c623);
  assign m_main_ci_c1153 = ((m_main_ci_c1152 || m_main_ci_c1150) && m_main_ci_c625);
  assign m_main_ci_c1154 = ((m_main_ci_c1152 || m_main_ci_c1150) && !m_main_ci_c625);
  assign m_main_ci_c1155 = (m_main_ci_c1153 && m_main_ci_c626);
  assign m_main_ci_c1156 = (m_main_ci_c1155 && m_main_ci_c627);
  assign m_main_ci_c1157 = ((m_main_ci_c1155 && m_main_ci_c742) || (m_main_ci_c1155 && m_main_ci_c743));
  assign m_main_ci_c1158 = (m_main_ci_c1153 && !m_main_ci_c626);
  assign m_main_ci_c1159 = (m_main_ci_c1157 || m_main_ci_c1156);
  assign m_main_ci_c1160 = (((m_main_ci_c1154 || m_main_ci_c1158) || m_main_ci_c1159) && m_main_ci_c631);
  assign m_main_ci_c1161 = (((m_main_ci_c1154 || m_main_ci_c1158) || m_main_ci_c1159) && !m_main_ci_c631);
  assign m_main_ci_c1162 = (m_main_ci_c1160 && m_main_ci_c632);
  assign m_main_ci_c1163 = (m_main_ci_c1162 && m_main_ci_c633);
  assign m_main_ci_c1164 = ((m_main_ci_c1162 && m_main_ci_c744) || (m_main_ci_c1162 && m_main_ci_c745));
  assign m_main_ci_c1165 = (m_main_ci_c1160 && !m_main_ci_c632);
  assign m_main_ci_c1166 = (m_main_ci_c1164 || m_main_ci_c1163);
  assign m_main_ci_c1167 = (((m_main_ci_c1165 || m_main_ci_c1161) || m_main_ci_c1166) && m_main_ci_c637);
  assign m_main_ci_c1168 = (((m_main_ci_c1165 || m_main_ci_c1161) || m_main_ci_c1166) && !m_main_ci_c637);
  assign m_main_ci_c1169 = (m_main_ci_c1167 && m_main_ci_c638);
  assign m_main_ci_c1170 = (m_main_ci_c1167 && !m_main_ci_c638);
  assign m_main_ci_c1171 = (m_main_ci_c1170 || m_main_ci_c1169);
  assign m_main_ci_c1172 = ((m_main_ci_c1168 || m_main_ci_c1171) && m_main_ci_c642);
  assign m_main_ci_c1173 = ((m_main_ci_c1168 || m_main_ci_c1171) && !m_main_ci_c642);
  assign m_main_ci_c1174 = ((m_main_ci_c1172 || m_main_ci_c1173) && m_main_ci_c647);
  assign m_main_ci_c1175 = ((m_main_ci_c1172 || m_main_ci_c1173) && !m_main_ci_c647);
  assign m_main_ci_c1176 = ((m_main_ci_c1175 || m_main_ci_c1174) && m_main_ci_c652);
  assign m_main_ci_c1177 = (m_main_ci_c1176 && m_main_ci_c654);
  assign m_main_ci_c1178 = (m_main_ci_c1176 && m_main_ci_c618_inl1);
  assign m_main_ci_c618_inl1 = (m_main_ci_i_inl14 < m_main_ci_t614_inl1);
  assign m_main_ci_c622 = (m_main_ci_t621 == 0);
  assign m_main_ci_c623 = (m_main_ci_antiChatter_RESET3 > 10);
  assign m_main_ci_c625 = (m_main_ci_oldRE_a2 != m_main_ci_t624);
  assign m_main_ci_c626 = (m_main_ci_untiChatter13 > 10);
  assign m_main_ci_c627 = (m_main_ci_oldRE_a2 != 0);
  assign m_main_ci_c629 = (m_main_ci_t628 != 0);
  assign m_main_ci_c631 = (m_main_ci_oldRE2_a2 != m_main_ci_t630);
  assign m_main_ci_c632 = (m_main_ci_untiChatter23 > 10);
  assign m_main_ci_c633 = (m_main_ci_oldRE2_a2 != 0);
  assign m_main_ci_c635 = (m_main_ci_t634 != 0);
  assign m_main_ci_c637 = (m_main_ci_t636 == 0);
  assign m_main_ci_c638 = (m_main_ci_antiChatter_RESW13 > 10);
  assign m_main_ci_c642 = (m_main_ci_t641 != 0);
  assign m_main_ci_c647 = (m_main_ci_t646 != 0);
  assign m_main_ci_c652 = (m_main_ci_counter6093 < 14);
  assign m_main_ci_c654 = (m_main_ci_j4 < 8);
  assign m_main_ci_c659 = (m_main_ci_t658 > m_main_ci_lightLevel);
  assign m_main_ci_c742 = (!m_main_ci_c627 && m_main_ci_c629);
  assign m_main_ci_c743 = (!m_main_ci_c627 && !m_main_ci_c629);
  assign m_main_ci_c744 = (!m_main_ci_c633 && m_main_ci_c635);
  assign m_main_ci_c745 = (!m_main_ci_c633 && !m_main_ci_c635);
  assign m_main_ci_c753 = !m_main_ci_c622;
  assign m_main_ci_c754 = (m_main_ci_c622 && m_main_ci_c623);
  assign m_main_ci_c755 = (m_main_ci_c622 && !m_main_ci_c623);
  assign m_main_ci_c756 = (m_main_ci_c785 && m_main_ci_c625);
  assign m_main_ci_c757 = (m_main_ci_c809 && !m_main_ci_c625);
  assign m_main_ci_c758 = (m_main_ci_c756 && m_main_ci_c626);
  assign m_main_ci_c759 = (m_main_ci_c758 && m_main_ci_c627);
  assign m_main_ci_c760 = (m_main_ci_c758 && m_main_ci_c742);
  assign m_main_ci_c761 = (m_main_ci_c758 && m_main_ci_c743);
  assign m_main_ci_c762 = (m_main_ci_c756 && !m_main_ci_c626);
  assign m_main_ci_c763 = (m_main_ci_c786 || m_main_ci_c760);
  assign m_main_ci_c764 = (m_main_ci_c790 && m_main_ci_c631);
  assign m_main_ci_c765 = (m_main_ci_c808 && !m_main_ci_c631);
  assign m_main_ci_c766 = (m_main_ci_c764 && m_main_ci_c632);
  assign m_main_ci_c767 = (m_main_ci_c766 && m_main_ci_c633);
  assign m_main_ci_c768 = (m_main_ci_c766 && m_main_ci_c744);
  assign m_main_ci_c769 = (m_main_ci_c766 && m_main_ci_c745);
  assign m_main_ci_c770 = (m_main_ci_c764 && !m_main_ci_c632);
  assign m_main_ci_c771 = (m_main_ci_c791 || m_main_ci_c767);
  assign m_main_ci_c772 = (m_main_ci_c795 && m_main_ci_c637);
  assign m_main_ci_c773 = (m_main_ci_c807 && !m_main_ci_c637);
  assign m_main_ci_c774 = (m_main_ci_c772 && m_main_ci_c638);
  assign m_main_ci_c775 = (m_main_ci_c772 && !m_main_ci_c638);
  assign m_main_ci_c776 = (m_main_ci_c798 && m_main_ci_c642);
  assign m_main_ci_c777 = (m_main_ci_c806 && !m_main_ci_c642);
  assign m_main_ci_c778 = (m_main_ci_c800 && m_main_ci_c647);
  assign m_main_ci_c779 = (m_main_ci_c805 && !m_main_ci_c647);
  assign m_main_ci_c780 = (m_main_ci_c803 && m_main_ci_c652);
  assign m_main_ci_c781 = (m_main_ci_c780 && m_main_ci_c654);
  assign m_main_ci_c782 = (m_main_ci_c781 && m_main_ci_c659);
  assign m_main_ci_c783 = (m_main_ci_c780 && m_main_ci_c618_inl1);
  assign m_main_ci_c784 = (m_main_ci_c753 || m_main_ci_c755);
  assign m_main_ci_c785 = (m_main_ci_c753 || m_main_ci_c755);
  assign m_main_ci_c786 = (m_main_ci_c761 || m_main_ci_c759);
  assign m_main_ci_c787 = (m_main_ci_c786 || m_main_ci_c760);
  assign m_main_ci_c788 = (m_main_ci_c762 || m_main_ci_c757);
  assign m_main_ci_c789 = (m_main_ci_c788 || m_main_ci_c763);
  assign m_main_ci_c790 = (m_main_ci_c788 || m_main_ci_c763);
  assign m_main_ci_c791 = (m_main_ci_c768 || m_main_ci_c769);
  assign m_main_ci_c792 = (m_main_ci_c791 || m_main_ci_c767);
  assign m_main_ci_c793 = (m_main_ci_c765 || m_main_ci_c770);
  assign m_main_ci_c794 = (m_main_ci_c793 || m_main_ci_c771);
  assign m_main_ci_c795 = (m_main_ci_c793 || m_main_ci_c771);
  assign m_main_ci_c796 = (m_main_ci_c775 || m_main_ci_c773);
  assign m_main_ci_c797 = (m_main_ci_c796 || m_main_ci_c774);
  assign m_main_ci_c798 = (m_main_ci_c796 || m_main_ci_c774);
  assign m_main_ci_c799 = (m_main_ci_c777 || m_main_ci_c776);
  assign m_main_ci_c800 = (m_main_ci_c777 || m_main_ci_c776);
  assign m_main_ci_c801 = (m_main_ci_c779 || m_main_ci_c778);
  assign m_main_ci_c802 = (m_main_ci_c779 || m_main_ci_c778);
  assign m_main_ci_c803 = (m_main_ci_c779 || m_main_ci_c778);
  assign m_main_ci_c804 = (m_main_ci_c779 || m_main_ci_c778);
  assign m_main_ci_c805 = (m_main_ci_c777 || m_main_ci_c776);
  assign m_main_ci_c806 = (m_main_ci_c796 || m_main_ci_c774);
  assign m_main_ci_c807 = (m_main_ci_c793 || m_main_ci_c771);
  assign m_main_ci_c808 = (m_main_ci_c788 || m_main_ci_c763);
  assign m_main_ci_c809 = (m_main_ci_c753 || m_main_ci_c755);
  assign m_main_ci_counter6094 = (m_main_ci_counter6093 + 1);
  assign m_main_ci_currentLine5 = (m_main_ci_currentLine4 | m_main_ci_t660);
  assign m_main_ci_currentLine6 = m_main_ci_c782 ? m_main_ci_currentLine5 : (m_main_ci_c781 && !m_main_ci_c659) ? m_main_ci_currentLine4 : 'bz;
  assign m_main_ci_cursor = (m_main_ci_t645 + m_main_ci_yvalue6);
  assign m_main_ci_i_inl15 = (m_main_ci_i_inl14 + 1);
  assign m_main_ci_j5 = (m_main_ci_j4 + 1);
  assign m_main_ci_lightLevel = m_main_ci_unnamed608(m_main_ci_counter6093);
  assign m_main_ci_loopCounter3 = (m_main_ci_loopCounter2 + 1);
  assign m_main_ci_loopCounter4 = m_main_ci_c754 ? m_main_ci_loopCounter2 : m_main_ci_c804 ? m_main_ci_loopCounter3 : 'bz;
  assign m_main_ci_oldRE2_a7 = m_main_ci_c792 ? m_main_ci_oldRE2_a5 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_oldRE2_a2 : m_main_ci_c765 ? m_main_ci_oldRE2_a6 : 'bz;
  assign m_main_ci_oldRE2_a8 = m_main_ci_c754 ? m_main_ci_oldRE2_a2 : m_main_ci_c804 ? m_main_ci_oldRE2_a7 : 'bz;
  assign m_main_ci_oldRE_a7 = m_main_ci_c787 ? m_main_ci_oldRE_a5 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_oldRE_a2 : m_main_ci_c757 ? m_main_ci_oldRE_a6 : 'bz;
  assign m_main_ci_oldRE_a8 = m_main_ci_c754 ? m_main_ci_oldRE_a2 : m_main_ci_c804 ? m_main_ci_oldRE_a7 : 'bz;
  assign m_main_ci_old_xvalue4 = m_main_ci_c754 ? m_main_ci_old_xvalue2 : m_main_ci_c804 ? m_main_ci_xvalue6 : 'bz;
  assign m_main_ci_old_yvalue4 = m_main_ci_c754 ? m_main_ci_old_yvalue2 : m_main_ci_c804 ? m_main_ci_yvalue6 : 'bz;
  assign m_main_ci_prev_Cursor = (m_main_ci_t639 + m_main_ci_old_yvalue2);
  assign m_main_ci_t614_inl1 = (interval / 2);
  assign m_main_ci_t639 = (m_main_ci_old_xvalue2 * 8);
  assign m_main_ci_t641 = (m_main_ci_t640 & 1);
  assign m_main_ci_t644 = (m_main_ci_t643 | 32);
  assign m_main_ci_t645 = (m_main_ci_xvalue6 * 8);
  assign m_main_ci_t649 = (m_main_ci_t648 & 31);
  assign m_main_ci_t653 = (1 << m_main_ci_loopCounter2);
  assign m_main_ci_t655 = (m_main_ci_loopCounter2 * 8);
  assign m_main_ci_t656 = (m_main_ci_t655 + m_main_ci_j4);
  assign m_main_ci_t658 = (m_main_ci_t657 >>> 1);
  assign m_main_ci_t660 = (128 >>> m_main_ci_j4);
  assign m_main_ci_t662 = (m_main_ci_t661 | 32);
  assign m_main_ci_t664 = (m_main_ci_t663 & 31);
  assign m_main_ci_t908 = m_main_ci_c774 ? 11 : (m_main_ci_c772 && !m_main_ci_c638) ? m_main_ci_antiChatter_RESW13 : 'bz;
  assign m_main_ci_untiChatter13 = (m_main_ci_untiChatter12 + 1);
  assign m_main_ci_untiChatter18 = m_main_ci_c787 ? 0 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_untiChatter13 : m_main_ci_c757 ? 0 : 'bz;
  assign m_main_ci_untiChatter19 = m_main_ci_c754 ? m_main_ci_untiChatter12 : m_main_ci_c804 ? m_main_ci_untiChatter18 : 'bz;
  assign m_main_ci_untiChatter23 = (m_main_ci_untiChatter22 + 1);
  assign m_main_ci_untiChatter28 = m_main_ci_c792 ? 0 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_untiChatter23 : m_main_ci_c765 ? 0 : 'bz;
  assign m_main_ci_untiChatter29 = m_main_ci_c754 ? m_main_ci_untiChatter22 : m_main_ci_c804 ? m_main_ci_untiChatter28 : 'bz;
  assign m_main_ci_xvalue3 = (m_main_ci_xvalue2 - 1);
  assign m_main_ci_xvalue4 = (m_main_ci_xvalue2 + 1);
  assign m_main_ci_xvalue5 = m_main_ci_c759 ? m_main_ci_xvalue2 : m_main_ci_c760 ? m_main_ci_xvalue3 : m_main_ci_c761 ? m_main_ci_xvalue4 : 'bz;
  assign m_main_ci_xvalue6 = m_main_ci_c787 ? m_main_ci_xvalue5 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_xvalue2 : m_main_ci_c757 ? m_main_ci_xvalue2 : 'bz;
  assign m_main_ci_xvalue7 = m_main_ci_c754 ? m_main_ci_xvalue2 : m_main_ci_c804 ? m_main_ci_xvalue6 : 'bz;
  assign m_main_ci_yvalue3 = (m_main_ci_yvalue2 + 1);
  assign m_main_ci_yvalue4 = (m_main_ci_yvalue2 - 1);
  assign m_main_ci_yvalue5 = m_main_ci_c767 ? m_main_ci_yvalue2 : m_main_ci_c768 ? m_main_ci_yvalue3 : m_main_ci_c769 ? m_main_ci_yvalue4 : 'bz;
  assign m_main_ci_yvalue6 = m_main_ci_c792 ? m_main_ci_yvalue5 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_yvalue2 : m_main_ci_c765 ? m_main_ci_yvalue2 : 'bz;
  assign m_main_ci_yvalue7 = m_main_ci_c754 ? m_main_ci_yvalue2 : m_main_ci_c804 ? m_main_ci_yvalue6 : 'bz;
  //combinations: m_main_ci_array740
  assign m_main_ci_array740_ram_addr = m_main_ci_frameBuffer_addr;
  assign m_main_ci_array740_ram_d = m_main_ci_frameBuffer_d;
  assign m_main_ci_array740_ram_we = m_main_ci_frameBuffer_we;
  assign m_main_ci_frameBuffer_len = m_main_ci_array740_ram_len;
  assign m_main_ci_frameBuffer_q = m_main_ci_array740_ram_q;
  //sub modules
  //m_main_ci_array740 instance
  BidirectionalSinglePortRam#(
    .DATA_WIDTH(8),
    .ADDR_WIDTH(7),
    .RAM_LENGTH(64)
    )
    m_main_ci_array740(
      .clk(clk),
      .rst(rst),
      .ram_addr(m_main_ci_array740_ram_addr),
      .ram_d(m_main_ci_array740_ram_d),
      .ram_we(m_main_ci_array740_ram_we),
      .ram_q(m_main_ci_array740_ram_q),
      .ram_len(m_main_ci_array740_ram_len)
    );
  
  
  always @(posedge clk) begin
    if (rst) begin
      boardLED1 <= 0;
      boardLED2 <= 0;
      col <= 0;
      m_main_ci_antiChatter_RESET2 <= 0;
      m_main_ci_antiChatter_RESW12 <= 0;
      m_main_ci_counter6093 <= 0;
      m_main_ci_currentLine4 <= 0;
      m_main_ci_frameBuffer_addr <= 0;
      m_main_ci_frameBuffer_d <= 0;
      m_main_ci_frameBuffer_req <= 0;
      m_main_ci_frameBuffer_we <= 0;
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
      m_main_ci_t621 <= 0;
      m_main_ci_t624 <= 0;
      m_main_ci_t628 <= 0;
      m_main_ci_t630 <= 0;
      m_main_ci_t634 <= 0;
      m_main_ci_t636 <= 0;
      m_main_ci_t640 <= 0;
      m_main_ci_t643 <= 0;
      m_main_ci_t646 <= 0;
      m_main_ci_t648 <= 0;
      m_main_ci_t650 <= 0;
      m_main_ci_t657 <= 0;
      m_main_ci_t661 <= 0;
      m_main_ci_t663 <= 0;
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
        m_main_ci_frameBuffer_d <= 33;
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
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S2;
      end
      LEDMatrixAB_m_main_ci_b1_S2: begin
        m_main_ci_frameBuffer_addr <= 2;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
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
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S9;
      end
      LEDMatrixAB_m_main_ci_b1_S9: begin
        m_main_ci_frameBuffer_addr <= 9;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 6;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S10;
      end
      LEDMatrixAB_m_main_ci_b1_S10: begin
        m_main_ci_frameBuffer_addr <= 10;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S11;
      end
      LEDMatrixAB_m_main_ci_b1_S11: begin
        m_main_ci_frameBuffer_addr <= 11;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
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
        m_main_ci_frameBuffer_d <= 2;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S14;
      end
      LEDMatrixAB_m_main_ci_b1_S14: begin
        m_main_ci_frameBuffer_addr <= 14;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 2;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S15;
      end
      LEDMatrixAB_m_main_ci_b1_S15: begin
        m_main_ci_frameBuffer_addr <= 15;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 2;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S16;
      end
      LEDMatrixAB_m_main_ci_b1_S16: begin
        m_main_ci_frameBuffer_addr <= 16;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S17;
      end
      LEDMatrixAB_m_main_ci_b1_S17: begin
        m_main_ci_frameBuffer_addr <= 17;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S18;
      end
      LEDMatrixAB_m_main_ci_b1_S18: begin
        m_main_ci_frameBuffer_addr <= 18;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S19;
      end
      LEDMatrixAB_m_main_ci_b1_S19: begin
        m_main_ci_frameBuffer_addr <= 19;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S20;
      end
      LEDMatrixAB_m_main_ci_b1_S20: begin
        m_main_ci_frameBuffer_addr <= 20;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S21;
      end
      LEDMatrixAB_m_main_ci_b1_S21: begin
        m_main_ci_frameBuffer_addr <= 21;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 4;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S22;
      end
      LEDMatrixAB_m_main_ci_b1_S22: begin
        m_main_ci_frameBuffer_addr <= 22;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 4;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S23;
      end
      LEDMatrixAB_m_main_ci_b1_S23: begin
        m_main_ci_frameBuffer_addr <= 23;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 4;
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
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S26;
      end
      LEDMatrixAB_m_main_ci_b1_S26: begin
        m_main_ci_frameBuffer_addr <= 26;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S27;
      end
      LEDMatrixAB_m_main_ci_b1_S27: begin
        m_main_ci_frameBuffer_addr <= 27;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 2;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S28;
      end
      LEDMatrixAB_m_main_ci_b1_S28: begin
        m_main_ci_frameBuffer_addr <= 28;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 2;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S29;
      end
      LEDMatrixAB_m_main_ci_b1_S29: begin
        m_main_ci_frameBuffer_addr <= 29;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 6;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S30;
      end
      LEDMatrixAB_m_main_ci_b1_S30: begin
        m_main_ci_frameBuffer_addr <= 30;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 6;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S31;
      end
      LEDMatrixAB_m_main_ci_b1_S31: begin
        m_main_ci_frameBuffer_addr <= 31;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 6;
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
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S35;
      end
      LEDMatrixAB_m_main_ci_b1_S35: begin
        m_main_ci_frameBuffer_addr <= 35;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 4;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S36;
      end
      LEDMatrixAB_m_main_ci_b1_S36: begin
        m_main_ci_frameBuffer_addr <= 36;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S37;
      end
      LEDMatrixAB_m_main_ci_b1_S37: begin
        m_main_ci_frameBuffer_addr <= 37;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 8;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S38;
      end
      LEDMatrixAB_m_main_ci_b1_S38: begin
        m_main_ci_frameBuffer_addr <= 38;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 8;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S39;
      end
      LEDMatrixAB_m_main_ci_b1_S39: begin
        m_main_ci_frameBuffer_addr <= 39;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 8;
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
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S43;
      end
      LEDMatrixAB_m_main_ci_b1_S43: begin
        m_main_ci_frameBuffer_addr <= 43;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 6;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S44;
      end
      LEDMatrixAB_m_main_ci_b1_S44: begin
        m_main_ci_frameBuffer_addr <= 44;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
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
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S47;
      end
      LEDMatrixAB_m_main_ci_b1_S47: begin
        m_main_ci_frameBuffer_addr <= 47;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
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
        m_main_ci_frameBuffer_d <= 6;
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
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S55;
      end
      LEDMatrixAB_m_main_ci_b1_S55: begin
        m_main_ci_frameBuffer_addr <= 55;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
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
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S63;
      end
      LEDMatrixAB_m_main_ci_b1_S63: begin
        m_main_ci_frameBuffer_addr <= 63;
        m_main_ci_frameBuffer_we <= 1;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_frameBuffer_d <= 33;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_b1_S64;
      end
      LEDMatrixAB_m_main_ci_b1_S64: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_while2_S0;
      end
      LEDMatrixAB_m_main_ci_L1_while2_S0: begin
        m_main_ci_t621 <= swA;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_while2_S1;
      end
      LEDMatrixAB_m_main_ci_L1_while2_S1: begin
        /* m_main_ci_c622 <= (m_main_ci_t621 == 0); */
        if (m_main_ci_c622) begin
          /* m_main_ci_antiChatter_RESET3 <= (m_main_ci_antiChatter_RESET2 + 1); */
          /* m_main_ci_c623 <= (m_main_ci_antiChatter_RESET3 > 10); */
          if (m_main_ci_c623) begin
            m_main_ci_frameBuffer_addr <= 63;
            m_main_ci_frameBuffer_we <= 1;
            m_main_ci_frameBuffer_req <= 1;
            m_main_ci_frameBuffer_d <= 0;
            /* m_main_ci_c1151 <= (m_main_ci_c622 && m_main_ci_c623); */
            /* m_main_ci_c754 <= (m_main_ci_c622 && m_main_ci_c623); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen5_S1;
          end else begin
            m_main_ci_t624 <= rotary_a;
            /* m_main_ci_c1152 <= (m_main_ci_c622 && !m_main_ci_c623); */
            /* m_main_ci_c755 <= (m_main_ci_c622 && !m_main_ci_c623); */
            /* m_main_ci_antiChatter_RESET6 <= (m_main_ci_c622 && !m_main_ci_c623) ? m_main_ci_antiChatter_RESET3 : m_main_ci_c753 ? 0 : 'bz; */
            /* m_main_ci_c784 <= (m_main_ci_c753 || m_main_ci_c755); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b7_S1;
          end
        end else begin
          /* m_main_ci_c1150 <= !m_main_ci_c622; */
          /* m_main_ci_c753 <= !m_main_ci_c622; */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b7_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen5_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_whilebridge6_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b7_S0: begin
        m_main_ci_t624 <= rotary_a;
        /* m_main_ci_c1152 <= (m_main_ci_c622 && !m_main_ci_c623); */
        /* m_main_ci_c755 <= (m_main_ci_c622 && !m_main_ci_c623); */
        /* m_main_ci_antiChatter_RESET6 <= (m_main_ci_c622 && !m_main_ci_c623) ? m_main_ci_antiChatter_RESET3 : m_main_ci_c753 ? 0 : 'bz; */
        /* m_main_ci_c784 <= (m_main_ci_c753 || m_main_ci_c755); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b7_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b7_S1: begin
        /* m_main_ci_c625 <= (m_main_ci_oldRE_a2 != m_main_ci_t624); */
        if (m_main_ci_c625) begin
          /* m_main_ci_untiChatter13 <= (m_main_ci_untiChatter12 + 1); */
          /* m_main_ci_c626 <= (m_main_ci_untiChatter13 > 10); */
          /* m_main_ci_c1153 <= ((m_main_ci_c1152 || m_main_ci_c1150) && m_main_ci_c625); */
          /* m_main_ci_c785 <= (m_main_ci_c753 || m_main_ci_c755); */
          /* m_main_ci_c756 <= (m_main_ci_c785 && m_main_ci_c625); */
          if (m_main_ci_c626) begin
            m_main_ci_t628 <= rotary_b;
            /* m_main_ci_c627 <= (m_main_ci_oldRE_a2 != 0); */
            /* m_main_ci_xvalue3 <= (m_main_ci_xvalue2 - 1); */
            /* m_main_ci_xvalue4 <= (m_main_ci_xvalue2 + 1); */
            /* m_main_ci_c1155 <= (m_main_ci_c1153 && m_main_ci_c626); */
            /* m_main_ci_c758 <= (m_main_ci_c756 && m_main_ci_c626); */
            /* m_main_ci_c759 <= (m_main_ci_c758 && m_main_ci_c627); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen9_S1;
          end else begin
            m_main_ci_t630 <= rotary2_a;
            /* m_main_ci_c1158 <= (m_main_ci_c1153 && !m_main_ci_c626); */
            /* m_main_ci_c762 <= (m_main_ci_c756 && !m_main_ci_c626); */
            /* m_main_ci_c1159 <= (m_main_ci_c1157 || m_main_ci_c1156); */
            /* m_main_ci_c788 <= (m_main_ci_c762 || m_main_ci_c757); */
            /* m_main_ci_c763 <= (m_main_ci_c786 || m_main_ci_c760); */
            /* m_main_ci_oldRE_a7 <= m_main_ci_c787 ? m_main_ci_oldRE_a5 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_oldRE_a2 : m_main_ci_c757 ? m_main_ci_oldRE_a6 : 'bz; */
            /* m_main_ci_untiChatter18 <= m_main_ci_c787 ? 0 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_untiChatter13 : m_main_ci_c757 ? 0 : 'bz; */
            /* m_main_ci_xvalue6 <= m_main_ci_c787 ? m_main_ci_xvalue5 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_xvalue2 : m_main_ci_c757 ? m_main_ci_xvalue2 : 'bz; */
            /* m_main_ci_c789 <= (m_main_ci_c788 || m_main_ci_c763); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b12_S1;
          end
        end else begin
          m_main_ci_oldRE_a6 <= rotary_a;
          /* m_main_ci_c1154 <= ((m_main_ci_c1152 || m_main_ci_c1150) && !m_main_ci_c625); */
          /* m_main_ci_c809 <= (m_main_ci_c753 || m_main_ci_c755); */
          /* m_main_ci_c757 <= (m_main_ci_c809 && !m_main_ci_c625); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b12_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen9_S1: begin
        /* m_main_ci_c629 <= (m_main_ci_t628 != 0); */
        /* m_main_ci_c742 <= (!m_main_ci_c627 && m_main_ci_c629); */
        /* m_main_ci_c743 <= (!m_main_ci_c627 && !m_main_ci_c629); */
        /* m_main_ci_c760 <= (m_main_ci_c758 && m_main_ci_c742); */
        /* m_main_ci_c761 <= (m_main_ci_c758 && m_main_ci_c743); */
        if (m_main_ci_c627) begin
          m_main_ci_oldRE_a3 <= rotary_a;
          /* m_main_ci_c1156 <= (m_main_ci_c1155 && m_main_ci_c627); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b11_S0;
        end else if (m_main_ci_c742) begin
          m_main_ci_oldRE_a5 <= rotary_a;
          /* m_main_ci_c1157 <= ((m_main_ci_c1155 && m_main_ci_c742) || (m_main_ci_c1155 && m_main_ci_c743)); */
          /* m_main_ci_xvalue5 <= m_main_ci_c759 ? m_main_ci_xvalue2 : m_main_ci_c760 ? m_main_ci_xvalue3 : m_main_ci_c761 ? m_main_ci_xvalue4 : 'bz; */
          /* m_main_ci_c786 <= (m_main_ci_c761 || m_main_ci_c759); */
          /* m_main_ci_c787 <= (m_main_ci_c786 || m_main_ci_c760); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b11_S1;
        end else if (m_main_ci_c743) begin
          m_main_ci_oldRE_a5 <= rotary_a;
          /* m_main_ci_c1157 <= ((m_main_ci_c1155 && m_main_ci_c742) || (m_main_ci_c1155 && m_main_ci_c743)); */
          /* m_main_ci_xvalue5 <= m_main_ci_c759 ? m_main_ci_xvalue2 : m_main_ci_c760 ? m_main_ci_xvalue3 : m_main_ci_c761 ? m_main_ci_xvalue4 : 'bz; */
          /* m_main_ci_c786 <= (m_main_ci_c761 || m_main_ci_c759); */
          /* m_main_ci_c787 <= (m_main_ci_c786 || m_main_ci_c760); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b11_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b11_S0: begin
        m_main_ci_oldRE_a5 <= rotary_a;
        /* m_main_ci_c1157 <= ((m_main_ci_c1155 && m_main_ci_c742) || (m_main_ci_c1155 && m_main_ci_c743)); */
        /* m_main_ci_xvalue5 <= m_main_ci_c759 ? m_main_ci_xvalue2 : m_main_ci_c760 ? m_main_ci_xvalue3 : m_main_ci_c761 ? m_main_ci_xvalue4 : 'bz; */
        /* m_main_ci_c786 <= (m_main_ci_c761 || m_main_ci_c759); */
        /* m_main_ci_c787 <= (m_main_ci_c786 || m_main_ci_c760); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b11_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b11_S1: begin
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b12_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b12_S0: begin
        m_main_ci_t630 <= rotary2_a;
        /* m_main_ci_c1158 <= (m_main_ci_c1153 && !m_main_ci_c626); */
        /* m_main_ci_c762 <= (m_main_ci_c756 && !m_main_ci_c626); */
        /* m_main_ci_c1159 <= (m_main_ci_c1157 || m_main_ci_c1156); */
        /* m_main_ci_c788 <= (m_main_ci_c762 || m_main_ci_c757); */
        /* m_main_ci_c763 <= (m_main_ci_c786 || m_main_ci_c760); */
        /* m_main_ci_oldRE_a7 <= m_main_ci_c787 ? m_main_ci_oldRE_a5 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_oldRE_a2 : m_main_ci_c757 ? m_main_ci_oldRE_a6 : 'bz; */
        /* m_main_ci_untiChatter18 <= m_main_ci_c787 ? 0 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_untiChatter13 : m_main_ci_c757 ? 0 : 'bz; */
        /* m_main_ci_xvalue6 <= m_main_ci_c787 ? m_main_ci_xvalue5 : (m_main_ci_c756 && !m_main_ci_c626) ? m_main_ci_xvalue2 : m_main_ci_c757 ? m_main_ci_xvalue2 : 'bz; */
        /* m_main_ci_c789 <= (m_main_ci_c788 || m_main_ci_c763); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b12_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b12_S1: begin
        /* m_main_ci_c631 <= (m_main_ci_oldRE2_a2 != m_main_ci_t630); */
        if (m_main_ci_c631) begin
          /* m_main_ci_untiChatter23 <= (m_main_ci_untiChatter22 + 1); */
          /* m_main_ci_c632 <= (m_main_ci_untiChatter23 > 10); */
          /* m_main_ci_c1160 <= (((m_main_ci_c1154 || m_main_ci_c1158) || m_main_ci_c1159) && m_main_ci_c631); */
          /* m_main_ci_c790 <= (m_main_ci_c788 || m_main_ci_c763); */
          /* m_main_ci_c764 <= (m_main_ci_c790 && m_main_ci_c631); */
          if (m_main_ci_c632) begin
            m_main_ci_t634 <= rotary2_b;
            /* m_main_ci_c633 <= (m_main_ci_oldRE2_a2 != 0); */
            /* m_main_ci_yvalue3 <= (m_main_ci_yvalue2 + 1); */
            /* m_main_ci_yvalue4 <= (m_main_ci_yvalue2 - 1); */
            /* m_main_ci_c1162 <= (m_main_ci_c1160 && m_main_ci_c632); */
            /* m_main_ci_c766 <= (m_main_ci_c764 && m_main_ci_c632); */
            /* m_main_ci_c767 <= (m_main_ci_c766 && m_main_ci_c633); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen14_S1;
          end else begin
            m_main_ci_t636 <= rotary_SW;
            /* m_main_ci_c1165 <= (m_main_ci_c1160 && !m_main_ci_c632); */
            /* m_main_ci_c1166 <= (m_main_ci_c1164 || m_main_ci_c1163); */
            /* m_main_ci_c770 <= (m_main_ci_c764 && !m_main_ci_c632); */
            /* m_main_ci_c793 <= (m_main_ci_c765 || m_main_ci_c770); */
            /* m_main_ci_c771 <= (m_main_ci_c791 || m_main_ci_c767); */
            /* m_main_ci_oldRE2_a7 <= m_main_ci_c792 ? m_main_ci_oldRE2_a5 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_oldRE2_a2 : m_main_ci_c765 ? m_main_ci_oldRE2_a6 : 'bz; */
            /* m_main_ci_untiChatter28 <= m_main_ci_c792 ? 0 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_untiChatter23 : m_main_ci_c765 ? 0 : 'bz; */
            /* m_main_ci_yvalue6 <= m_main_ci_c792 ? m_main_ci_yvalue5 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_yvalue2 : m_main_ci_c765 ? m_main_ci_yvalue2 : 'bz; */
            /* m_main_ci_c794 <= (m_main_ci_c793 || m_main_ci_c771); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S1;
          end
        end else begin
          m_main_ci_oldRE2_a6 <= rotary2_a;
          /* m_main_ci_c1161 <= (((m_main_ci_c1154 || m_main_ci_c1158) || m_main_ci_c1159) && !m_main_ci_c631); */
          /* m_main_ci_c808 <= (m_main_ci_c788 || m_main_ci_c763); */
          /* m_main_ci_c765 <= (m_main_ci_c808 && !m_main_ci_c631); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen14_S1: begin
        /* m_main_ci_c635 <= (m_main_ci_t634 != 0); */
        /* m_main_ci_c744 <= (!m_main_ci_c633 && m_main_ci_c635); */
        /* m_main_ci_c745 <= (!m_main_ci_c633 && !m_main_ci_c635); */
        /* m_main_ci_c768 <= (m_main_ci_c766 && m_main_ci_c744); */
        /* m_main_ci_c769 <= (m_main_ci_c766 && m_main_ci_c745); */
        if (m_main_ci_c633) begin
          m_main_ci_oldRE2_a3 <= rotary2_a;
          /* m_main_ci_c1163 <= (m_main_ci_c1162 && m_main_ci_c633); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b16_S0;
        end else if (m_main_ci_c744) begin
          m_main_ci_oldRE2_a5 <= rotary2_a;
          /* m_main_ci_c1164 <= ((m_main_ci_c1162 && m_main_ci_c744) || (m_main_ci_c1162 && m_main_ci_c745)); */
          /* m_main_ci_yvalue5 <= m_main_ci_c767 ? m_main_ci_yvalue2 : m_main_ci_c768 ? m_main_ci_yvalue3 : m_main_ci_c769 ? m_main_ci_yvalue4 : 'bz; */
          /* m_main_ci_c791 <= (m_main_ci_c768 || m_main_ci_c769); */
          /* m_main_ci_c792 <= (m_main_ci_c791 || m_main_ci_c767); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b16_S1;
        end else if (m_main_ci_c745) begin
          m_main_ci_oldRE2_a5 <= rotary2_a;
          /* m_main_ci_c1164 <= ((m_main_ci_c1162 && m_main_ci_c744) || (m_main_ci_c1162 && m_main_ci_c745)); */
          /* m_main_ci_yvalue5 <= m_main_ci_c767 ? m_main_ci_yvalue2 : m_main_ci_c768 ? m_main_ci_yvalue3 : m_main_ci_c769 ? m_main_ci_yvalue4 : 'bz; */
          /* m_main_ci_c791 <= (m_main_ci_c768 || m_main_ci_c769); */
          /* m_main_ci_c792 <= (m_main_ci_c791 || m_main_ci_c767); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b16_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b16_S0: begin
        m_main_ci_oldRE2_a5 <= rotary2_a;
        /* m_main_ci_c1164 <= ((m_main_ci_c1162 && m_main_ci_c744) || (m_main_ci_c1162 && m_main_ci_c745)); */
        /* m_main_ci_yvalue5 <= m_main_ci_c767 ? m_main_ci_yvalue2 : m_main_ci_c768 ? m_main_ci_yvalue3 : m_main_ci_c769 ? m_main_ci_yvalue4 : 'bz; */
        /* m_main_ci_c791 <= (m_main_ci_c768 || m_main_ci_c769); */
        /* m_main_ci_c792 <= (m_main_ci_c791 || m_main_ci_c767); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b16_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b16_S1: begin
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b17_S0: begin
        m_main_ci_t636 <= rotary_SW;
        /* m_main_ci_c1165 <= (m_main_ci_c1160 && !m_main_ci_c632); */
        /* m_main_ci_c1166 <= (m_main_ci_c1164 || m_main_ci_c1163); */
        /* m_main_ci_c770 <= (m_main_ci_c764 && !m_main_ci_c632); */
        /* m_main_ci_c793 <= (m_main_ci_c765 || m_main_ci_c770); */
        /* m_main_ci_c771 <= (m_main_ci_c791 || m_main_ci_c767); */
        /* m_main_ci_oldRE2_a7 <= m_main_ci_c792 ? m_main_ci_oldRE2_a5 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_oldRE2_a2 : m_main_ci_c765 ? m_main_ci_oldRE2_a6 : 'bz; */
        /* m_main_ci_untiChatter28 <= m_main_ci_c792 ? 0 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_untiChatter23 : m_main_ci_c765 ? 0 : 'bz; */
        /* m_main_ci_yvalue6 <= m_main_ci_c792 ? m_main_ci_yvalue5 : (m_main_ci_c764 && !m_main_ci_c632) ? m_main_ci_yvalue2 : m_main_ci_c765 ? m_main_ci_yvalue2 : 'bz; */
        /* m_main_ci_c794 <= (m_main_ci_c793 || m_main_ci_c771); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b17_S1: begin
        /* m_main_ci_c637 <= (m_main_ci_t636 == 0); */
        if (m_main_ci_c637) begin
          /* m_main_ci_antiChatter_RESW13 <= (m_main_ci_antiChatter_RESW12 + 1); */
          /* m_main_ci_c638 <= (m_main_ci_antiChatter_RESW13 > 10); */
          /* m_main_ci_c1167 <= (((m_main_ci_c1165 || m_main_ci_c1161) || m_main_ci_c1166) && m_main_ci_c637); */
          /* m_main_ci_c795 <= (m_main_ci_c793 || m_main_ci_c771); */
          /* m_main_ci_c772 <= (m_main_ci_c795 && m_main_ci_c637); */
          /* m_main_ci_c774 <= (m_main_ci_c772 && m_main_ci_c638); */
          if (m_main_ci_c638) begin
            boardLED2 <= 1;
            /* m_main_ci_c1169 <= (m_main_ci_c1167 && m_main_ci_c638); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b20_S0;
          end else begin
            /* m_main_ci_c1170 <= (m_main_ci_c1167 && !m_main_ci_c638); */
            /* m_main_ci_t908 <= m_main_ci_c774 ? 11 : (m_main_ci_c772 && !m_main_ci_c638) ? m_main_ci_antiChatter_RESW13 : 'bz; */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b21_S0;
          end
        end else begin
          boardLED2 <= 0;
          /* m_main_ci_c1168 <= (((m_main_ci_c1165 || m_main_ci_c1161) || m_main_ci_c1166) && !m_main_ci_c637); */
          /* m_main_ci_c807 <= (m_main_ci_c793 || m_main_ci_c771); */
          /* m_main_ci_c773 <= (m_main_ci_c807 && !m_main_ci_c637); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b21_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b20_S0: begin
        /* m_main_ci_c1170 <= (m_main_ci_c1167 && !m_main_ci_c638); */
        /* m_main_ci_t908 <= m_main_ci_c774 ? 11 : (m_main_ci_c772 && !m_main_ci_c638) ? m_main_ci_antiChatter_RESW13 : 'bz; */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b21_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b21_S0: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /* m_main_ci_t639 <= (m_main_ci_old_xvalue2 * 8); */
        /* m_main_ci_prev_Cursor <= (m_main_ci_t639 + m_main_ci_old_yvalue2); */
        /* m_main_ci_c1171 <= (m_main_ci_c1170 || m_main_ci_c1169); */
        /* m_main_ci_c775 <= (m_main_ci_c772 && !m_main_ci_c638); */
        /* m_main_ci_c796 <= (m_main_ci_c775 || m_main_ci_c773); */
        /* m_main_ci_antiChatter_RESW16 <= m_main_ci_c772 ? m_main_ci_t908 : m_main_ci_c773 ? 0 : 'bz; */
        /* m_main_ci_c797 <= (m_main_ci_c796 || m_main_ci_c774); */
        /* m_main_ci_c798 <= (m_main_ci_c796 || m_main_ci_c774); */
        /* m_main_ci_c806 <= (m_main_ci_c796 || m_main_ci_c774); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b21_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b21_S1: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b21_S2;
      end
      LEDMatrixAB_m_main_ci_L1_b21_S2: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t640 <= m_main_ci_frameBuffer_q;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b21_S3;
      end
      LEDMatrixAB_m_main_ci_L1_b21_S3: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t643 <= m_main_ci_frameBuffer_q;
        /* m_main_ci_t641 <= (m_main_ci_t640 & 1); */
        /* m_main_ci_c642 <= (m_main_ci_t641 != 0); */
        /* m_main_ci_c776 <= (m_main_ci_c798 && m_main_ci_c642); */
        /* m_main_ci_c777 <= (m_main_ci_c806 && !m_main_ci_c642); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b21_S4;
      end
      LEDMatrixAB_m_main_ci_L1_b21_S4: begin
        m_main_ci_t663 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        /* m_main_ci_t644 <= (m_main_ci_t643 | 32); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b21_S5;
      end
      LEDMatrixAB_m_main_ci_L1_b21_S5: begin
        /* m_main_ci_t664 <= (m_main_ci_t663 & 31); */
        if (m_main_ci_c642) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t644;
          /* m_main_ci_c1172 <= ((m_main_ci_c1168 || m_main_ci_c1171) && m_main_ci_c642); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen22_S1;
        end else begin
          m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t664;
          /* m_main_ci_c1173 <= ((m_main_ci_c1168 || m_main_ci_c1171) && !m_main_ci_c642); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifelse36_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen22_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b23_S0;
      end
      LEDMatrixAB_m_main_ci_L1_ifelse36_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b23_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b23_S0: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_t646 <= quaterSecondCLK;
        /* m_main_ci_t645 <= (m_main_ci_xvalue6 * 8); */
        /* m_main_ci_cursor <= (m_main_ci_t645 + m_main_ci_yvalue6); */
        /* m_main_ci_c799 <= (m_main_ci_c777 || m_main_ci_c776); */
        /* m_main_ci_c800 <= (m_main_ci_c777 || m_main_ci_c776); */
        /* m_main_ci_c805 <= (m_main_ci_c777 || m_main_ci_c776); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b23_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b23_S1: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        /* m_main_ci_c647 <= (m_main_ci_t646 != 0); */
        /* m_main_ci_c778 <= (m_main_ci_c800 && m_main_ci_c647); */
        /* m_main_ci_c779 <= (m_main_ci_c805 && !m_main_ci_c647); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b23_S2;
      end
      LEDMatrixAB_m_main_ci_L1_b23_S2: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t648 <= m_main_ci_frameBuffer_q;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b23_S3;
      end
      LEDMatrixAB_m_main_ci_L1_b23_S3: begin
        m_main_ci_t661 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        /* m_main_ci_t649 <= (m_main_ci_t648 & 31); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b23_S4;
      end
      LEDMatrixAB_m_main_ci_L1_b23_S4: begin
        /* m_main_ci_t662 <= (m_main_ci_t661 | 32); */
        if (m_main_ci_c647) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t649;
          /* m_main_ci_c1174 <= ((m_main_ci_c1172 || m_main_ci_c1173) && m_main_ci_c647); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen24_S1;
        end else begin
          m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t662;
          /* m_main_ci_c1175 <= ((m_main_ci_c1172 || m_main_ci_c1173) && !m_main_ci_c647); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifelse35_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen24_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b25_S0;
      end
      LEDMatrixAB_m_main_ci_L1_ifelse35_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b25_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b25_S0: begin
        m_main_ci_t650 <= quaterSecondCLK;
        m_main_ci_counter6093 <= 0;
        /* m_main_ci_c801 <= (m_main_ci_c779 || m_main_ci_c778); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b25_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b25_S1: begin
        boardLED1 <= m_main_ci_t650;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L2_fortest26_S0;
      end
      LEDMatrixAB_m_main_ci_L1_whilebridge6_S0: begin
        /* m_main_ci_antiChatter_RESET7 <= m_main_ci_c754 ? 11 : m_main_ci_c804 ? m_main_ci_antiChatter_RESET6 : 'bz; */
        /* m_main_ci_antiChatter_RESW17 <= m_main_ci_c754 ? m_main_ci_antiChatter_RESW12 : m_main_ci_c804 ? m_main_ci_antiChatter_RESW16 : 'bz; */
        /* m_main_ci_loopCounter4 <= m_main_ci_c754 ? m_main_ci_loopCounter2 : m_main_ci_c804 ? m_main_ci_loopCounter3 : 'bz; */
        /* m_main_ci_oldRE2_a8 <= m_main_ci_c754 ? m_main_ci_oldRE2_a2 : m_main_ci_c804 ? m_main_ci_oldRE2_a7 : 'bz; */
        /* m_main_ci_oldRE_a8 <= m_main_ci_c754 ? m_main_ci_oldRE_a2 : m_main_ci_c804 ? m_main_ci_oldRE_a7 : 'bz; */
        /* m_main_ci_old_xvalue4 <= m_main_ci_c754 ? m_main_ci_old_xvalue2 : m_main_ci_c804 ? m_main_ci_xvalue6 : 'bz; */
        /* m_main_ci_old_yvalue4 <= m_main_ci_c754 ? m_main_ci_old_yvalue2 : m_main_ci_c804 ? m_main_ci_yvalue6 : 'bz; */
        /* m_main_ci_untiChatter19 <= m_main_ci_c754 ? m_main_ci_untiChatter12 : m_main_ci_c804 ? m_main_ci_untiChatter18 : 'bz; */
        /* m_main_ci_untiChatter29 <= m_main_ci_c754 ? m_main_ci_untiChatter22 : m_main_ci_c804 ? m_main_ci_untiChatter28 : 'bz; */
        /* m_main_ci_xvalue7 <= m_main_ci_c754 ? m_main_ci_xvalue2 : m_main_ci_c804 ? m_main_ci_xvalue6 : 'bz; */
        /* m_main_ci_yvalue7 <= m_main_ci_c754 ? m_main_ci_yvalue2 : m_main_ci_c804 ? m_main_ci_yvalue6 : 'bz; */
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
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_while2_S0;
      end
      LEDMatrixAB_m_main_ci_L2_fortest26_S0: begin
        /* m_main_ci_c652 <= (m_main_ci_counter6093 < 14); */
        /* m_main_ci_c802 <= (m_main_ci_c779 || m_main_ci_c778); */
        if (m_main_ci_c652) begin
          row <= m_main_ci_t653;
          /* m_main_ci_c803 <= (m_main_ci_c779 || m_main_ci_c778); */
          /* m_main_ci_lightLevel <= m_main_ci_unnamed608(m_main_ci_counter6093); */
          /* m_main_ci_t653 <= (1 << m_main_ci_loopCounter2); */
          m_main_ci_currentLine4 <= 0;
          m_main_ci_j4 <= 0;
          /* m_main_ci_c1176 <= ((m_main_ci_c1175 || m_main_ci_c1174) && m_main_ci_c652); */
          /* m_main_ci_c780 <= (m_main_ci_c803 && m_main_ci_c652); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_fortest28_S0;
        end else begin
          /* m_main_ci_loopCounter3 <= (m_main_ci_loopCounter2 + 1); */
          /* m_main_ci_c804 <= (m_main_ci_c779 || m_main_ci_c778); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_whilebridge6_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L3_fortest28_S0: begin
        /* m_main_ci_c654 <= (m_main_ci_j4 < 8); */
        if (m_main_ci_c654) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_t656;
          m_main_ci_frameBuffer_we <= 0;
          m_main_ci_frameBuffer_req <= 1;
          /* m_main_ci_t655 <= (m_main_ci_loopCounter2 * 8); */
          /* m_main_ci_t660 <= (128 >>> m_main_ci_j4); */
          /* m_main_ci_j5 <= (m_main_ci_j4 + 1); */
          /* m_main_ci_c1177 <= (m_main_ci_c1176 && m_main_ci_c654); */
          /* m_main_ci_c781 <= (m_main_ci_c780 && m_main_ci_c654); */
          /* m_main_ci_t656 <= (m_main_ci_t655 + m_main_ci_j4); */
          /* m_main_ci_currentLine5 <= (m_main_ci_currentLine4 | m_main_ci_t660); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody29_S1;
        end else begin
          col <= m_main_ci_currentLine4;
          /* m_main_ci_t614_inl1 <= (interval / 2); */
          m_main_ci_i_inl14 <= 0;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L4_fortest31_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L3_forbody29_S1: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody29_S2;
      end
      LEDMatrixAB_m_main_ci_L3_forbody29_S2: begin
        m_main_ci_t657 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody29_S3;
      end
      LEDMatrixAB_m_main_ci_L3_forbody29_S3: begin
        /* m_main_ci_t658 <= (m_main_ci_t657 >>> 1); */
        /* m_main_ci_c659 <= (m_main_ci_t658 > m_main_ci_lightLevel); */
        /* m_main_ci_c782 <= (m_main_ci_c781 && m_main_ci_c659); */
        /* m_main_ci_currentLine6 <= m_main_ci_c782 ? m_main_ci_currentLine5 : (m_main_ci_c781 && !m_main_ci_c659) ? m_main_ci_currentLine4 : 'bz; */
        m_main_ci_currentLine4 <= m_main_ci_currentLine6;
        m_main_ci_j4 <= m_main_ci_j5;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_fortest28_S0;
      end
      LEDMatrixAB_m_main_ci_L4_fortest31_S0: begin
        /* m_main_ci_c618_inl1 <= (m_main_ci_i_inl14 < m_main_ci_t614_inl1); */
        if (m_main_ci_c618_inl1) begin
          /* m_main_ci_i_inl15 <= (m_main_ci_i_inl14 + 1); */
          /* m_main_ci_c1178 <= (m_main_ci_c1176 && m_main_ci_c618_inl1); */
          /* m_main_ci_c783 <= (m_main_ci_c780 && m_main_ci_c618_inl1); */
          m_main_ci_i_inl14 <= m_main_ci_i_inl15;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L4_fortest31_S0;
        end else begin
          /* m_main_ci_counter6094 <= (m_main_ci_counter6093 + 1); */
          m_main_ci_counter6093 <= m_main_ci_counter6094;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L2_fortest26_S0;
        end
      end
      endcase
    end
  end
  

endmodule

