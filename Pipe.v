module pipe5(
    input clk,
    input rst,
    input [7:0] a,
    input [7:0] b,
    output reg [8:0] sum
);

    // Pipeline registers for each stage
    reg [7:0] stage1_a, stage1_b;
    reg [7:0] stage2_a, stage2_b;
    reg [8:0] stage3_sum;
    reg [8:0] stage4_sum;

    // Stage 5: Output 'sum' directly as reg

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            stage1_a   <= 0;
            stage1_b   <= 0;
            stage2_a   <= 0;
            stage2_b   <= 0;
            stage3_sum <= 0;
            stage4_sum <= 0;
            sum        <= 0;
        end else begin
            // Stage 1: latch inputs
            stage1_a   <= a;
            stage1_b   <= b;
            // Stage 2: pass along
            stage2_a   <= stage1_a;
            stage2_b   <= stage1_b;
            // Stage 3: add
            stage3_sum <= stage2_a + stage2_b;
            // Stage 4: pass along
            stage4_sum <= stage3_sum;
            // Stage 5: output
            sum        <= stage4_sum;
        end
    end

endmodule
