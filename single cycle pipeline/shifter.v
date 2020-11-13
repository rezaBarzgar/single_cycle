module shifter(input[15:0]immediate,output[15:0] shifted);
  assign shifted = immediate << 1;
endmodule


module jumpShifter(input[11:0]immediate,input[2:0] pc,output[15:0] shifted);
  assign shifted = {pc,immediate<<1};
endmodule
