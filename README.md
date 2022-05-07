# Verilogの勉強

Icarus Verilogは、Verilog-HDLをビルドします。GTKWaveは波形ビューアーで動作確認できます。

---

## ビルド

```bat
iverilog -o AND_testbench -s AND_testbench AND_testbench.v AND.v
```

---

## VCD生成

```bat
vvp .\AND_testbench
```

---

## 実行

```bat
gtkwave.exe .\AND_testbench.vcd
```
