// tiny_tapeout_intro.v

module tiny_tapeout_intro (
 input wire clk,
 input wire rst,
 output reg [7:0] led
);

 always @(posedge clk) begin
   if (rst) begin
     led <= 8'b00000000;
   end else begin
     led <= led + 1;
   end
 end

endmodule
