module top_or(
        input   wire SW, // switch
        input   wire JMP_W, // jump_wire
        output  wire LED_G
);

wire    IN_A;
wire    IN_B;
wire    OUT_Y;

// TANG PriMER is active low. change to active high.
// TANG PriMERは負論理。正論理に変更.
//assign IN_A = ~SW;

assign IN_A = SW;
assign IN_B = JMP_W;
assign OUT_Y = IN_A | IN_B;

assign LED_G = OUT_Y;

endmodule
