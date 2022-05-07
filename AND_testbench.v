// bulid
// -s TOP_MODULE_NAME [.v files...]
// iverilog -o and_testbench -s and_testbench and_testbench.v and.v
// vvp and_testbench

module AND_testbench;

reg a, b;
wire out;

AND and_instance(a, b, out);

initial begin
    // .vcd is Value Change Dump.
    $dumpfile("AND_testbench.vcd");
    $dumpvars(1, AND_testbench);

        a = 0; b = 0;
    #10 a = 1; b = 0; // 10 seconds
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;
    #10 a = 0; b = 0;
    #10 $finish;
end

endmodule
