module selector(
    input wire in0,
    input wire in1,
    input wire sel0,
    output wire out0
);

assign out0 = sel0 ? in1 : in0;

endmodule