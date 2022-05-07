module top_not(
        input   wire SW,
        output  wire LED_G
);

assign LED_G = ~SW;

endmodule
