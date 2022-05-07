// 通常モジュールは小文字を使うが
// andは予約語なので大文字のANDをモジュール名に使っている。
// &演算子があるので、AND回路は書く必要ないが試しに作ってみた。

module AND (
        input   wire in0,
        input   wire in1,
        output  wire out0
    );
    assign out0 = in0 & in1;
endmodule
