// iverilog.exe -o .\top_testbench -s top_testbench .\top_testbench.v .\flipflop.v
// <time_unit>/<time_precision>
`timescale 1ns/1ps

module top_testbench();

parameter STEP = 42; // 24MHz.

reg clock;
reg reset;
wire [2:0] out0;

    always begin
        clock <= 0; #(STEP/2);
        clock <= 1; #(STEP/2);
    end

    initial begin
        reset <= 1'b0;
        #(STEP * 10); // wait
        reset <= 1'b1; 
        #(STEP * 240000);
        $finish();
    end

    initial begin
        $dumpfile("top_testbench.vcd");
        $dumpvars(0, top_testbench);
    end

endmodule
