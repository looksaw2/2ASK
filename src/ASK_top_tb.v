`timescale 1ns/1ns


module ASK_top_tb();
  
  reg clk;


  wire M_seq;
  wire [9:0] ASK_sig;

  ASK_top my_ASK_top(
     .clk(clk),
     .M_seq(M_seq),
     .ASK_sig(ASK_sig)
  );

  initial begin
      clk = 1'b1;
  end
always #17 clk = ~clk ;
endmodule