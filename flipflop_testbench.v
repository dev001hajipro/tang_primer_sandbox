// iverilog.exe -o .\flipflop_testbench -s flipflop_testbench .\flipflop_testbench.v .\flipflop.v
module flipflop_testbench();

reg clock;
reg in0;
wire out0;

flipflop ff_ins0(clock, in0, out0);

initial begin
    in0 = 0;
    clock = 0;

    $dumpfile("flipflop_testbench.vcd"); // value change dump.
    $dumpvars(0, flipflop_testbench);
end

always #10 clock = ~clock;

initial begin
    #10 in0 = 2'b0;
    #10 in0 = 2'b1;
    #20 in0 = 2'b0;
    #20 in0 = 2'b1;
    #30 in0 = 2'b0;
    #30 in0 = 2'b1;
    #10 $finish;
end


endmodule