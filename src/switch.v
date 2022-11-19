module switch(
    data_in,
    data_out,
    control
);


input [7:0] data_in;
input control;


output [7:0]  data_out;


assign data_out = control ? data_in : 8'b1000_0000;


endmodule