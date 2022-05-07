// iverilog.exe -o .\selector_testbench -s selector_testbench .\selector_testbench.v .\selector.v
module selector_testbench();

reg in0;
reg in1;
reg sel0;
wire out1;

selector selector_inst0(in0, in1, sel0, out1);

initial begin
    $dumpfile("selector_testbench.vcd");
    $dumpvars(0, selector_testbench);

        in0 = 0;    in1 = 0;    sel0 = 0;
    #10 in0 = 0;    in1 = 0;    sel0 = 1;
    #10 in0 = 0;    in1 = 1;    sel0 = 0;
    #10 in0 = 0;    in1 = 1;    sel0 = 1;
    #10 in0 = 1;    in1 = 0;    sel0 = 0;
    #10 in0 = 1;    in1 = 0;    sel0 = 1;
    #10 in0 = 1;    in1 = 1;    sel0 = 0;
    #10 in0 = 1;    in1 = 1;    sel0 = 1;

    #10 $finish;
end

endmodule