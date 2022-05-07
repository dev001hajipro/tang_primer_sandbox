//  iverilog.exe -o top_not_testbench -s top_not_testbench .\top_not_testbench.v .\top_not.v
module top_not_testbench(
);

reg in0;
wire out0;

top_not top_not_instance(in0, out0);

initial begin
        // value changed dump.
        $dumpfile("top_not_testbench.vcd");
        // arg0 is levels, arg1 is module name.
        $dumpvars(0, top_not_testbench);

                in0 = 0;
        #10     in0 = 1;
        #10     $finish;
end

endmodule

