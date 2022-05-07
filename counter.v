// TANG PriMER is 24MHz.
module counter(
    input wire clk,
    input wire in0,
    output wire out0
);

parameter COUNT_MAX = 25'd23_999_999;

reg FF;
reg [24:0] count;

always @(posedge clk) begin
    count <= count + 25'd1; // 25-bit wide, decimal, 1

    if (count == COUNT_MAX) begin
        FF <= ~FF;
        count <= 25'd0;  // reset.
    end
end

assign out0 = FF;

endmodule