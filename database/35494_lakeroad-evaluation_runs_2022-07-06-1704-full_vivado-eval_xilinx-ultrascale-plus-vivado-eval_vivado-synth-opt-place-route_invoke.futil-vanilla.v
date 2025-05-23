// This program was cloned from: https://github.com/uwsampl/lakeroad-evaluation
// License: MIT License

/* verilator lint_off MULTITOP */
/// =================== Unsigned, Fixed Point =========================
module std_fp_add #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    output logic [WIDTH-1:0] out
);
  assign out = left + right;
endmodule

module std_fp_sub #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    output logic [WIDTH-1:0] out
);
  assign out = left - right;
endmodule

module std_fp_mult_pipe #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16,
    parameter SIGNED = 0
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    input  logic             go,
    input  logic             clk,
    input  logic             reset,
    output logic [WIDTH-1:0] out,
    output logic             done
);
  logic [WIDTH-1:0]          rtmp;
  logic [WIDTH-1:0]          ltmp;
  logic [(WIDTH << 1) - 1:0] out_tmp;
  // Buffer used to walk through the 3 cycles of the pipeline.
  logic done_buf[2:0];

  assign done = done_buf[2];

  assign out = out_tmp[(WIDTH << 1) - INT_WIDTH - 1 : WIDTH - INT_WIDTH];

  // If the done buffer is completely empty and go is high then execution
  // just started.
  logic start;
  assign start = go & done_buf[0] == 0 & done_buf[1] == 0;

  // Start sending the done signal.
  always_ff @(posedge clk) begin
    if (start)
      done_buf[0] <= 1;
    else
      done_buf[0] <= 0;
  end

  // Push the done signal through the pipeline.
  always_ff @(posedge clk) begin
    if (go) begin
      done_buf[2] <= done_buf[1];
      done_buf[1] <= done_buf[0];
    end else begin
      done_buf[2] <= 0;
      done_buf[1] <= 0;
    end
  end

  // Move the multiplication computation through the pipeline.
  always_ff @(posedge clk) begin
    if (reset) begin
      rtmp <= 0;
      ltmp <= 0;
      out_tmp <= 0;
    end else if (go) begin
      if (SIGNED) begin
        rtmp <= $signed(right);
        ltmp <= $signed(left);
        out_tmp <= $signed(
          { {WIDTH{ltmp[WIDTH-1]}}, ltmp} *
          { {WIDTH{rtmp[WIDTH-1]}}, rtmp}
        );
      end else begin
        rtmp <= right;
        ltmp <= left;
        out_tmp <= ltmp * rtmp;
      end
    end else begin
      rtmp <= 0;
      ltmp <= 0;
      out_tmp <= out_tmp;
    end
  end
endmodule

/* verilator lint_off WIDTH */
module std_fp_div_pipe #(
  parameter WIDTH = 32,
  parameter INT_WIDTH = 16,
  parameter FRAC_WIDTH = 16
) (
    input  logic             go,
    input  logic             clk,
    input  logic             reset,
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    output logic [WIDTH-1:0] out_remainder,
    output logic [WIDTH-1:0] out_quotient,
    output logic             done
);
    localparam ITERATIONS = WIDTH + FRAC_WIDTH;

    logic [WIDTH-1:0] quotient, quotient_next;
    logic [WIDTH:0] acc, acc_next;
    logic [$clog2(ITERATIONS)-1:0] idx;
    logic start, running, finished, dividend_is_zero;

    assign start = go && !running;
    assign dividend_is_zero = start && left == 0;
    assign finished = idx == ITERATIONS - 1 && running;

    always_ff @(posedge clk) begin
      if (reset || finished || dividend_is_zero)
        running <= 0;
      else if (start)
        running <= 1;
      else
        running <= running;
    end

    always_comb begin
      if (acc >= {1'b0, right}) begin
        acc_next = acc - right;
        {acc_next, quotient_next} = {acc_next[WIDTH-1:0], quotient, 1'b1};
      end else begin
        {acc_next, quotient_next} = {acc, quotient} << 1;
      end
    end

    // `done` signaling
    always_ff @(posedge clk) begin
      if (dividend_is_zero || finished)
        done <= 1;
      else
        done <= 0;
    end

    always_ff @(posedge clk) begin
      if (running)
        idx <= idx + 1;
      else
        idx <= 0;
    end

    always_ff @(posedge clk) begin
      if (reset) begin
        out_quotient <= 0;
        out_remainder <= 0;
      end else if (start) begin
        out_quotient <= 0;
        out_remainder <= left;
      end else if (go == 0) begin
        out_quotient <= out_quotient;
        out_remainder <= out_remainder;
      end else if (dividend_is_zero) begin
        out_quotient <= 0;
        out_remainder <= 0;
      end else if (finished) begin
        out_quotient <= quotient_next;
        out_remainder <= out_remainder;
      end else begin
        out_quotient <= out_quotient;
        if (right <= out_remainder)
          out_remainder <= out_remainder - right;
        else
          out_remainder <= out_remainder;
      end
    end

    always_ff @(posedge clk) begin
      if (reset) begin
        acc <= 0;
        quotient <= 0;
      end else if (start) begin
        {acc, quotient} <= {{WIDTH{1'b0}}, left, 1'b0};
      end else begin
        acc <= acc_next;
        quotient <= quotient_next;
      end
    end
endmodule

module std_fp_gt #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    output logic             out
);
  assign out = left > right;
endmodule

/// =================== Signed, Fixed Point =========================
module std_fp_sadd #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = $signed(left + right);
endmodule

module std_fp_ssub #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);

  assign out = $signed(left - right);
endmodule

module std_fp_smult_pipe #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  [WIDTH-1:0]              left,
    input  [WIDTH-1:0]              right,
    input  logic                    reset,
    input  logic                    go,
    input  logic                    clk,
    output logic [WIDTH-1:0]        out,
    output logic                    done
);
  std_fp_mult_pipe #(
    .WIDTH(WIDTH),
    .INT_WIDTH(INT_WIDTH),
    .FRAC_WIDTH(FRAC_WIDTH),
    .SIGNED(1)
  ) comp (
    .clk(clk),
    .done(done),
    .reset(reset),
    .go(go),
    .left(left),
    .right(right),
    .out(out)
  );
endmodule

module std_fp_sdiv_pipe #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input                     clk,
    input                     go,
    input                     reset,
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out_quotient,
    output signed [WIDTH-1:0] out_remainder,
    output logic              done
);

  logic signed [WIDTH-1:0] left_abs, right_abs, comp_out_q, comp_out_r, right_save, out_rem_intermediate;

  // Registers to figure out how to transform outputs.
  logic different_signs, left_sign, right_sign;

  // Latch the value of control registers so that their available after
  // go signal becomes low.
  always_ff @(posedge clk) begin
    if (go) begin
      right_save <= right_abs;
      left_sign <= left[WIDTH-1];
      right_sign <= right[WIDTH-1];
    end else begin
      left_sign <= left_sign;
      right_save <= right_save;
      right_sign <= right_sign;
    end
  end

  assign right_abs = right[WIDTH-1] ? -right : right;
  assign left_abs = left[WIDTH-1] ? -left : left;

  assign different_signs = left_sign ^ right_sign;
  assign out_quotient = different_signs ? -comp_out_q : comp_out_q;

  // Remainder is computed as:
  //  t0 = |left| % |right|
  //  t1 = if left * right < 0 and t0 != 0 then |right| - t0 else t0
  //  rem = if right < 0 then -t1 else t1
  assign out_rem_intermediate = different_signs & |comp_out_r ? $signed(right_save - comp_out_r) : comp_out_r;
  assign out_remainder = right_sign ? -out_rem_intermediate : out_rem_intermediate;

  std_fp_div_pipe #(
    .WIDTH(WIDTH),
    .INT_WIDTH(INT_WIDTH),
    .FRAC_WIDTH(FRAC_WIDTH)
  ) comp (
    .reset(reset),
    .clk(clk),
    .done(done),
    .go(go),
    .left(left_abs),
    .right(right_abs),
    .out_quotient(comp_out_q),
    .out_remainder(comp_out_r)
  );
endmodule

module std_fp_sgt #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
    input  logic signed [WIDTH-1:0] left,
    input  logic signed [WIDTH-1:0] right,
    output logic signed             out
);
  assign out = $signed(left > right);
endmodule

module std_fp_slt #(
    parameter WIDTH = 32,
    parameter INT_WIDTH = 16,
    parameter FRAC_WIDTH = 16
) (
   input logic signed [WIDTH-1:0] left,
   input logic signed [WIDTH-1:0] right,
   output logic signed            out
);
  assign out = $signed(left < right);
endmodule

/// =================== Unsigned, Bitnum =========================
module std_mult_pipe #(
    parameter WIDTH = 32
) (
    input  logic [WIDTH-1:0] left,
    input  logic [WIDTH-1:0] right,
    input  logic             reset,
    input  logic             go,
    input  logic             clk,
    output logic [WIDTH-1:0] out,
    output logic             done
);
  std_fp_mult_pipe #(
    .WIDTH(WIDTH),
    .INT_WIDTH(WIDTH),
    .FRAC_WIDTH(0),
    .SIGNED(0)
  ) comp (
    .reset(reset),
    .clk(clk),
    .done(done),
    .go(go),
    .left(left),
    .right(right),
    .out(out)
  );
endmodule

module std_div_pipe #(
    parameter WIDTH = 32
) (
    input                    reset,
    input                    clk,
    input                    go,
    input        [WIDTH-1:0] left,
    input        [WIDTH-1:0] right,
    output logic [WIDTH-1:0] out_remainder,
    output logic [WIDTH-1:0] out_quotient,
    output logic             done
);

  logic [WIDTH-1:0] dividend;
  logic [(WIDTH-1)*2:0] divisor;
  logic [WIDTH-1:0] quotient;
  logic [WIDTH-1:0] quotient_msk;
  logic start, running, finished, dividend_is_zero;

  assign start = go && !running;
  assign finished = quotient_msk == 0 && running;
  assign dividend_is_zero = start && left == 0;

  always_ff @(posedge clk) begin
    // Early return if the divisor is zero.
    if (finished || dividend_is_zero)
      done <= 1;
    else
      done <= 0;
  end

  always_ff @(posedge clk) begin
    if (reset || finished || dividend_is_zero)
      running <= 0;
    else if (start)
      running <= 1;
    else
      running <= running;
  end

  // Outputs
  always_ff @(posedge clk) begin
    if (dividend_is_zero || start) begin
      out_quotient <= 0;
      out_remainder <= 0;
    end else if (finished) begin
      out_quotient <= quotient;
      out_remainder <= dividend;
    end else begin
      // Otherwise, explicitly latch the values.
      out_quotient <= out_quotient;
      out_remainder <= out_remainder;
    end
  end

  // Calculate the quotient mask.
  always_ff @(posedge clk) begin
    if (start)
      quotient_msk <= 1 << WIDTH - 1;
    else if (running)
      quotient_msk <= quotient_msk >> 1;
    else
      quotient_msk <= quotient_msk;
  end

  // Calculate the quotient.
  always_ff @(posedge clk) begin
    if (start)
      quotient <= 0;
    else if (divisor <= dividend)
      quotient <= quotient | quotient_msk;
    else
      quotient <= quotient;
  end

  // Calculate the dividend.
  always_ff @(posedge clk) begin
    if (start)
      dividend <= left;
    else if (divisor <= dividend)
      dividend <= dividend - divisor;
    else
      dividend <= dividend;
  end

  always_ff @(posedge clk) begin
    if (start) begin
      divisor <= right << WIDTH - 1;
    end else if (finished) begin
      divisor <= 0;
    end else begin
      divisor <= divisor >> 1;
    end
  end

  // Simulation self test against unsynthesizable implementation.
  `ifdef VERILATOR
    logic [WIDTH-1:0] l, r;
    always_ff @(posedge clk) begin
      if (go) begin
        l <= left;
        r <= right;
      end else begin
        l <= l;
        r <= r;
      end
    end

    always @(posedge clk) begin
      if (done && $unsigned(out_remainder) != $unsigned(l % r))
        $error(
          "\nstd_div_pipe (Remainder): Computed and golden outputs do not match!\n",
          "left: %0d", $unsigned(l),
          "  right: %0d\n", $unsigned(r),
          "expected: %0d", $unsigned(l % r),
          "  computed: %0d", $unsigned(out_remainder)
        );

      if (done && $unsigned(out_quotient) != $unsigned(l / r))
        $error(
          "\nstd_div_pipe (Quotient): Computed and golden outputs do not match!\n",
          "left: %0d", $unsigned(l),
          "  right: %0d\n", $unsigned(r),
          "expected: %0d", $unsigned(l / r),
          "  computed: %0d", $unsigned(out_quotient)
        );
    end
  `endif
endmodule

/// =================== Signed, Bitnum =========================
module std_sadd #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = $signed(left + right);
endmodule

module std_ssub #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = $signed(left - right);
endmodule

module std_smult_pipe #(
    parameter WIDTH = 32
) (
    input  logic                    reset,
    input  logic                    go,
    input  logic                    clk,
    input  signed       [WIDTH-1:0] left,
    input  signed       [WIDTH-1:0] right,
    output logic signed [WIDTH-1:0] out,
    output logic                    done
);
  std_fp_mult_pipe #(
    .WIDTH(WIDTH),
    .INT_WIDTH(WIDTH),
    .FRAC_WIDTH(0),
    .SIGNED(1)
  ) comp (
    .reset(reset),
    .clk(clk),
    .done(done),
    .go(go),
    .left(left),
    .right(right),
    .out(out)
  );
endmodule

/* verilator lint_off WIDTH */
module std_sdiv_pipe #(
    parameter WIDTH = 32
) (
    input                           reset,
    input                           clk,
    input                           go,
    input  logic signed [WIDTH-1:0] left,
    input  logic signed [WIDTH-1:0] right,
    output logic signed [WIDTH-1:0] out_quotient,
    output logic signed [WIDTH-1:0] out_remainder,
    output logic                    done
);

  logic signed [WIDTH-1:0] left_abs, right_abs, comp_out_q, comp_out_r, right_save, out_rem_intermediate;

  // Registers to figure out how to transform outputs.
  logic different_signs, left_sign, right_sign;

  // Latch the value of control registers so that their available after
  // go signal becomes low.
  always_ff @(posedge clk) begin
    if (go) begin
      right_save <= right_abs;
      left_sign <= left[WIDTH-1];
      right_sign <= right[WIDTH-1];
    end else begin
      left_sign <= left_sign;
      right_save <= right_save;
      right_sign <= right_sign;
    end
  end

  assign right_abs = right[WIDTH-1] ? -right : right;
  assign left_abs = left[WIDTH-1] ? -left : left;

  assign different_signs = left_sign ^ right_sign;
  assign out_quotient = different_signs ? -comp_out_q : comp_out_q;

  // Remainder is computed as:
  //  t0 = |left| % |right|
  //  t1 = if left * right < 0 and t0 != 0 then |right| - t0 else t0
  //  rem = if right < 0 then -t1 else t1
  assign out_rem_intermediate = different_signs & |comp_out_r ? $signed(right_save - comp_out_r) : comp_out_r;
  assign out_remainder = right_sign ? -out_rem_intermediate : out_rem_intermediate;

  std_div_pipe #(
    .WIDTH(WIDTH)
  ) comp (
    .reset(reset),
    .clk(clk),
    .done(done),
    .go(go),
    .left(left_abs),
    .right(right_abs),
    .out_quotient(comp_out_q),
    .out_remainder(comp_out_r)
  );

  // Simulation self test against unsynthesizable implementation.
  `ifdef VERILATOR
    logic signed [WIDTH-1:0] l, r;
    always_ff @(posedge clk) begin
      if (go) begin
        l <= left;
        r <= right;
      end else begin
        l <= l;
        r <= r;
      end
    end

    always @(posedge clk) begin
      if (done && out_quotient != $signed(l / r))
        $error(
          "\nstd_sdiv_pipe (Quotient): Computed and golden outputs do not match!\n",
          "left: %0d", l,
          "  right: %0d\n", r,
          "expected: %0d", $signed(l / r),
          "  computed: %0d", $signed(out_quotient),
        );
      if (done && out_remainder != $signed(((l % r) + r) % r))
        $error(
          "\nstd_sdiv_pipe (Remainder): Computed and golden outputs do not match!\n",
          "left: %0d", l,
          "  right: %0d\n", r,
          "expected: %0d", $signed(((l % r) + r) % r),
          "  computed: %0d", $signed(out_remainder),
        );
    end
  `endif
endmodule

module std_sgt #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left > right);
endmodule

module std_slt #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left < right);
endmodule

module std_seq #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left == right);
endmodule

module std_sneq #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left != right);
endmodule

module std_sge #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left >= right);
endmodule

module std_sle #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed             out
);
  assign out = $signed(left <= right);
endmodule

module std_slsh #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = left <<< right;
endmodule

module std_srsh #(
    parameter WIDTH = 32
) (
    input  signed [WIDTH-1:0] left,
    input  signed [WIDTH-1:0] right,
    output signed [WIDTH-1:0] out
);
  assign out = left >>> right;
endmodule
/**
 * Core primitives for Calyx.
 * Implements core primitives used by the compiler.
 *
 * Conventions:
 * - All parameter names must be SNAKE_CASE and all caps.
 * - Port names must be snake_case, no caps.
 */
`default_nettype none

module std_const #(
    parameter WIDTH = 32,
    parameter VALUE = 0
) (
   output logic [WIDTH - 1:0] out
);
  assign out = VALUE;
endmodule

module std_wire #(
  parameter WIDTH = 32
) (
  input wire logic [WIDTH - 1:0] in,
  output logic [WIDTH - 1:0] out
);
  assign out = in;
endmodule

module std_slice #(
    parameter IN_WIDTH  = 32,
    parameter OUT_WIDTH = 32
) (
   input wire                   logic [ IN_WIDTH-1:0] in,
   output logic [OUT_WIDTH-1:0] out
);
  assign out = in[OUT_WIDTH-1:0];

  `ifdef VERILATOR
    always_comb begin
      if (IN_WIDTH < OUT_WIDTH)
        $error(
          "std_slice: Input width less than output width\n",
          "IN_WIDTH: %0d", IN_WIDTH,
          "OUT_WIDTH: %0d", OUT_WIDTH
        );
    end
  `endif
endmodule

module std_pad #(
    parameter IN_WIDTH  = 32,
    parameter OUT_WIDTH = 32
) (
   input wire logic [IN_WIDTH-1:0]  in,
   output logic     [OUT_WIDTH-1:0] out
);
  localparam EXTEND = OUT_WIDTH - IN_WIDTH;
  assign out = { {EXTEND {1'b0}}, in};

  `ifdef VERILATOR
    always_comb begin
      if (IN_WIDTH > OUT_WIDTH)
        $error(
          "std_pad: Output width less than input width\n",
          "IN_WIDTH: %0d", IN_WIDTH,
          "OUT_WIDTH: %0d", OUT_WIDTH
        );
    end
  `endif
endmodule

module std_not #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] in,
   output logic [WIDTH-1:0] out
);
  assign out = ~in;
endmodule

module std_and #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left & right;
endmodule

module std_or #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left | right;
endmodule

module std_xor #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left ^ right;
endmodule

module std_add #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left + right;
endmodule

module std_sub #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left - right;
endmodule

module std_gt #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  assign out = left > right;
endmodule

module std_lt #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  assign out = left < right;
endmodule

module std_eq #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  assign out = left == right;
endmodule

module std_neq #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  assign out = left != right;
endmodule

module std_ge #(
    parameter WIDTH = 32
) (
    input wire   logic [WIDTH-1:0] left,
    input wire   logic [WIDTH-1:0] right,
    output logic out
);
  assign out = left >= right;
endmodule

module std_le #(
    parameter WIDTH = 32
) (
   input wire   logic [WIDTH-1:0] left,
   input wire   logic [WIDTH-1:0] right,
   output logic out
);
  assign out = left <= right;
endmodule

module std_lsh #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left << right;
endmodule

module std_rsh #(
    parameter WIDTH = 32
) (
   input wire               logic [WIDTH-1:0] left,
   input wire               logic [WIDTH-1:0] right,
   output logic [WIDTH-1:0] out
);
  assign out = left >> right;
endmodule

/// this primitive is intended to be used
/// for lowering purposes (not in source programs)
module std_mux #(
    parameter WIDTH = 32
) (
   input wire               logic cond,
   input wire               logic [WIDTH-1:0] tru,
   input wire               logic [WIDTH-1:0] fal,
   output logic [WIDTH-1:0] out
);
  assign out = cond ? tru : fal;
endmodule

/// Memories
module std_reg #(
    parameter WIDTH = 32
) (
   input wire [ WIDTH-1:0]    in,
   input wire                 write_en,
   input wire                 clk,
   input wire                 reset,
    // output
   output logic [WIDTH - 1:0] out,
   output logic               done
);

  always_ff @(posedge clk) begin
    if (reset) begin
       out <= 0;
       done <= 0;
    end else if (write_en) begin
      out <= in;
      done <= 1'd1;
    end else done <= 1'd0;
  end
endmodule

module std_mem_d1 #(
    parameter WIDTH = 32,
    parameter SIZE = 16,
    parameter IDX_SIZE = 4
) (
   input wire                logic [IDX_SIZE-1:0] addr0,
   input wire                logic [ WIDTH-1:0] write_data,
   input wire                logic write_en,
   input wire                logic clk,
   output logic [ WIDTH-1:0] read_data,
   output logic              done
);

  logic [WIDTH-1:0] mem[SIZE-1:0];

  /* verilator lint_off WIDTH */
  assign read_data = mem[addr0];
  always_ff @(posedge clk) begin
    if (write_en) begin
      mem[addr0] <= write_data;
      done <= 1'd1;
    end else done <= 1'd0;
  end

  // Check for out of bounds access
  `ifdef VERILATOR
    always_comb begin
      if (addr0 >= SIZE)
        $error(
          "std_mem_d1: Out of bounds access\n",
          "addr0: %0d\n", addr0,
          "SIZE: %0d", SIZE
        );
    end
  `endif
endmodule

module std_mem_d2 #(
    parameter WIDTH = 32,
    parameter D0_SIZE = 16,
    parameter D1_SIZE = 16,
    parameter D0_IDX_SIZE = 4,
    parameter D1_IDX_SIZE = 4
) (
   input wire                logic [D0_IDX_SIZE-1:0] addr0,
   input wire                logic [D1_IDX_SIZE-1:0] addr1,
   input wire                logic [ WIDTH-1:0] write_data,
   input wire                logic write_en,
   input wire                logic clk,
   output logic [ WIDTH-1:0] read_data,
   output logic              done
);

  /* verilator lint_off WIDTH */
  logic [WIDTH-1:0] mem[D0_SIZE-1:0][D1_SIZE-1:0];

  assign read_data = mem[addr0][addr1];
  always_ff @(posedge clk) begin
    if (write_en) begin
      mem[addr0][addr1] <= write_data;
      done <= 1'd1;
    end else done <= 1'd0;
  end

  // Check for out of bounds access
  `ifdef VERILATOR
    always_comb begin
      if (addr0 >= D0_SIZE)
        $error(
          "std_mem_d2: Out of bounds access\n",
          "addr0: %0d\n", addr0,
          "D0_SIZE: %0d", D0_SIZE
        );
      if (addr1 >= D1_SIZE)
        $error(
          "std_mem_d2: Out of bounds access\n",
          "addr1: %0d\n", addr1,
          "D1_SIZE: %0d", D1_SIZE
        );
    end
  `endif
endmodule

module std_mem_d3 #(
    parameter WIDTH = 32,
    parameter D0_SIZE = 16,
    parameter D1_SIZE = 16,
    parameter D2_SIZE = 16,
    parameter D0_IDX_SIZE = 4,
    parameter D1_IDX_SIZE = 4,
    parameter D2_IDX_SIZE = 4
) (
   input wire                logic [D0_IDX_SIZE-1:0] addr0,
   input wire                logic [D1_IDX_SIZE-1:0] addr1,
   input wire                logic [D2_IDX_SIZE-1:0] addr2,
   input wire                logic [ WIDTH-1:0] write_data,
   input wire                logic write_en,
   input wire                logic clk,
   output logic [ WIDTH-1:0] read_data,
   output logic              done
);

  /* verilator lint_off WIDTH */
  logic [WIDTH-1:0] mem[D0_SIZE-1:0][D1_SIZE-1:0][D2_SIZE-1:0];

  assign read_data = mem[addr0][addr1][addr2];
  always_ff @(posedge clk) begin
    if (write_en) begin
      mem[addr0][addr1][addr2] <= write_data;
      done <= 1'd1;
    end else done <= 1'd0;
  end

  // Check for out of bounds access
  `ifdef VERILATOR
    always_comb begin
      if (addr0 >= D0_SIZE)
        $error(
          "std_mem_d3: Out of bounds access\n",
          "addr0: %0d\n", addr0,
          "D0_SIZE: %0d", D0_SIZE
        );
      if (addr1 >= D1_SIZE)
        $error(
          "std_mem_d3: Out of bounds access\n",
          "addr1: %0d\n", addr1,
          "D1_SIZE: %0d", D1_SIZE
        );
      if (addr2 >= D2_SIZE)
        $error(
          "std_mem_d3: Out of bounds access\n",
          "addr2: %0d\n", addr2,
          "D2_SIZE: %0d", D2_SIZE
        );
    end
  `endif
endmodule

module std_mem_d4 #(
    parameter WIDTH = 32,
    parameter D0_SIZE = 16,
    parameter D1_SIZE = 16,
    parameter D2_SIZE = 16,
    parameter D3_SIZE = 16,
    parameter D0_IDX_SIZE = 4,
    parameter D1_IDX_SIZE = 4,
    parameter D2_IDX_SIZE = 4,
    parameter D3_IDX_SIZE = 4
) (
   input wire                logic [D0_IDX_SIZE-1:0] addr0,
   input wire                logic [D1_IDX_SIZE-1:0] addr1,
   input wire                logic [D2_IDX_SIZE-1:0] addr2,
   input wire                logic [D3_IDX_SIZE-1:0] addr3,
   input wire                logic [ WIDTH-1:0] write_data,
   input wire                logic write_en,
   input wire                logic clk,
   output logic [ WIDTH-1:0] read_data,
   output logic              done
);

  /* verilator lint_off WIDTH */
  logic [WIDTH-1:0] mem[D0_SIZE-1:0][D1_SIZE-1:0][D2_SIZE-1:0][D3_SIZE-1:0];

  assign read_data = mem[addr0][addr1][addr2][addr3];
  always_ff @(posedge clk) begin
    if (write_en) begin
      mem[addr0][addr1][addr2][addr3] <= write_data;
      done <= 1'd1;
    end else done <= 1'd0;
  end

  // Check for out of bounds access
  `ifdef VERILATOR
    always_comb begin
      if (addr0 >= D0_SIZE)
        $error(
          "std_mem_d4: Out of bounds access\n",
          "addr0: %0d\n", addr0,
          "D0_SIZE: %0d", D0_SIZE
        );
      if (addr1 >= D1_SIZE)
        $error(
          "std_mem_d4: Out of bounds access\n",
          "addr1: %0d\n", addr1,
          "D1_SIZE: %0d", D1_SIZE
        );
      if (addr2 >= D2_SIZE)
        $error(
          "std_mem_d4: Out of bounds access\n",
          "addr2: %0d\n", addr2,
          "D2_SIZE: %0d", D2_SIZE
        );
      if (addr3 >= D3_SIZE)
        $error(
          "std_mem_d4: Out of bounds access\n",
          "addr3: %0d\n", addr3,
          "D3_SIZE: %0d", D3_SIZE
        );
    end
  `endif
endmodule

`default_nettype wire
module exponent (
    input logic [31:0] base,
    input logic [3:0] exp,
    output logic [31:0] out,
    input logic go,
    input logic clk,
    input logic reset,
    output logic done
);
    logic [31:0] pow_in;
    logic pow_write_en;
    logic pow_clk;
    logic pow_reset;
    logic [31:0] pow_out;
    logic pow_done;
    logic [3:0] count_in;
    logic count_write_en;
    logic count_clk;
    logic count_reset;
    logic [3:0] count_out;
    logic count_done;
    logic mul_clk;
    logic mul_reset;
    logic mul_go;
    logic [31:0] mul_left;
    logic [31:0] mul_right;
    logic [31:0] mul_out;
    logic mul_done;
    logic [3:0] lt_left;
    logic [3:0] lt_right;
    logic lt_out;
    logic [3:0] incr_left;
    logic [3:0] incr_right;
    logic [3:0] incr_out;
    logic comb_reg_in;
    logic comb_reg_write_en;
    logic comb_reg_clk;
    logic comb_reg_reset;
    logic comb_reg_out;
    logic comb_reg_done;
    logic pd_in;
    logic pd_write_en;
    logic pd_clk;
    logic pd_reset;
    logic pd_out;
    logic pd_done;
    logic pd0_in;
    logic pd0_write_en;
    logic pd0_clk;
    logic pd0_reset;
    logic pd0_out;
    logic pd0_done;
    logic [2:0] fsm_in;
    logic fsm_write_en;
    logic fsm_clk;
    logic fsm_reset;
    logic [2:0] fsm_out;
    logic fsm_done;
    logic init_go_in;
    logic init_go_out;
    logic init_done_in;
    logic init_done_out;
    logic do_mul_go_in;
    logic do_mul_go_out;
    logic do_mul_done_in;
    logic do_mul_done_out;
    logic incr_count_go_in;
    logic incr_count_go_out;
    logic incr_count_done_in;
    logic incr_count_done_out;
    logic cond0_go_in;
    logic cond0_go_out;
    logic cond0_done_in;
    logic cond0_done_out;
    logic par_go_in;
    logic par_go_out;
    logic par_done_in;
    logic par_done_out;
    logic tdcc_go_in;
    logic tdcc_go_out;
    logic tdcc_done_in;
    logic tdcc_done_out;
    initial begin
        pow_in = 32'd0;
        pow_write_en = 1'd0;
        pow_clk = 1'd0;
        pow_reset = 1'd0;
        count_in = 4'd0;
        count_write_en = 1'd0;
        count_clk = 1'd0;
        count_reset = 1'd0;
        mul_clk = 1'd0;
        mul_reset = 1'd0;
        mul_go = 1'd0;
        mul_left = 32'd0;
        mul_right = 32'd0;
        lt_left = 4'd0;
        lt_right = 4'd0;
        incr_left = 4'd0;
        incr_right = 4'd0;
        comb_reg_in = 1'd0;
        comb_reg_write_en = 1'd0;
        comb_reg_clk = 1'd0;
        comb_reg_reset = 1'd0;
        pd_in = 1'd0;
        pd_write_en = 1'd0;
        pd_clk = 1'd0;
        pd_reset = 1'd0;
        pd0_in = 1'd0;
        pd0_write_en = 1'd0;
        pd0_clk = 1'd0;
        pd0_reset = 1'd0;
        fsm_in = 3'd0;
        fsm_write_en = 1'd0;
        fsm_clk = 1'd0;
        fsm_reset = 1'd0;
        init_go_in = 1'd0;
        init_done_in = 1'd0;
        do_mul_go_in = 1'd0;
        do_mul_done_in = 1'd0;
        incr_count_go_in = 1'd0;
        incr_count_done_in = 1'd0;
        cond0_go_in = 1'd0;
        cond0_done_in = 1'd0;
        par_go_in = 1'd0;
        par_done_in = 1'd0;
        tdcc_go_in = 1'd0;
        tdcc_done_in = 1'd0;
    end
    std_reg # (
        .WIDTH(32)
    ) pow (
        .clk(pow_clk),
        .done(pow_done),
        .in(pow_in),
        .out(pow_out),
        .reset(pow_reset),
        .write_en(pow_write_en)
    );
    std_reg # (
        .WIDTH(4)
    ) count (
        .clk(count_clk),
        .done(count_done),
        .in(count_in),
        .out(count_out),
        .reset(count_reset),
        .write_en(count_write_en)
    );
    std_mult_pipe # (
        .WIDTH(32)
    ) mul (
        .clk(mul_clk),
        .done(mul_done),
        .go(mul_go),
        .left(mul_left),
        .out(mul_out),
        .reset(mul_reset),
        .right(mul_right)
    );
    std_lt # (
        .WIDTH(4)
    ) lt (
        .left(lt_left),
        .out(lt_out),
        .right(lt_right)
    );
    std_add # (
        .WIDTH(4)
    ) incr (
        .left(incr_left),
        .out(incr_out),
        .right(incr_right)
    );
    std_reg # (
        .WIDTH(1)
    ) comb_reg (
        .clk(comb_reg_clk),
        .done(comb_reg_done),
        .in(comb_reg_in),
        .out(comb_reg_out),
        .reset(comb_reg_reset),
        .write_en(comb_reg_write_en)
    );
    std_reg # (
        .WIDTH(1)
    ) pd (
        .clk(pd_clk),
        .done(pd_done),
        .in(pd_in),
        .out(pd_out),
        .reset(pd_reset),
        .write_en(pd_write_en)
    );
    std_reg # (
        .WIDTH(1)
    ) pd0 (
        .clk(pd0_clk),
        .done(pd0_done),
        .in(pd0_in),
        .out(pd0_out),
        .reset(pd0_reset),
        .write_en(pd0_write_en)
    );
    std_reg # (
        .WIDTH(3)
    ) fsm (
        .clk(fsm_clk),
        .done(fsm_done),
        .in(fsm_in),
        .out(fsm_out),
        .reset(fsm_reset),
        .write_en(fsm_write_en)
    );
    std_wire # (
        .WIDTH(1)
    ) init_go (
        .in(init_go_in),
        .out(init_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) init_done (
        .in(init_done_in),
        .out(init_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_mul_go (
        .in(do_mul_go_in),
        .out(do_mul_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) do_mul_done (
        .in(do_mul_done_in),
        .out(do_mul_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) incr_count_go (
        .in(incr_count_go_in),
        .out(incr_count_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) incr_count_done (
        .in(incr_count_done_in),
        .out(incr_count_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) cond0_go (
        .in(cond0_go_in),
        .out(cond0_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) cond0_done (
        .in(cond0_done_in),
        .out(cond0_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) par_go (
        .in(par_go_in),
        .out(par_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) par_done (
        .in(par_done_in),
        .out(par_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) tdcc_go (
        .in(tdcc_go_in),
        .out(tdcc_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) tdcc_done (
        .in(tdcc_done_in),
        .out(tdcc_done_out)
    );
    assign done = tdcc_done_out;
    assign out = pow_out;
    assign comb_reg_clk = clk;
    assign comb_reg_in =
     cond0_go_out ? lt_out : 1'd0;
    assign comb_reg_reset = reset;
    assign comb_reg_write_en = cond0_go_out;
    assign cond0_done_in = comb_reg_done;
    assign cond0_go_in = ~cond0_done_out & fsm_out == 3'd1 & tdcc_go_out | ~cond0_done_out & fsm_out == 3'd3 & tdcc_go_out;
    assign count_clk = clk;
    assign count_in =
     init_go_out ? 4'd0 :
     incr_count_go_out ? incr_out : 4'd0;
    assign count_reset = reset;
    assign count_write_en = init_go_out | incr_count_go_out;
    assign do_mul_done_in = pow_done;
    assign do_mul_go_in = ~(pd_out | do_mul_done_out) & par_go_out;
    assign fsm_clk = clk;
    assign fsm_in =
     fsm_out == 3'd4 ? 3'd0 :
     fsm_out == 3'd0 & init_done_out & tdcc_go_out ? 3'd1 :
     fsm_out == 3'd1 & cond0_done_out & comb_reg_out & tdcc_go_out | fsm_out == 3'd3 & cond0_done_out & comb_reg_out & tdcc_go_out ? 3'd2 :
     fsm_out == 3'd2 & par_done_out & tdcc_go_out ? 3'd3 :
     fsm_out == 3'd1 & cond0_done_out & ~comb_reg_out & tdcc_go_out | fsm_out == 3'd3 & cond0_done_out & ~comb_reg_out & tdcc_go_out ? 3'd4 : 3'd0;
    assign fsm_reset = reset;
    assign fsm_write_en = fsm_out == 3'd4 | fsm_out == 3'd0 & init_done_out & tdcc_go_out | fsm_out == 3'd1 & cond0_done_out & comb_reg_out & tdcc_go_out | fsm_out == 3'd3 & cond0_done_out & comb_reg_out & tdcc_go_out | fsm_out == 3'd2 & par_done_out & tdcc_go_out | fsm_out == 3'd1 & cond0_done_out & ~comb_reg_out & tdcc_go_out | fsm_out == 3'd3 & cond0_done_out & ~comb_reg_out & tdcc_go_out;
    assign incr_left =
     incr_count_go_out ? 4'd1 : 4'd0;
    assign incr_right =
     incr_count_go_out ? count_out : 4'd0;
    assign incr_count_done_in = count_done;
    assign incr_count_go_in = ~(pd0_out | incr_count_done_out) & par_go_out;
    assign init_done_in = pow_done & count_done;
    assign init_go_in = ~init_done_out & fsm_out == 3'd0 & tdcc_go_out;
    assign lt_left =
     cond0_go_out ? count_out : 4'd0;
    assign lt_right =
     cond0_go_out ? exp : 4'd0;
    assign mul_clk = clk;
    assign mul_go = ~mul_done & do_mul_go_out;
    assign mul_left =
     do_mul_go_out ? base : 32'd0;
    assign mul_reset = reset;
    assign mul_right =
     do_mul_go_out ? pow_out : 32'd0;
    assign par_done_in = pd_out & pd0_out;
    assign par_go_in = ~par_done_out & fsm_out == 3'd2 & tdcc_go_out;
    assign pd_clk = clk;
    assign pd_in =
     pd_out & pd0_out ? 1'd0 :
     do_mul_done_out & par_go_out ? 1'd1 : 1'd0;
    assign pd_reset = reset;
    assign pd_write_en = pd_out & pd0_out | do_mul_done_out & par_go_out;
    assign pd0_clk = clk;
    assign pd0_in =
     pd_out & pd0_out ? 1'd0 :
     incr_count_done_out & par_go_out ? 1'd1 : 1'd0;
    assign pd0_reset = reset;
    assign pd0_write_en = pd_out & pd0_out | incr_count_done_out & par_go_out;
    assign pow_clk = clk;
    assign pow_in =
     init_go_out ? 32'd1 :
     do_mul_go_out ? mul_out : 32'd0;
    assign pow_reset = reset;
    assign pow_write_en =
     init_go_out ? 1'd1 :
     do_mul_go_out ? mul_done : 1'd0;
    assign tdcc_done_in = fsm_out == 3'd4;
    assign tdcc_go_in = go;
endmodule

module main (
    input logic go,
    input logic clk,
    input logic reset,
    output logic done,
    output logic [3:0] a0_addr0,
    output logic [31:0] a0_write_data,
    output logic a0_write_en,
    output logic a0_clk,
    input logic [31:0] a0_read_data,
    input logic a0_done
);
    logic [31:0] a_read0_0_in;
    logic a_read0_0_write_en;
    logic a_read0_0_clk;
    logic a_read0_0_reset;
    logic [31:0] a_read0_0_out;
    logic a_read0_0_done;
    logic [3:0] add0_left;
    logic [3:0] add0_right;
    logic [3:0] add0_out;
    logic [3:0] const0_out;
    logic [3:0] const1_out;
    logic [3:0] const2_out;
    logic [3:0] const3_out;
    logic [31:0] exp0_base;
    logic [3:0] exp0_exp;
    logic [31:0] exp0_out;
    logic exp0_go;
    logic exp0_clk;
    logic exp0_reset;
    logic exp0_done;
    logic [3:0] i0_in;
    logic i0_write_en;
    logic i0_clk;
    logic i0_reset;
    logic [3:0] i0_out;
    logic i0_done;
    logic [3:0] le0_left;
    logic [3:0] le0_right;
    logic le0_out;
    logic comb_reg_in;
    logic comb_reg_write_en;
    logic comb_reg_clk;
    logic comb_reg_reset;
    logic comb_reg_out;
    logic comb_reg_done;
    logic [3:0] fsm_in;
    logic fsm_write_en;
    logic fsm_clk;
    logic fsm_reset;
    logic [3:0] fsm_out;
    logic fsm_done;
    logic let0_go_in;
    logic let0_go_out;
    logic let0_done_in;
    logic let0_done_out;
    logic let1_go_in;
    logic let1_go_out;
    logic let1_done_in;
    logic let1_done_out;
    logic upd0_go_in;
    logic upd0_go_out;
    logic upd0_done_in;
    logic upd0_done_out;
    logic upd1_go_in;
    logic upd1_go_out;
    logic upd1_done_in;
    logic upd1_done_out;
    logic upd2_go_in;
    logic upd2_go_out;
    logic upd2_done_in;
    logic upd2_done_out;
    logic cond00_go_in;
    logic cond00_go_out;
    logic cond00_done_in;
    logic cond00_done_out;
    logic invoke_go_in;
    logic invoke_go_out;
    logic invoke_done_in;
    logic invoke_done_out;
    logic tdcc_go_in;
    logic tdcc_go_out;
    logic tdcc_done_in;
    logic tdcc_done_out;
    initial begin
        a_read0_0_in = 32'd0;
        a_read0_0_write_en = 1'd0;
        a_read0_0_clk = 1'd0;
        a_read0_0_reset = 1'd0;
        add0_left = 4'd0;
        add0_right = 4'd0;
        exp0_base = 32'd0;
        exp0_exp = 4'd0;
        exp0_go = 1'd0;
        exp0_clk = 1'd0;
        exp0_reset = 1'd0;
        i0_in = 4'd0;
        i0_write_en = 1'd0;
        i0_clk = 1'd0;
        i0_reset = 1'd0;
        le0_left = 4'd0;
        le0_right = 4'd0;
        comb_reg_in = 1'd0;
        comb_reg_write_en = 1'd0;
        comb_reg_clk = 1'd0;
        comb_reg_reset = 1'd0;
        fsm_in = 4'd0;
        fsm_write_en = 1'd0;
        fsm_clk = 1'd0;
        fsm_reset = 1'd0;
        let0_go_in = 1'd0;
        let0_done_in = 1'd0;
        let1_go_in = 1'd0;
        let1_done_in = 1'd0;
        upd0_go_in = 1'd0;
        upd0_done_in = 1'd0;
        upd1_go_in = 1'd0;
        upd1_done_in = 1'd0;
        upd2_go_in = 1'd0;
        upd2_done_in = 1'd0;
        cond00_go_in = 1'd0;
        cond00_done_in = 1'd0;
        invoke_go_in = 1'd0;
        invoke_done_in = 1'd0;
        tdcc_go_in = 1'd0;
        tdcc_done_in = 1'd0;
    end
    std_reg # (
        .WIDTH(32)
    ) a_read0_0 (
        .clk(a_read0_0_clk),
        .done(a_read0_0_done),
        .in(a_read0_0_in),
        .out(a_read0_0_out),
        .reset(a_read0_0_reset),
        .write_en(a_read0_0_write_en)
    );
    std_add # (
        .WIDTH(4)
    ) add0 (
        .left(add0_left),
        .out(add0_out),
        .right(add0_right)
    );
    std_const # (
        .VALUE(4'd0),
        .WIDTH(4)
    ) const0 (
        .out(const0_out)
    );
    std_const # (
        .VALUE(4'd9),
        .WIDTH(4)
    ) const1 (
        .out(const1_out)
    );
    std_const # (
        .VALUE(4'd1),
        .WIDTH(4)
    ) const2 (
        .out(const2_out)
    );
    std_const # (
        .VALUE(4'd3),
        .WIDTH(4)
    ) const3 (
        .out(const3_out)
    );
    exponent exp0 (
        .base(exp0_base),
        .clk(exp0_clk),
        .done(exp0_done),
        .exp(exp0_exp),
        .go(exp0_go),
        .out(exp0_out),
        .reset(exp0_reset)
    );
    std_reg # (
        .WIDTH(4)
    ) i0 (
        .clk(i0_clk),
        .done(i0_done),
        .in(i0_in),
        .out(i0_out),
        .reset(i0_reset),
        .write_en(i0_write_en)
    );
    std_le # (
        .WIDTH(4)
    ) le0 (
        .left(le0_left),
        .out(le0_out),
        .right(le0_right)
    );
    std_reg # (
        .WIDTH(1)
    ) comb_reg (
        .clk(comb_reg_clk),
        .done(comb_reg_done),
        .in(comb_reg_in),
        .out(comb_reg_out),
        .reset(comb_reg_reset),
        .write_en(comb_reg_write_en)
    );
    std_reg # (
        .WIDTH(4)
    ) fsm (
        .clk(fsm_clk),
        .done(fsm_done),
        .in(fsm_in),
        .out(fsm_out),
        .reset(fsm_reset),
        .write_en(fsm_write_en)
    );
    std_wire # (
        .WIDTH(1)
    ) let0_go (
        .in(let0_go_in),
        .out(let0_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) let0_done (
        .in(let0_done_in),
        .out(let0_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) let1_go (
        .in(let1_go_in),
        .out(let1_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) let1_done (
        .in(let1_done_in),
        .out(let1_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) upd0_go (
        .in(upd0_go_in),
        .out(upd0_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) upd0_done (
        .in(upd0_done_in),
        .out(upd0_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) upd1_go (
        .in(upd1_go_in),
        .out(upd1_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) upd1_done (
        .in(upd1_done_in),
        .out(upd1_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) upd2_go (
        .in(upd2_go_in),
        .out(upd2_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) upd2_done (
        .in(upd2_done_in),
        .out(upd2_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) cond00_go (
        .in(cond00_go_in),
        .out(cond00_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) cond00_done (
        .in(cond00_done_in),
        .out(cond00_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) invoke_go (
        .in(invoke_go_in),
        .out(invoke_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) invoke_done (
        .in(invoke_done_in),
        .out(invoke_done_out)
    );
    std_wire # (
        .WIDTH(1)
    ) tdcc_go (
        .in(tdcc_go_in),
        .out(tdcc_go_out)
    );
    std_wire # (
        .WIDTH(1)
    ) tdcc_done (
        .in(tdcc_done_in),
        .out(tdcc_done_out)
    );
    assign a0_addr0 =
     upd0_go_out | upd1_go_out ? i0_out : 4'd0;
    assign a0_clk = clk;
    assign a0_write_data =
     upd1_go_out ? a_read0_0_out : 32'd0;
    assign a0_write_en = upd1_go_out;
    assign done = tdcc_done_out;
    assign a_read0_0_clk = clk;
    assign a_read0_0_in =
     upd0_go_out ? a0_read_data :
     let1_go_out ? exp0_out : 32'd0;
    assign a_read0_0_reset = reset;
    assign a_read0_0_write_en = let1_go_out | upd0_go_out;
    assign add0_left =
     upd2_go_out ? i0_out : 4'd0;
    assign add0_right =
     upd2_go_out ? const2_out : 4'd0;
    assign comb_reg_clk = clk;
    assign comb_reg_in =
     cond00_go_out ? le0_out : 1'd0;
    assign comb_reg_reset = reset;
    assign comb_reg_write_en = cond00_go_out;
    assign cond00_done_in = comb_reg_done;
    assign cond00_go_in = ~cond00_done_out & fsm_out == 4'd1 & tdcc_go_out | ~cond00_done_out & fsm_out == 4'd7 & tdcc_go_out;
    assign exp0_base =
     invoke_go_out ? a_read0_0_out : 32'd0;
    assign exp0_clk = clk;
    assign exp0_exp =
     invoke_go_out ? const3_out : 4'd0;
    assign exp0_go = invoke_go_out;
    assign exp0_reset = reset;
    assign fsm_clk = clk;
    assign fsm_in =
     fsm_out == 4'd8 ? 4'd0 :
     fsm_out == 4'd0 & let0_done_out & tdcc_go_out ? 4'd1 :
     fsm_out == 4'd1 & cond00_done_out & comb_reg_out & tdcc_go_out | fsm_out == 4'd7 & cond00_done_out & comb_reg_out & tdcc_go_out ? 4'd2 :
     fsm_out == 4'd2 & upd0_done_out & tdcc_go_out ? 4'd3 :
     fsm_out == 4'd3 & invoke_done_out & tdcc_go_out ? 4'd4 :
     fsm_out == 4'd4 & let1_done_out & tdcc_go_out ? 4'd5 :
     fsm_out == 4'd5 & upd1_done_out & tdcc_go_out ? 4'd6 :
     fsm_out == 4'd6 & upd2_done_out & tdcc_go_out ? 4'd7 :
     fsm_out == 4'd1 & cond00_done_out & ~comb_reg_out & tdcc_go_out | fsm_out == 4'd7 & cond00_done_out & ~comb_reg_out & tdcc_go_out ? 4'd8 : 4'd0;
    assign fsm_reset = reset;
    assign fsm_write_en = fsm_out == 4'd8 | fsm_out == 4'd0 & let0_done_out & tdcc_go_out | fsm_out == 4'd1 & cond00_done_out & comb_reg_out & tdcc_go_out | fsm_out == 4'd7 & cond00_done_out & comb_reg_out & tdcc_go_out | fsm_out == 4'd2 & upd0_done_out & tdcc_go_out | fsm_out == 4'd3 & invoke_done_out & tdcc_go_out | fsm_out == 4'd4 & let1_done_out & tdcc_go_out | fsm_out == 4'd5 & upd1_done_out & tdcc_go_out | fsm_out == 4'd6 & upd2_done_out & tdcc_go_out | fsm_out == 4'd1 & cond00_done_out & ~comb_reg_out & tdcc_go_out | fsm_out == 4'd7 & cond00_done_out & ~comb_reg_out & tdcc_go_out;
    assign i0_clk = clk;
    assign i0_in =
     upd2_go_out ? add0_out :
     let0_go_out ? const0_out : 4'd0;
    assign i0_reset = reset;
    assign i0_write_en = let0_go_out | upd2_go_out;
    assign invoke_done_in = exp0_done;
    assign invoke_go_in = ~invoke_done_out & fsm_out == 4'd3 & tdcc_go_out;
    assign le0_left =
     cond00_go_out ? i0_out : 4'd0;
    assign le0_right =
     cond00_go_out ? const1_out : 4'd0;
    assign let0_done_in = i0_done;
    assign let0_go_in = ~let0_done_out & fsm_out == 4'd0 & tdcc_go_out;
    assign let1_done_in = a_read0_0_done;
    assign let1_go_in = ~let1_done_out & fsm_out == 4'd4 & tdcc_go_out;
    assign tdcc_done_in = fsm_out == 4'd8;
    assign tdcc_go_in = go;
    assign upd0_done_in = a_read0_0_done;
    assign upd0_go_in = ~upd0_done_out & fsm_out == 4'd2 & tdcc_go_out;
    assign upd1_done_in = a0_done;
    assign upd1_go_in = ~upd1_done_out & fsm_out == 4'd5 & tdcc_go_out;
    assign upd2_done_in = i0_done;
    assign upd2_go_in = ~upd2_done_out & fsm_out == 4'd6 & tdcc_go_out;
endmodule

