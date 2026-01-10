`timescale 1ns/1ps

module t_pipe5;

    reg clk, rst;
    reg [7:0] a, b;
    wire [8:0] sum;

    pipe5 m(
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .sum(sum)
    );

    // Clock
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("pipe5.vcd");
        $dumpvars(0, t_pipe5);

        rst = 1; a = 0; b = 0;
        #12; rst = 0;

        // Test inputs
        @(negedge clk);  a = 7;   b = 9;    // sum = 16
        @(negedge clk);  a = 12;  b = 24;   // sum = 36
        @(negedge clk);  a = 31;  b = 1;    // sum = 32
        @(negedge clk);  a = 15;  b = 11;   // sum = 26
        @(negedge clk);  a = 3;   b = 4;    // sum = 7

        // Wait for pipeline to empty
        repeat (7) @(negedge clk);
        $finish;
    end

    initial
        $monitor("t=%0t | a=%d, b=%d, sum=%d", $time, a, b, sum);

endmodule
