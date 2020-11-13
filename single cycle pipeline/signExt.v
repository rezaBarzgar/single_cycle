module signExt(input [5:0] immediate,output [15:0] signExtIm);
  assign signExtIm = $signed(immediate);
endmodule;
