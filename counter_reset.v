// Tang PriMER is negative logic(=active low).

module counter(
    input wire clock,
    input wire reset,
    output wire out0
);

parameter COUNT_MAX = 25'd23_999_999;

reg ff;
reg [24:0] count = 25'd0;

always @(posedge clock or negedge reset) begin
    if (!reset) begin
        ff <= 1'b0;
        count <= 25'd0;
    end 
    else begin
        count <= count + 25'd1;
        if (count == COUNT_MAX) begin
            ff <= ~ff;
            count <= 25'd0; // reset counter.
        end
    end
end

assign out0 = ff;

endmodule
