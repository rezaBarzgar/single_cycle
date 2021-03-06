module Control (input[3:0] opcode,output regDest,branch,memRead,memToReg,memWrite,aluSrc,regWrite ,output[3:0] aluOp);
  reg regDest1,branch1,memRead1,memToReg1,memWrite1,aluSrc1,regWrite1;
  reg[3:0]aluOp1;
  
  always@(*)begin
    case(opcode)
    4'b0000: begin // R-type 
     regDest1 = 1;
     branch1 = 0;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 0;
     aluSrc1 = 0;
     regWrite1 = 1;
     aluOp1 = 4'b0000;
    end
    4'b0001 : begin// addi
      
     regDest1 = 0;
     branch1 = 0;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 0;
     aluSrc1 = 1;
     regWrite1 = 1;
     aluOp1 = 4'b0001;
    end
    4'b0010 : begin//andi
     
     regDest1 = 0;
     branch1 = 0;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 0;
     aluSrc1 = 1;
     regWrite1 = 1;
     aluOp1 = 4'b001;
    
    end
    4'b0011 : begin//ori
  
     regDest1 = 0;
     branch1 = 0;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 0;
     aluSrc1 = 1;
     regWrite1 = 1;
     aluOp1 = 4'b0011;
    
    end
    4'b0100 : begin//subi
    
     regDest1 = 0;
     branch1 = 0;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 0;
     aluSrc1 = 1;
     regWrite1 = 1;
     aluOp1 = 4'b0100;
    
    end
    4'b0111 : begin//lhw
     
     regDest1 = 0;
     branch1 = 0;
     memRead1 = 1;
     memWrite1 =0;
     memToReg1 = 1;
     aluSrc1 = 1;
     regWrite1 = 1;
     aluOp1 = 4'b0111;
    end
    
    4'b1000 : begin//shw
    
     regDest1 = 0;
     branch1 = 0;
     memRead1 = 0;
     memWrite1 =1;
     memToReg1 = 1'bx;
     aluSrc1 = 1;
     regWrite1 = 0;
     aluOp1 = 4'b1000;
    end
    
    4'b1001 : begin//beq
     
     regDest1 = 1'bx;
     branch1 = 1;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 1'bx;
     aluSrc1 = 0;
     regWrite1 = 0;
     aluOp1 = 4'b1001;
    end
    
    4'b1010 : begin//bne
  
     regDest1 = 1'bx;
     branch1 = 1;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 1'bx;
     aluSrc1 = 0;
     regWrite1 = 0;
     aluOp1 = 4'b1010;
    end
    
    4'b1011 : begin//blt
    
     regDest1 = 1'bx;
     branch1 = 1;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 1'bx;
     aluSrc1 = 0;
     regWrite1 = 0;
     aluOp1 = 4'b1011;
    end
    
    4'b1100 : begin//bgt
   
     regDest1 = 1'bx;
     branch1 = 1;
     memRead1 = 0;
     memWrite1 =0;
     memToReg1 = 1'bx;
     aluSrc1 = 0;
     regWrite1 = 0;
     aluOp1 = 4'b1100;
    end
    
    
  endcase
  end
  
  assign regDest= regDest1;
  assign branch = branch1;
  assign memRead = memRead1;
  assign memToReg = memToReg1;
  assign memWrite = memWrite1;
  assign aluSrc = aluSrc1;
  assign regWrite = regWrite1;
  assign aluOp = aluOp1;
endmodule 
