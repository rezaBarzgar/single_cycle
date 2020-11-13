module RegFile (clk, readreg1, readreg2, writereg, writedata, RegWrite, readdata1, readdata2);
  input [2:0] readreg1, readreg2, writereg;
  input [15:0] writedata;
  input clk, RegWrite;
  output [15:0] readdata1, readdata2;

  reg [15:0] regfile [7:0];
  integer i;
  initial begin
    regfile[0]=16'd0;
      for (i=1; i<8; i=i+1)   
     regfile[i]=i*10;
  end
  
  always @(posedge clk)
  begin
    
		  	if (RegWrite) 
	 				regfile[writereg] <= writedata;
	 				
	 		  regfile[0]=0;
  end

  assign readdata1 = regfile[readreg1];
  assign readdata2 = regfile[readreg2];
endmodule;
 