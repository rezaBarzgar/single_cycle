module registerMEMWB(input clk,input [1:0]WBIn,input [15:0]ReadDataIn,input [15:0]AluOutIn,input [2:0]TRegIn,output [1:0]WBOut,output [15:0]ReadDataOut,output [15:0]AluOutOut,output [2:0]TRegOut);
reg [1:0]WB;
reg [15:0]ReadData;
reg [15:0]AluOut;
reg [2:0]TReg;
always@(posedge clk)begin 
   WB = WBIn;
   ReadData = ReadDataIn;
   AluOut = AluOutIn;
   TReg = TRegIn;
end
assign WBOut = WB;
assign ReadDataOut = ReadData;
assign AluOutOut = AluOut;
assign TRegOut = TReg;
endmodule;
