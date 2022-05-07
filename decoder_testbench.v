// iverilog.exe -o .\decoder_testbench -s decoder_testbench .\decoder_testbench.v .\decoder.v
module decoder_testbench();

reg in0;
reg in1;
wire [2:0] out0;

decoder decoder_instance0(in0, in1, out0);

initial begin
    $dumpfile("decoder_testbench.vcd"); // vcd is value change dump.
    $dumpvars(0, decoder_testbench);

        in0 = 0;    in1 = 0;
    #10 in0 = 0;    in1 = 1;
    #10 in0 = 1;    in1 = 0;
    #10 in0 = 1;    in1 = 1;

    #10 $finish;
end

endmodule
