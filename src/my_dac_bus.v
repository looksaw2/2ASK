module my_dac_bus(
     input clk,
     input[7:0]  data_in,
     output[9:0] data_out

);
reg clk_en = 1'b1;
always @(posedge clk) begin
    clk_en <= ~clk_en;

end

reg[9:0] data_out_i = 10'b0000_0000_00;
always @(posedge clk) begin
     data_out_i <= clk_en ?  data_out_i : {data_in,2'b0};
end

assign data_out = data_out_i;
endmodule