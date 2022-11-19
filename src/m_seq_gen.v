



module m_seq_gen(
    clk,
    rst_n,
    out
    );
parameter N = 8;
parameter INIT = 8'b1111_1111;

input clk;
input rst_n;
output out;

reg [N-1:0] q = INIT;

assign out = q[N-1];

always@(posedge clk or negedge rst_n)
     begin
        if(!rst_n)
           q <= INIT;
        else
          begin
             q[N-1:1] <= q[N-2:0];
             q[0] <= q[1]^q[2]^q[3]^q[7];
          end
     end
endmodule
