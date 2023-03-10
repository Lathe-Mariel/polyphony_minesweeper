`default_nettype none

module top (
  input  wire       clk,

  input  wire sw1,
  input  wire sw2,
  input  wire rotary_a,
  input  wire rotary_b,
  input  wire rotary_SW,
  input  wire rotary2_a,
  input  wire rotary2_b,
  input  wire rotary2_SW,
  output wire io86,
  output wire boardLED1,
  output wire boardLED2,

  output wire [7:0] anode,
  output wire [7:0] cathode
);
/*
  logic [7:0] data[7:0];
  assign data[0] = 8'b01100000;
  assign data[1] = 8'b10000000;
  assign data[2] = 8'b10000000;
  assign data[3] = 8'b01100110;
  assign data[4] = 8'b00001001;
  assign data[5] = 8'b00001001;
  assign data[6] = 8'b00000110;
  assign data[7] = 8'b00000001;
*/
  localparam use_polyphony = 1'b1;

  logic       quaterSecondCLK;
  logic       quaterSecondOverflow;

  logic [7:0] row_p, col_p;
  assign cathode = col_p;
  assign anode = ~row_p;

//  logic [7:0] row_v, col_v;
//  assign cathode   = use_polyphony?col_p:col_v;
//  assign anode = ~(use_polyphony?row_p:row_v);

  assign io86 = sw1;

/*
  TBUF u0 (
    .O(anode[0]),
    .I(1'b0),
    .OEN(~row_p[0])
  );

  TBUF u1 (
    .O(anode[1]),
    .I(1'b0),
    .OEN(~row_p[1])
  );

  TBUF u2 (
    .O(anode[2]),
    .I(1'b0),
    .OEN(~row_p[2])
  );

  TBUF u3 (
    .O(anode[3]),
    .I(1'b0),
    .OEN(~row_p[3])
  );

  TBUF u4 (
    .O(anode[4]),
    .I(1'b0),
    .OEN(~row_p[4])
  );

  TBUF u5 (
    .O(anode[5]),
    .I(1'b0),
    .OEN(~row_p[5])
  );

  TBUF u6 (
    .O(anode[6]),
    .I(1'b0),
    .OEN(~row_p[6])
  );

  TBUF u7 (
    .O(anode[7]),
    .I(1'b0),
    .OEN(~row_p[7])
  );
*/

/*
  matrix_led_driver inst_0 (
    .clk  (clk),
    .data (data),
    .row  (row_v),
    .col  (col_v)
  );
*/

/*
  LEDMatrix_m inst_1 (
    .clk(clk),
    .rst(1'b0),

    .col(col_p),
    .row(row_p)
  );
*/

  LEDMatrixAB_m inst_2 (
    .clk(clk),
    .rst(1'b0),
    .boardLED1(boardLED1),
    .boardLED2(boardLED2),
    .quaterSecondCLK(quaterSecondCLK),

    .swA(sw1),
    .swB(sw2),
    .rotary_a(rotary_a),
    .rotary_b(rotary_b),
    .rotary_SW(rotary_SW),

    .rotary2_a(rotary2_a),
    .rotary2_b(rotary2_b),
    .rotary2_SW(rotary2_SW),
    
    .col(col_p),
    .row(row_p)
  );

  timer #(
    .COUNT_MAX(27000000/8)
  ) inst_1 (
    .clk (clk),
    .overflow(quaterSecondOverflow)
  );

  always @(posedge quaterSecondOverflow)begin
    quaterSecondCLK = quaterSecondCLK + 1;
  end

endmodule
/*
module matrix_led_driver (
  input  wire       clk,
  input  wire [7:0] data[7:0],
  output wire [7:0] col,
  output wire [7:0] row
);

  logic [2:0] row_cnt = 'd0;
  logic       overflow;

  assign row = 'b00000001 << row_cnt;
  assign col = {data[0][row_cnt],
                data[1][row_cnt],
                data[2][row_cnt],
                data[3][row_cnt],
                data[4][row_cnt],
                data[5][row_cnt],
                data[6][row_cnt],
                data[7][row_cnt]};

  always_ff @ (posedge clk) begin
    if (overflow) begin
      row_cnt <= row_cnt + 'd1;
    end
  end
  

  timer #(
    .COUNT_MAX (27000)
  ) inst_0 (
    .clk      (clk),
    .overflow (overflow)
  );

endmodule
*/

module timer #(
  parameter COUNT_MAX = 27000000
) (
  input  wire  clk,
  output logic overflow
);

  logic [$clog2(COUNT_MAX+1)-1:0] counter = 'd0;

  always_ff @ (posedge clk) begin
    if (counter == COUNT_MAX) begin
      counter  <= 'd0;
      overflow <= 'd1;
    end else begin
      counter  <= counter + 'd1;
      overflow <= 'd0;
    end
  end

endmodule

`default_nettype wire
