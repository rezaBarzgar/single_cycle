module registerEXMEM(input Clk,input ZeroIn,input [1:0]WBIn,input [2:0]MIn,input [3:0]aluOp,input [15:0]PcAddIn,input [15:0]AluOutIn,input [15:0]ReadData2In,input [2:0]TRegIn,output ZeroOut,output [1:0]WBOut,output [2:0]MOut,output [3:0]aluOpOut,output [15:0]PcAddOut,output [15:0]AluOutOut,output [15:0]ReadData2Out,output [2:0]TRegOut
);
reg Zero;

reg [1:0]WB;
reg [2:0]M;
reg [15:0]PcAdd;
reg [15:0]AluOut;
reg [15:0]ReadData2;
reg [2:0]TReg;
reg [3:0]aluOp1;
always@(posedge Clk)begin 
   Zero = ZeroIn;
   WB = WBIn;
   M = MIn;
   PcAdd = PcAddIn;
   AluOut = AluOutIn;
   ReadData2 = ReadData2In;
   TReg = TRegIn;
   aluOp1=aluOp;
end
assign aluOpOut = aluOp1;
assign ZeroOut = Zero;
assign WBOut = WB;
assign MOut = M;
assign PcAddOut = PcAdd;
assign AluOutOut = AluOut;
assign ReadData2Out = ReadData2;
assign TRegOut = TReg;
endmodule;
