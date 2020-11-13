module PC_adder(input[15:0] pc,output[15:0] nextPC);
  reg[15:0] next;
  
  always @(*)next = pc + 16'd2;
  
  assign nextPC = next;
  
endmodule 
