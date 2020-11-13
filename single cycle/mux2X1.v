module mux2X1 (input [15:0] inp0,inp1 ,output[15:0]out,input sel);
  assign out = sel ? inp1 : inp0;
endmodule

module mux2 (input [2:0] inp0,inp1 ,output[2:0] out,input sel);
  assign out = sel ? inp1 : inp0;
endmodule
