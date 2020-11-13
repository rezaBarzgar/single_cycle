module PC(input[15:0] inp,input clk,output[15:0] out);
  reg[15:0] pc;
  initial pc =16'd0;
  always @(posedge clk) pc = inp;
  assign out = pc;
endmodule
