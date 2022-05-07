module top_xor_testbench();

reg in0;
reg in1;
wire out0;

top_xor top_xor_inst(in0, in1, out0);

initial begin
    $dumpfile("top_xor_testbench.vcd");
    $dumpvars(0, top_xor_testbench);

            in0 = 0;    in1 = 0;
    #10     in0 = 1;    in1 = 0;
    #10     in0 = 0;    in1 = 1;
    #10     in0 = 1;    in1 = 1;
    #10 $finish;
end
endmodule
