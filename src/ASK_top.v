module ASK_top(
    input clk,
    output M_seq,
    output[9:0] ASK_sig
);


wire PLL2Counter;
wire PLL2M_seq;
wire[7:0] Counter2ROM;
wire[7:0] ROM2Switch;
wire[7:0] Switch2Dac;
wire M_seq2Switch;

PLL my_PLL(
    .inclk0(clk),
    .c0(PLL2Counter),
    .c1(PLL2M_seq)
);
Counter my_Counter(
    .clock(clk),
    .q(Counter2ROM)
);
ROM my_ROM(
    .address(Counter2ROM),
    .clock(clk),
    .q(ROM2Switch)
);
m_seq_gen my_m_seq(
    .clk(PLL2M_seq),
    .rst_n(1),
    .out(M_seq2Switch)
);
switch my_switch(
    .data_in(ROM2Switch),
    .data_out(Switch2Dac),
    .control(M_seq2Switch)
);
my_dac_bus my_dac_bus_1(
    .clk(clk),
    .data_in(Switch2Dac),
    .data_out(ASK_sig)
);

assign M_seq = M_seq2Switch;

endmodule