// tiny_tapeout_goodies.v

module tiny_tapeout_goodies (
 input wire clk,
 input wire rst,
 input wire [7:0] data_in,
 output reg [7:0] data_out
);

 // Implement a simple pipeline stage
 reg [7:0] pipeline_reg;

 always @(posedge clk) begin
   if (rst) begin
     pipeline_reg <= 8'b00000000;
   end else begin
     pipeline_reg <= data_in;
   end
 end

 always @(*) begin
   data_out = pipeline_reg;
 end

endmodule
