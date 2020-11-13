module aluControl(input[2:0] func,input[3:0] aluOp,output[2:0] operation);
  reg[2:0] op;
  always @(aluOp)begin
    case(aluOp)
      4'b0000 :op = func;//R-type
      4'b0001 :op = 3'd0;//addi
      4'b0010 :op = 3'd2;//andi
      4'b0011 :op = 3'd3;//ori
      4'b0100 :op = 3'd1;//subi
      4'b0111 :op = 3'd0;//lhw
      4'b1000 :op = 3'd0;//shw
      4'b1001 :op = 3'd1;//beq
      4'b1010 :op = 3'd1;//bne
      default :op = 3'b000;
      
      
    endcase
  end
  assign operation = op;
endmodule
