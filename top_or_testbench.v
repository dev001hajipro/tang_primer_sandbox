//  iverilog.exe -o top_or_testbench -s top_or_testbench .\top_or_testbench.v .\top_or.v
module top_or_testbench(
);

reg in0;
reg in1;
wire out0;

top_or top_or_instance(in0, in1, out0);

initial begin
        // value changed dump.
        $dumpfile("top_or_testbench.vcd");
        // arg0 is levels, arg1 is module name.
        $dumpvars(0, top_or_testbench);

                in0 = 0;        in1 = 0;
        #10     in0 = 1;        in1 = 0;
        #10     in0 = 0;        in1 = 1;
        #10     in0 = 1;        in1 = 1;
        #10     $finish;
end

endmodule

