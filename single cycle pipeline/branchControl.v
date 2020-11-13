module branchControl(input branch,zero,input[3:0] aluOp,output pcSrc);
  reg out1 ;
  always @(*)begin
    if (branch == 1)begin 
      if (zero == 1 && aluOp == 4'b1001) out1 = 1;
    if (zero == 0 && aluOp == 4'b1010) out1 = 1;
    end
  else out1 =0;
  end
  assign pcSrc = out1;
endmodule
