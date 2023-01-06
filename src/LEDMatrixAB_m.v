module LEDMatrixAB_m
  (
    input wire clk,
    input wire rst,
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
    input wire swA,
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
  localparam LEDMatrixAB_m_main_ci_L1_ifelse33_S0 = 69;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse33_S1 = 70;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen5_S0 = 71;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen5_S1 = 72;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen6_S0 = 73;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen6_S1 = 74;
  localparam LEDMatrixAB_m_main_ci_L1_b7_S0 = 75;
  localparam LEDMatrixAB_m_main_ci_L1_b7_S1 = 76;
  localparam LEDMatrixAB_m_main_ci_L1_b8_S0 = 77;
  localparam LEDMatrixAB_m_main_ci_L1_b8_S1 = 78;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen9_S0 = 79;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse32_S0 = 80;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse32_S1 = 81;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen10_S0 = 82;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen10_S1 = 83;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen11_S0 = 84;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen11_S1 = 85;
  localparam LEDMatrixAB_m_main_ci_L1_b12_S0 = 86;
  localparam LEDMatrixAB_m_main_ci_L1_b12_S1 = 87;
  localparam LEDMatrixAB_m_main_ci_L1_b13_S0 = 88;
  localparam LEDMatrixAB_m_main_ci_L1_b13_S1 = 89;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen14_S0 = 90;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen14_S1 = 91;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse31_S0 = 92;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse31_S1 = 93;
  localparam LEDMatrixAB_m_main_ci_L1_b15_S0 = 94;
  localparam LEDMatrixAB_m_main_ci_L1_b15_S1 = 95;
  localparam LEDMatrixAB_m_main_ci_L1_b15_S2 = 96;
  localparam LEDMatrixAB_m_main_ci_L1_b15_S3 = 97;
  localparam LEDMatrixAB_m_main_ci_L1_b15_S4 = 98;
  localparam LEDMatrixAB_m_main_ci_L1_b15_S5 = 99;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen16_S0 = 100;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen16_S1 = 101;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse30_S0 = 102;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse30_S1 = 103;
  localparam LEDMatrixAB_m_main_ci_L1_b17_S0 = 104;
  localparam LEDMatrixAB_m_main_ci_L1_b17_S1 = 105;
  localparam LEDMatrixAB_m_main_ci_L1_b17_S2 = 106;
  localparam LEDMatrixAB_m_main_ci_L1_b17_S3 = 107;
  localparam LEDMatrixAB_m_main_ci_L1_b17_S4 = 108;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen18_S0 = 109;
  localparam LEDMatrixAB_m_main_ci_L1_ifthen18_S1 = 110;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse29_S0 = 111;
  localparam LEDMatrixAB_m_main_ci_L1_ifelse29_S1 = 112;
  localparam LEDMatrixAB_m_main_ci_L1_b19_S0 = 113;
  localparam LEDMatrixAB_m_main_ci_L1_b19_S1 = 114;
  localparam LEDMatrixAB_m_main_ci_L1_b19_S2 = 115;
  localparam LEDMatrixAB_m_main_ci_L1_forelse28_S0 = 116;
  localparam LEDMatrixAB_m_main_ci_L1_forelse28_S1 = 117;
  localparam LEDMatrixAB_m_main_ci_L2_fortest20_S0 = 118;
  localparam LEDMatrixAB_m_main_ci_L2_forbody21_S0 = 119;
  localparam LEDMatrixAB_m_main_ci_L2_forbody21_S1 = 120;
  localparam LEDMatrixAB_m_main_ci_L2_forelse24_S0 = 121;
  localparam LEDMatrixAB_m_main_ci_L2_forelse24_S1 = 122;
  localparam LEDMatrixAB_m_main_ci_L2_forelse27_S0 = 123;
  localparam LEDMatrixAB_m_main_ci_L2_forelse27_S1 = 124;
  localparam LEDMatrixAB_m_main_ci_L3_fortest22_S0 = 125;
  localparam LEDMatrixAB_m_main_ci_L3_forbody23_S0 = 126;
  localparam LEDMatrixAB_m_main_ci_L3_forbody23_S1 = 127;
  localparam LEDMatrixAB_m_main_ci_L3_forbody23_S2 = 128;
  localparam LEDMatrixAB_m_main_ci_L3_forbody23_S3 = 129;
  localparam LEDMatrixAB_m_main_ci_L3_forbody23_S4 = 130;
  localparam LEDMatrixAB_m_main_ci_L4_fortest25_S0 = 131;
  localparam LEDMatrixAB_m_main_ci_L4_forbody26_S0 = 132;
  localparam LEDMatrixAB_m_main_ci_L4_forbody26_S1 = 133;
  
  //signals: 
  wire        [7:0] m_main_ci_antiChatter_RESW13;
  wire        [7:0] m_main_ci_antiChatter_RESW15;
  wire m_main_ci_c1040;
  wire m_main_ci_c1041;
  wire m_main_ci_c1042;
  wire m_main_ci_c1043;
  wire m_main_ci_c1044;
  wire m_main_ci_c1045;
  wire m_main_ci_c1046;
  wire m_main_ci_c1047;
  wire m_main_ci_c1048;
  wire m_main_ci_c1049;
  wire m_main_ci_c1050;
  wire m_main_ci_c1051;
  wire m_main_ci_c1052;
  wire m_main_ci_c617_inl1;
  wire m_main_ci_c621;
  wire m_main_ci_c622;
  wire m_main_ci_c623;
  wire m_main_ci_c625;
  wire m_main_ci_c627;
  wire m_main_ci_c628;
  wire m_main_ci_c629;
  wire m_main_ci_c631;
  wire m_main_ci_c633;
  wire m_main_ci_c634;
  wire m_main_ci_c638;
  wire m_main_ci_c643;
  wire m_main_ci_c648;
  wire m_main_ci_c650;
  wire m_main_ci_c655;
  wire m_main_ci_c738;
  wire m_main_ci_c739;
  wire m_main_ci_c740;
  wire m_main_ci_c741;
  wire m_main_ci_c749;
  wire m_main_ci_c750;
  wire m_main_ci_c751;
  wire m_main_ci_c752;
  wire m_main_ci_c753;
  wire m_main_ci_c755;
  wire m_main_ci_c756;
  wire m_main_ci_c757;
  wire m_main_ci_c758;
  wire m_main_ci_c759;
  wire m_main_ci_c761;
  wire m_main_ci_c769;
  wire m_main_ci_c770;
  wire m_main_ci_c771;
  wire m_main_ci_c772;
  wire m_main_ci_c773;
  wire m_main_ci_c774;
  wire m_main_ci_c775;
  wire        [5:0] m_main_ci_cursor;
  wire        [2:0] m_main_ci_loopCounter3;
  wire m_main_ci_oldRE2_a7;
  wire m_main_ci_oldRE_a7;
  wire        [5:0] m_main_ci_prev_Cursor;
  wire        [5:0] m_main_ci_t635;
  wire        [7:0] m_main_ci_t637;
  wire        [7:0] m_main_ci_t640;
  wire        [5:0] m_main_ci_t641;
  wire        [7:0] m_main_ci_t645;
  wire        [31:0] m_main_ci_t651;
  wire        [31:0] m_main_ci_t652;
  wire        [31:0] m_main_ci_t654;
  wire        [7:0] m_main_ci_t658;
  wire        [7:0] m_main_ci_t660;
  wire        [7:0] m_main_ci_untiChatter13;
  wire        [7:0] m_main_ci_untiChatter18;
  wire        [7:0] m_main_ci_untiChatter23;
  wire        [7:0] m_main_ci_untiChatter28;
  wire        [2:0] m_main_ci_xvalue3;
  wire        [2:0] m_main_ci_xvalue4;
  wire        [2:0] m_main_ci_xvalue5;
  wire        [2:0] m_main_ci_xvalue6;
  wire        [2:0] m_main_ci_yvalue3;
  wire        [2:0] m_main_ci_yvalue4;
  wire        [2:0] m_main_ci_yvalue5;
  wire        [2:0] m_main_ci_yvalue6;
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
  reg m_main_ci_t620;
  reg m_main_ci_t624;
  reg m_main_ci_t626;
  reg m_main_ci_t630;
  reg m_main_ci_t632;
  reg        [7:0] m_main_ci_t636;
  reg        [7:0] m_main_ci_t639;
  reg m_main_ci_t642;
  reg        [7:0] m_main_ci_t644;
  reg m_main_ci_t646;
  reg        [7:0] m_main_ci_t653;
  reg        [7:0] m_main_ci_t657;
  reg        [7:0] m_main_ci_t659;
  reg        [7:0] m_main_ci_untiChatter12;
  reg        [7:0] m_main_ci_untiChatter22;
  reg        [2:0] m_main_ci_xvalue2;
  reg        [2:0] m_main_ci_yvalue2;
  wire signed [31:0] interval;
  wire signed [31:0] m_main_ci_counter6084;
  wire signed [31:0] m_main_ci_currentLine5;
  wire signed [31:0] m_main_ci_currentLine6;
  wire signed [31:0] m_main_ci_i_inl15;
  wire signed [31:0] m_main_ci_j5;
  wire signed [31:0] m_main_ci_lightLevel;
  wire signed [31:0] m_main_ci_t613_inl1;
  wire signed [31:0] m_main_ci_t649;
  wire signed [31:0] m_main_ci_t656;
  reg signed [31:0] m_main_ci_counter6083;
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
  wire        [6:0] m_main_ci_array736_ram_addr;
  wire        [7:0] m_main_ci_array736_ram_d;
  wire        [6:0] m_main_ci_array736_ram_len;
  wire        [7:0] m_main_ci_array736_ram_q;
  wire m_main_ci_array736_ram_we;
  //combinations: 
  function [31:0] m_main_ci_unnamed607 (
    input [4:0] m_main_ci_unnamed607_in
  );
  begin
    case (m_main_ci_unnamed607_in)
      0: begin
        m_main_ci_unnamed607 = 0;
      end
      1: begin
        m_main_ci_unnamed607 = 1;
      end
      2: begin
        m_main_ci_unnamed607 = 2;
      end
      3: begin
        m_main_ci_unnamed607 = 3;
      end
      4: begin
        m_main_ci_unnamed607 = 4;
      end
      5: begin
        m_main_ci_unnamed607 = 4;
      end
      6: begin
        m_main_ci_unnamed607 = 5;
      end
      7: begin
        m_main_ci_unnamed607 = 5;
      end
      8: begin
        m_main_ci_unnamed607 = 6;
      end
      9: begin
        m_main_ci_unnamed607 = 6;
      end
      10: begin
        m_main_ci_unnamed607 = 7;
      end
      11: begin
        m_main_ci_unnamed607 = 7;
      end
      12: begin
        m_main_ci_unnamed607 = 8;
      end
      13: begin
        m_main_ci_unnamed607 = 15;
      end
    endcase
  end
  endfunction
  assign interval = 600;
  assign m_main_ci_antiChatter_RESW13 = (m_main_ci_antiChatter_RESW12 + 1);
  assign m_main_ci_antiChatter_RESW15 = m_main_ci_c633 ? m_main_ci_antiChatter_RESW13 : m_main_ci_c761 ? 0 : 'bz;
  assign m_main_ci_c1040 = !m_main_ci_c621;
  assign m_main_ci_c1041 = (m_main_ci_c621 && m_main_ci_c622);
  assign m_main_ci_c1042 = (m_main_ci_c1041 && m_main_ci_c623);
  assign m_main_ci_c1043 = ((m_main_ci_c1041 && m_main_ci_c738) || (m_main_ci_c1041 && m_main_ci_c739));
  assign m_main_ci_c1044 = !m_main_ci_c627;
  assign m_main_ci_c1045 = (m_main_ci_c627 && m_main_ci_c628);
  assign m_main_ci_c1046 = (m_main_ci_c1045 && m_main_ci_c629);
  assign m_main_ci_c1047 = ((m_main_ci_c1045 && m_main_ci_c740) || (m_main_ci_c1045 && m_main_ci_c741));
  assign m_main_ci_c1048 = !m_main_ci_c634;
  assign m_main_ci_c1049 = !m_main_ci_c638;
  assign m_main_ci_c1050 = !m_main_ci_c643;
  assign m_main_ci_c1051 = (m_main_ci_c648 && m_main_ci_c650);
  assign m_main_ci_c1052 = (m_main_ci_c648 && m_main_ci_c617_inl1);
  assign m_main_ci_c617_inl1 = (m_main_ci_i_inl14 < m_main_ci_t613_inl1);
  assign m_main_ci_c621 = (m_main_ci_oldRE_a2 != m_main_ci_t620);
  assign m_main_ci_c622 = (m_main_ci_untiChatter13 > 10);
  assign m_main_ci_c623 = (m_main_ci_oldRE_a2 != 0);
  assign m_main_ci_c625 = (m_main_ci_t624 != 0);
  assign m_main_ci_c627 = (m_main_ci_oldRE2_a2 != m_main_ci_t626);
  assign m_main_ci_c628 = (m_main_ci_untiChatter23 > 10);
  assign m_main_ci_c629 = (m_main_ci_oldRE2_a2 != 0);
  assign m_main_ci_c631 = (m_main_ci_t630 != 0);
  assign m_main_ci_c633 = (m_main_ci_t632 != 0);
  assign m_main_ci_c634 = (m_main_ci_antiChatter_RESW15 > 10);
  assign m_main_ci_c638 = (m_main_ci_t637 != 0);
  assign m_main_ci_c643 = (m_main_ci_t642 != 0);
  assign m_main_ci_c648 = (m_main_ci_counter6083 < 14);
  assign m_main_ci_c650 = (m_main_ci_j4 < 8);
  assign m_main_ci_c655 = (m_main_ci_t654 > m_main_ci_lightLevel);
  assign m_main_ci_c738 = (!m_main_ci_c623 && m_main_ci_c625);
  assign m_main_ci_c739 = (!m_main_ci_c623 && !m_main_ci_c625);
  assign m_main_ci_c740 = (!m_main_ci_c629 && m_main_ci_c631);
  assign m_main_ci_c741 = (!m_main_ci_c629 && !m_main_ci_c631);
  assign m_main_ci_c749 = !m_main_ci_c621;
  assign m_main_ci_c750 = (m_main_ci_c621 && m_main_ci_c622);
  assign m_main_ci_c751 = (m_main_ci_c750 && m_main_ci_c623);
  assign m_main_ci_c752 = (m_main_ci_c750 && m_main_ci_c738);
  assign m_main_ci_c753 = (m_main_ci_c750 && m_main_ci_c739);
  assign m_main_ci_c755 = !m_main_ci_c627;
  assign m_main_ci_c756 = (m_main_ci_c627 && m_main_ci_c628);
  assign m_main_ci_c757 = (m_main_ci_c756 && m_main_ci_c629);
  assign m_main_ci_c758 = (m_main_ci_c756 && m_main_ci_c740);
  assign m_main_ci_c759 = (m_main_ci_c756 && m_main_ci_c741);
  assign m_main_ci_c761 = !m_main_ci_c633;
  assign m_main_ci_c769 = (m_main_ci_c648 && m_main_ci_c650);
  assign m_main_ci_c770 = (m_main_ci_c769 && m_main_ci_c655);
  assign m_main_ci_c771 = (m_main_ci_c648 && m_main_ci_c617_inl1);
  assign m_main_ci_c772 = (m_main_ci_c751 || m_main_ci_c752);
  assign m_main_ci_c773 = (m_main_ci_c772 || m_main_ci_c753);
  assign m_main_ci_c774 = (m_main_ci_c759 || m_main_ci_c757);
  assign m_main_ci_c775 = (m_main_ci_c774 || m_main_ci_c758);
  assign m_main_ci_counter6084 = (m_main_ci_counter6083 + 1);
  assign m_main_ci_currentLine5 = (m_main_ci_currentLine4 | m_main_ci_t656);
  assign m_main_ci_currentLine6 = m_main_ci_c770 ? m_main_ci_currentLine5 : (m_main_ci_c769 && !m_main_ci_c655) ? m_main_ci_currentLine4 : 'bz;
  assign m_main_ci_cursor = (m_main_ci_t641 + m_main_ci_yvalue6);
  assign m_main_ci_i_inl15 = (m_main_ci_i_inl14 + 1);
  assign m_main_ci_j5 = (m_main_ci_j4 + 1);
  assign m_main_ci_lightLevel = m_main_ci_unnamed607(m_main_ci_counter6083);
  assign m_main_ci_loopCounter3 = (m_main_ci_loopCounter2 + 1);
  assign m_main_ci_oldRE2_a7 = m_main_ci_c775 ? m_main_ci_oldRE2_a5 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_oldRE2_a2 : m_main_ci_c755 ? m_main_ci_oldRE2_a6 : 'bz;
  assign m_main_ci_oldRE_a7 = m_main_ci_c773 ? m_main_ci_oldRE_a5 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_oldRE_a2 : m_main_ci_c749 ? m_main_ci_oldRE_a6 : 'bz;
  assign m_main_ci_prev_Cursor = (m_main_ci_t635 + m_main_ci_old_yvalue2);
  assign m_main_ci_t613_inl1 = (interval / 2);
  assign m_main_ci_t635 = (m_main_ci_old_xvalue2 * 8);
  assign m_main_ci_t637 = (m_main_ci_t636 & 1);
  assign m_main_ci_t640 = (m_main_ci_t639 | 32);
  assign m_main_ci_t641 = (m_main_ci_xvalue6 * 8);
  assign m_main_ci_t645 = (m_main_ci_t644 & 31);
  assign m_main_ci_t649 = (1 << m_main_ci_loopCounter2);
  assign m_main_ci_t651 = (m_main_ci_loopCounter2 * 8);
  assign m_main_ci_t652 = (m_main_ci_t651 + m_main_ci_j4);
  assign m_main_ci_t654 = (m_main_ci_t653 >>> 1);
  assign m_main_ci_t656 = (128 >>> m_main_ci_j4);
  assign m_main_ci_t658 = (m_main_ci_t657 | 32);
  assign m_main_ci_t660 = (m_main_ci_t659 & 31);
  assign m_main_ci_untiChatter13 = (m_main_ci_untiChatter12 + 1);
  assign m_main_ci_untiChatter18 = m_main_ci_c773 ? 0 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_untiChatter13 : m_main_ci_c749 ? 0 : 'bz;
  assign m_main_ci_untiChatter23 = (m_main_ci_untiChatter22 + 1);
  assign m_main_ci_untiChatter28 = m_main_ci_c775 ? 0 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_untiChatter23 : m_main_ci_c755 ? 0 : 'bz;
  assign m_main_ci_xvalue3 = (m_main_ci_xvalue2 - 1);
  assign m_main_ci_xvalue4 = (m_main_ci_xvalue2 + 1);
  assign m_main_ci_xvalue5 = m_main_ci_c751 ? m_main_ci_xvalue2 : m_main_ci_c752 ? m_main_ci_xvalue3 : m_main_ci_c753 ? m_main_ci_xvalue4 : 'bz;
  assign m_main_ci_xvalue6 = m_main_ci_c773 ? m_main_ci_xvalue5 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_xvalue2 : m_main_ci_c749 ? m_main_ci_xvalue2 : 'bz;
  assign m_main_ci_yvalue3 = (m_main_ci_yvalue2 + 1);
  assign m_main_ci_yvalue4 = (m_main_ci_yvalue2 - 1);
  assign m_main_ci_yvalue5 = m_main_ci_c757 ? m_main_ci_yvalue2 : m_main_ci_c758 ? m_main_ci_yvalue3 : m_main_ci_c759 ? m_main_ci_yvalue4 : 'bz;
  assign m_main_ci_yvalue6 = m_main_ci_c775 ? m_main_ci_yvalue5 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_yvalue2 : m_main_ci_c755 ? m_main_ci_yvalue2 : 'bz;
  //combinations: m_main_ci_array736
  assign m_main_ci_array736_ram_addr = m_main_ci_frameBuffer_addr;
  assign m_main_ci_array736_ram_d = m_main_ci_frameBuffer_d;
  assign m_main_ci_array736_ram_we = m_main_ci_frameBuffer_we;
  assign m_main_ci_frameBuffer_len = m_main_ci_array736_ram_len;
  assign m_main_ci_frameBuffer_q = m_main_ci_array736_ram_q;
  //sub modules
  //m_main_ci_array736 instance
  BidirectionalSinglePortRam#(
    .DATA_WIDTH(8),
    .ADDR_WIDTH(7),
    .RAM_LENGTH(64)
    )
    m_main_ci_array736(
      .clk(clk),
      .rst(rst),
      .ram_addr(m_main_ci_array736_ram_addr),
      .ram_d(m_main_ci_array736_ram_d),
      .ram_we(m_main_ci_array736_ram_we),
      .ram_q(m_main_ci_array736_ram_q),
      .ram_len(m_main_ci_array736_ram_len)
    );
  
  
  always @(posedge clk) begin
    if (rst) begin
      boardLED1 <= 0;
      boardLED2 <= 0;
      col <= 0;
      m_main_ci_antiChatter_RESW12 <= 0;
      m_main_ci_counter6083 <= 0;
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
      m_main_ci_t620 <= 0;
      m_main_ci_t624 <= 0;
      m_main_ci_t626 <= 0;
      m_main_ci_t630 <= 0;
      m_main_ci_t632 <= 0;
      m_main_ci_t636 <= 0;
      m_main_ci_t639 <= 0;
      m_main_ci_t642 <= 0;
      m_main_ci_t644 <= 0;
      m_main_ci_t646 <= 0;
      m_main_ci_t653 <= 0;
      m_main_ci_t657 <= 0;
      m_main_ci_t659 <= 0;
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
        m_main_ci_t620 <= rotary_a;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_while2_S1;
      end
      LEDMatrixAB_m_main_ci_L1_while2_S1: begin
        /* m_main_ci_c621 <= (m_main_ci_oldRE_a2 != m_main_ci_t620); */
        if (m_main_ci_c621) begin
          /* m_main_ci_untiChatter13 <= (m_main_ci_untiChatter12 + 1); */
          /* m_main_ci_c622 <= (m_main_ci_untiChatter13 > 10); */
          if (m_main_ci_c622) begin
            m_main_ci_t624 <= rotary_b;
            /* m_main_ci_c623 <= (m_main_ci_oldRE_a2 != 0); */
            /* m_main_ci_xvalue3 <= (m_main_ci_xvalue2 - 1); */
            /* m_main_ci_xvalue4 <= (m_main_ci_xvalue2 + 1); */
            /* m_main_ci_c1041 <= (m_main_ci_c621 && m_main_ci_c622); */
            /* m_main_ci_c750 <= (m_main_ci_c621 && m_main_ci_c622); */
            /* m_main_ci_c751 <= (m_main_ci_c750 && m_main_ci_c623); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen5_S1;
          end else begin
            m_main_ci_t626 <= rotary2_a;
            /* m_main_ci_oldRE_a7 <= m_main_ci_c773 ? m_main_ci_oldRE_a5 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_oldRE_a2 : m_main_ci_c749 ? m_main_ci_oldRE_a6 : 'bz; */
            /* m_main_ci_untiChatter18 <= m_main_ci_c773 ? 0 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_untiChatter13 : m_main_ci_c749 ? 0 : 'bz; */
            /* m_main_ci_xvalue6 <= m_main_ci_c773 ? m_main_ci_xvalue5 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_xvalue2 : m_main_ci_c749 ? m_main_ci_xvalue2 : 'bz; */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b8_S1;
          end
        end else begin
          m_main_ci_oldRE_a6 <= rotary_a;
          /* m_main_ci_c1040 <= !m_main_ci_c621; */
          /* m_main_ci_c749 <= !m_main_ci_c621; */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b8_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen5_S1: begin
        /* m_main_ci_c625 <= (m_main_ci_t624 != 0); */
        /* m_main_ci_c738 <= (!m_main_ci_c623 && m_main_ci_c625); */
        /* m_main_ci_c739 <= (!m_main_ci_c623 && !m_main_ci_c625); */
        /* m_main_ci_c752 <= (m_main_ci_c750 && m_main_ci_c738); */
        /* m_main_ci_c753 <= (m_main_ci_c750 && m_main_ci_c739); */
        if (m_main_ci_c623) begin
          m_main_ci_oldRE_a3 <= rotary_a;
          /* m_main_ci_c1042 <= (m_main_ci_c1041 && m_main_ci_c623); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b7_S0;
        end else if (m_main_ci_c738) begin
          m_main_ci_oldRE_a5 <= rotary_a;
          /* m_main_ci_c1043 <= ((m_main_ci_c1041 && m_main_ci_c738) || (m_main_ci_c1041 && m_main_ci_c739)); */
          /* m_main_ci_xvalue5 <= m_main_ci_c751 ? m_main_ci_xvalue2 : m_main_ci_c752 ? m_main_ci_xvalue3 : m_main_ci_c753 ? m_main_ci_xvalue4 : 'bz; */
          /* m_main_ci_c772 <= (m_main_ci_c751 || m_main_ci_c752); */
          /* m_main_ci_c773 <= (m_main_ci_c772 || m_main_ci_c753); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b7_S1;
        end else if (m_main_ci_c739) begin
          m_main_ci_oldRE_a5 <= rotary_a;
          /* m_main_ci_c1043 <= ((m_main_ci_c1041 && m_main_ci_c738) || (m_main_ci_c1041 && m_main_ci_c739)); */
          /* m_main_ci_xvalue5 <= m_main_ci_c751 ? m_main_ci_xvalue2 : m_main_ci_c752 ? m_main_ci_xvalue3 : m_main_ci_c753 ? m_main_ci_xvalue4 : 'bz; */
          /* m_main_ci_c772 <= (m_main_ci_c751 || m_main_ci_c752); */
          /* m_main_ci_c773 <= (m_main_ci_c772 || m_main_ci_c753); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b7_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b7_S0: begin
        m_main_ci_oldRE_a5 <= rotary_a;
        /* m_main_ci_c1043 <= ((m_main_ci_c1041 && m_main_ci_c738) || (m_main_ci_c1041 && m_main_ci_c739)); */
        /* m_main_ci_xvalue5 <= m_main_ci_c751 ? m_main_ci_xvalue2 : m_main_ci_c752 ? m_main_ci_xvalue3 : m_main_ci_c753 ? m_main_ci_xvalue4 : 'bz; */
        /* m_main_ci_c772 <= (m_main_ci_c751 || m_main_ci_c752); */
        /* m_main_ci_c773 <= (m_main_ci_c772 || m_main_ci_c753); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b7_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b7_S1: begin
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b8_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b8_S0: begin
        m_main_ci_t626 <= rotary2_a;
        /* m_main_ci_oldRE_a7 <= m_main_ci_c773 ? m_main_ci_oldRE_a5 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_oldRE_a2 : m_main_ci_c749 ? m_main_ci_oldRE_a6 : 'bz; */
        /* m_main_ci_untiChatter18 <= m_main_ci_c773 ? 0 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_untiChatter13 : m_main_ci_c749 ? 0 : 'bz; */
        /* m_main_ci_xvalue6 <= m_main_ci_c773 ? m_main_ci_xvalue5 : (m_main_ci_c621 && !m_main_ci_c622) ? m_main_ci_xvalue2 : m_main_ci_c749 ? m_main_ci_xvalue2 : 'bz; */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b8_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b8_S1: begin
        /* m_main_ci_c627 <= (m_main_ci_oldRE2_a2 != m_main_ci_t626); */
        if (m_main_ci_c627) begin
          /* m_main_ci_untiChatter23 <= (m_main_ci_untiChatter22 + 1); */
          /* m_main_ci_c628 <= (m_main_ci_untiChatter23 > 10); */
          if (m_main_ci_c628) begin
            m_main_ci_t630 <= rotary2_b;
            /* m_main_ci_c629 <= (m_main_ci_oldRE2_a2 != 0); */
            /* m_main_ci_yvalue3 <= (m_main_ci_yvalue2 + 1); */
            /* m_main_ci_yvalue4 <= (m_main_ci_yvalue2 - 1); */
            /* m_main_ci_c1045 <= (m_main_ci_c627 && m_main_ci_c628); */
            /* m_main_ci_c756 <= (m_main_ci_c627 && m_main_ci_c628); */
            /* m_main_ci_c757 <= (m_main_ci_c756 && m_main_ci_c629); */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen10_S1;
          end else begin
            m_main_ci_t632 <= rotary_SW;
            /* m_main_ci_antiChatter_RESW13 <= (m_main_ci_antiChatter_RESW12 + 1); */
            /* m_main_ci_oldRE2_a7 <= m_main_ci_c775 ? m_main_ci_oldRE2_a5 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_oldRE2_a2 : m_main_ci_c755 ? m_main_ci_oldRE2_a6 : 'bz; */
            /* m_main_ci_untiChatter28 <= m_main_ci_c775 ? 0 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_untiChatter23 : m_main_ci_c755 ? 0 : 'bz; */
            /* m_main_ci_yvalue6 <= m_main_ci_c775 ? m_main_ci_yvalue5 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_yvalue2 : m_main_ci_c755 ? m_main_ci_yvalue2 : 'bz; */
            m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b13_S1;
          end
        end else begin
          m_main_ci_oldRE2_a6 <= rotary2_a;
          /* m_main_ci_c1044 <= !m_main_ci_c627; */
          /* m_main_ci_c755 <= !m_main_ci_c627; */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b13_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen10_S1: begin
        /* m_main_ci_c631 <= (m_main_ci_t630 != 0); */
        /* m_main_ci_c740 <= (!m_main_ci_c629 && m_main_ci_c631); */
        /* m_main_ci_c741 <= (!m_main_ci_c629 && !m_main_ci_c631); */
        /* m_main_ci_c758 <= (m_main_ci_c756 && m_main_ci_c740); */
        /* m_main_ci_c759 <= (m_main_ci_c756 && m_main_ci_c741); */
        if (m_main_ci_c629) begin
          m_main_ci_oldRE2_a3 <= rotary2_a;
          /* m_main_ci_c1046 <= (m_main_ci_c1045 && m_main_ci_c629); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b12_S0;
        end else if (m_main_ci_c740) begin
          m_main_ci_oldRE2_a5 <= rotary2_a;
          /* m_main_ci_c1047 <= ((m_main_ci_c1045 && m_main_ci_c740) || (m_main_ci_c1045 && m_main_ci_c741)); */
          /* m_main_ci_yvalue5 <= m_main_ci_c757 ? m_main_ci_yvalue2 : m_main_ci_c758 ? m_main_ci_yvalue3 : m_main_ci_c759 ? m_main_ci_yvalue4 : 'bz; */
          /* m_main_ci_c774 <= (m_main_ci_c759 || m_main_ci_c757); */
          /* m_main_ci_c775 <= (m_main_ci_c774 || m_main_ci_c758); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b12_S1;
        end else if (m_main_ci_c741) begin
          m_main_ci_oldRE2_a5 <= rotary2_a;
          /* m_main_ci_c1047 <= ((m_main_ci_c1045 && m_main_ci_c740) || (m_main_ci_c1045 && m_main_ci_c741)); */
          /* m_main_ci_yvalue5 <= m_main_ci_c757 ? m_main_ci_yvalue2 : m_main_ci_c758 ? m_main_ci_yvalue3 : m_main_ci_c759 ? m_main_ci_yvalue4 : 'bz; */
          /* m_main_ci_c774 <= (m_main_ci_c759 || m_main_ci_c757); */
          /* m_main_ci_c775 <= (m_main_ci_c774 || m_main_ci_c758); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b12_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b12_S0: begin
        m_main_ci_oldRE2_a5 <= rotary2_a;
        /* m_main_ci_c1047 <= ((m_main_ci_c1045 && m_main_ci_c740) || (m_main_ci_c1045 && m_main_ci_c741)); */
        /* m_main_ci_yvalue5 <= m_main_ci_c757 ? m_main_ci_yvalue2 : m_main_ci_c758 ? m_main_ci_yvalue3 : m_main_ci_c759 ? m_main_ci_yvalue4 : 'bz; */
        /* m_main_ci_c774 <= (m_main_ci_c759 || m_main_ci_c757); */
        /* m_main_ci_c775 <= (m_main_ci_c774 || m_main_ci_c758); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b12_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b12_S1: begin
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b13_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b13_S0: begin
        m_main_ci_t632 <= rotary_SW;
        /* m_main_ci_antiChatter_RESW13 <= (m_main_ci_antiChatter_RESW12 + 1); */
        /* m_main_ci_oldRE2_a7 <= m_main_ci_c775 ? m_main_ci_oldRE2_a5 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_oldRE2_a2 : m_main_ci_c755 ? m_main_ci_oldRE2_a6 : 'bz; */
        /* m_main_ci_untiChatter28 <= m_main_ci_c775 ? 0 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_untiChatter23 : m_main_ci_c755 ? 0 : 'bz; */
        /* m_main_ci_yvalue6 <= m_main_ci_c775 ? m_main_ci_yvalue5 : (m_main_ci_c627 && !m_main_ci_c628) ? m_main_ci_yvalue2 : m_main_ci_c755 ? m_main_ci_yvalue2 : 'bz; */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b13_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b13_S1: begin
        /* m_main_ci_c633 <= (m_main_ci_t632 != 0); */
        /* m_main_ci_c761 <= !m_main_ci_c633; */
        /* m_main_ci_antiChatter_RESW15 <= m_main_ci_c633 ? m_main_ci_antiChatter_RESW13 : m_main_ci_c761 ? 0 : 'bz; */
        /* m_main_ci_c634 <= (m_main_ci_antiChatter_RESW15 > 10); */
        if (m_main_ci_c634) begin
          boardLED2 <= 1;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S0;
        end else begin
          boardLED2 <= 0;
          /* m_main_ci_c1048 <= !m_main_ci_c634; */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L1_b15_S0: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /* m_main_ci_t635 <= (m_main_ci_old_xvalue2 * 8); */
        /* m_main_ci_prev_Cursor <= (m_main_ci_t635 + m_main_ci_old_yvalue2); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b15_S1: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S2;
      end
      LEDMatrixAB_m_main_ci_L1_b15_S2: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t636 <= m_main_ci_frameBuffer_q;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S3;
      end
      LEDMatrixAB_m_main_ci_L1_b15_S3: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t639 <= m_main_ci_frameBuffer_q;
        /* m_main_ci_t637 <= (m_main_ci_t636 & 1); */
        /* m_main_ci_c638 <= (m_main_ci_t637 != 0); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S4;
      end
      LEDMatrixAB_m_main_ci_L1_b15_S4: begin
        m_main_ci_t659 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        /* m_main_ci_t640 <= (m_main_ci_t639 | 32); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b15_S5;
      end
      LEDMatrixAB_m_main_ci_L1_b15_S5: begin
        /* m_main_ci_t660 <= (m_main_ci_t659 & 31); */
        if (m_main_ci_c638) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t640;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen16_S1;
        end else begin
          m_main_ci_frameBuffer_addr <= m_main_ci_prev_Cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t660;
          /* m_main_ci_c1049 <= !m_main_ci_c638; */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifelse30_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen16_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S0;
      end
      LEDMatrixAB_m_main_ci_L1_ifelse30_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b17_S0: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        m_main_ci_t642 <= quaterSecondCLK;
        /* m_main_ci_t641 <= (m_main_ci_xvalue6 * 8); */
        /* m_main_ci_cursor <= (m_main_ci_t641 + m_main_ci_yvalue6); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b17_S1: begin
        m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
        m_main_ci_frameBuffer_we <= 0;
        m_main_ci_frameBuffer_req <= 1;
        /*wait for output of m_main_ci_frameBuffer*/
        /* m_main_ci_c643 <= (m_main_ci_t642 != 0); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S2;
      end
      LEDMatrixAB_m_main_ci_L1_b17_S2: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_t644 <= m_main_ci_frameBuffer_q;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S3;
      end
      LEDMatrixAB_m_main_ci_L1_b17_S3: begin
        m_main_ci_t657 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        /* m_main_ci_t645 <= (m_main_ci_t644 & 31); */
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b17_S4;
      end
      LEDMatrixAB_m_main_ci_L1_b17_S4: begin
        /* m_main_ci_t658 <= (m_main_ci_t657 | 32); */
        if (m_main_ci_c643) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t645;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifthen18_S1;
        end else begin
          m_main_ci_frameBuffer_addr <= m_main_ci_cursor;
          m_main_ci_frameBuffer_we <= 1;
          m_main_ci_frameBuffer_req <= 1;
          m_main_ci_frameBuffer_d <= m_main_ci_t658;
          /* m_main_ci_c1050 <= !m_main_ci_c643; */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_ifelse29_S1;
        end
      end
      LEDMatrixAB_m_main_ci_L1_ifthen18_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b19_S0;
      end
      LEDMatrixAB_m_main_ci_L1_ifelse29_S1: begin
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b19_S0;
      end
      LEDMatrixAB_m_main_ci_L1_b19_S0: begin
        m_main_ci_t646 <= quaterSecondCLK;
        m_main_ci_counter6083 <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_b19_S1;
      end
      LEDMatrixAB_m_main_ci_L1_b19_S1: begin
        boardLED1 <= m_main_ci_t646;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L2_fortest20_S0;
      end
      LEDMatrixAB_m_main_ci_L2_fortest20_S0: begin
        /* m_main_ci_c648 <= (m_main_ci_counter6083 < 14); */
        if (m_main_ci_c648) begin
          row <= m_main_ci_t649;
          /* m_main_ci_lightLevel <= m_main_ci_unnamed607(m_main_ci_counter6083); */
          /* m_main_ci_t649 <= (1 << m_main_ci_loopCounter2); */
          m_main_ci_currentLine4 <= 0;
          m_main_ci_j4 <= 0;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_fortest22_S0;
        end else begin
          /* m_main_ci_loopCounter3 <= (m_main_ci_loopCounter2 + 1); */
          m_main_ci_loopCounter2 <= m_main_ci_loopCounter3;
          m_main_ci_antiChatter_RESW12 <= m_main_ci_antiChatter_RESW15;
          m_main_ci_oldRE2_a2 <= m_main_ci_oldRE2_a7;
          m_main_ci_oldRE_a2 <= m_main_ci_oldRE_a7;
          m_main_ci_old_xvalue2 <= m_main_ci_xvalue6;
          m_main_ci_old_yvalue2 <= m_main_ci_yvalue6;
          m_main_ci_untiChatter12 <= m_main_ci_untiChatter18;
          m_main_ci_untiChatter22 <= m_main_ci_untiChatter28;
          m_main_ci_xvalue2 <= m_main_ci_xvalue6;
          m_main_ci_yvalue2 <= m_main_ci_yvalue6;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L1_while2_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L3_fortest22_S0: begin
        /* m_main_ci_c650 <= (m_main_ci_j4 < 8); */
        if (m_main_ci_c650) begin
          m_main_ci_frameBuffer_addr <= m_main_ci_t652;
          m_main_ci_frameBuffer_we <= 0;
          m_main_ci_frameBuffer_req <= 1;
          /* m_main_ci_t651 <= (m_main_ci_loopCounter2 * 8); */
          /* m_main_ci_t656 <= (128 >>> m_main_ci_j4); */
          /* m_main_ci_j5 <= (m_main_ci_j4 + 1); */
          /* m_main_ci_c1051 <= (m_main_ci_c648 && m_main_ci_c650); */
          /* m_main_ci_c769 <= (m_main_ci_c648 && m_main_ci_c650); */
          /* m_main_ci_t652 <= (m_main_ci_t651 + m_main_ci_j4); */
          /* m_main_ci_currentLine5 <= (m_main_ci_currentLine4 | m_main_ci_t656); */
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody23_S1;
        end else begin
          col <= m_main_ci_currentLine4;
          /* m_main_ci_t613_inl1 <= (interval / 2); */
          m_main_ci_i_inl14 <= 0;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L4_fortest25_S0;
        end
      end
      LEDMatrixAB_m_main_ci_L3_forbody23_S1: begin
        /*wait for output of m_main_ci_frameBuffer*/
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody23_S2;
      end
      LEDMatrixAB_m_main_ci_L3_forbody23_S2: begin
        m_main_ci_t653 <= m_main_ci_frameBuffer_q;
        m_main_ci_frameBuffer_req <= 0;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_forbody23_S3;
      end
      LEDMatrixAB_m_main_ci_L3_forbody23_S3: begin
        /* m_main_ci_t654 <= (m_main_ci_t653 >>> 1); */
        /* m_main_ci_c655 <= (m_main_ci_t654 > m_main_ci_lightLevel); */
        /* m_main_ci_c770 <= (m_main_ci_c769 && m_main_ci_c655); */
        /* m_main_ci_currentLine6 <= m_main_ci_c770 ? m_main_ci_currentLine5 : (m_main_ci_c769 && !m_main_ci_c655) ? m_main_ci_currentLine4 : 'bz; */
        m_main_ci_currentLine4 <= m_main_ci_currentLine6;
        m_main_ci_j4 <= m_main_ci_j5;
        m_main_ci_state <= LEDMatrixAB_m_main_ci_L3_fortest22_S0;
      end
      LEDMatrixAB_m_main_ci_L4_fortest25_S0: begin
        /* m_main_ci_c617_inl1 <= (m_main_ci_i_inl14 < m_main_ci_t613_inl1); */
        if (m_main_ci_c617_inl1) begin
          /* m_main_ci_i_inl15 <= (m_main_ci_i_inl14 + 1); */
          /* m_main_ci_c1052 <= (m_main_ci_c648 && m_main_ci_c617_inl1); */
          /* m_main_ci_c771 <= (m_main_ci_c648 && m_main_ci_c617_inl1); */
          m_main_ci_i_inl14 <= m_main_ci_i_inl15;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L4_fortest25_S0;
        end else begin
          /* m_main_ci_counter6084 <= (m_main_ci_counter6083 + 1); */
          m_main_ci_counter6083 <= m_main_ci_counter6084;
          m_main_ci_state <= LEDMatrixAB_m_main_ci_L2_fortest20_S0;
        end
      end
      endcase
    end
  end
  

endmodule

