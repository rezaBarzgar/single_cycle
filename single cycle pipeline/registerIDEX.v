module registerIDEX(
input clk,
input [1:0] WBIn,
input [2:0] MIn,
input [5:0] EXIn,
input [15:0]PCPlus4In,
input [15:0]ReadData1In,
input [15:0]ReadData2In,
input [15:0]ImmSignExtIn,
input [2:0]RtIn,
input [2:0]RdIn,  
output [1:0] WBOut,
output [2:0] MOut,
output [5:0] EXOut,
output [15:0]PCPlus4Out,
output [15:0]ReadData1Out,
output [15:0]ReadData2Out,
output [15:0]ImmSignExtOut,
output [2:0]RtOut,
output [2:0]RdOut
);
reg [1:0] WB;
reg [2:0] M;
reg [5:0] EX;
reg [15:0]PCPlus4;
reg [15:0]ReadData1;
reg [15:0]ReadData2;
reg [15:0]ImmSignExt;
reg [2:0]Rt;
reg [2:0]Rd;

initial PCPlus4 = 16'b0;

always@(posedge clk)begin 
  WB = WBIn;
  M = MIn;
  EX = EXIn;
  PCPlus4 = PCPlus4In;
  ReadData1 = ReadData1In;
  ReadData2 = ReadData2In;
  ImmSignExt = ImmSignExtIn;
  Rt = RtIn;
  Rd = RdIn;
end
assign WBOut = WB;
assign MOut = M;
assign EXOut = EX;
assign PCPlus4Out = PCPlus4;
assign ReadData1Out = ReadData1;
assign ReadData2Out = ReadData2;
assign ImmSignExtOut = ImmSignExt;
assign RtOut = Rt;
assign RdOut = Rd;
endmodule;
