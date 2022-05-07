module flipflop(
    input   wire    clk,
    input   wire    in0,
    output  wire    out0
);

reg ff;

initial begin
    ff = 2'b0;
end

always @ (posedge clk)
begin
    ff <= in0;
end

assign out0 = ff;

endmodule