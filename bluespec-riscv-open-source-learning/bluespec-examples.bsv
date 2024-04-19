module SimpleAdder (
    Clock clk,
    Reset rst,
    Bit#(32) a,
    Bit#(32) b,
    Bit#(32) sum
);
    rule add;
        sum <= a + b;
    endrule
endmodule