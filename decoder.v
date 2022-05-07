module decoder(
    // input wire [0,0] in0, // [0,0] write explicitly 1-bit wide scalar.
    input wire in0, // 1-bit wide scalar.
    input wire in1,
    output wire [2:0] out0 // 3-bit
);

function [2:0] decode_LED(input [1:0] in2bit);
    case (in2bit)
        // 2bit-wide'binary 00
        2'b00 : decode_LED = 3'b000; // LED off
        2'b01 : decode_LED = 3'b001; // red
        2'b10 : decode_LED = 3'b010; // green
        2'b11 : decode_LED = 3'b100; // blue
        default:decode_LED = 3'b000; // LED off
    endcase
endfunction

assign out0 = decode_LED({in1, in0}); // {} is cocatenate 


endmodule;