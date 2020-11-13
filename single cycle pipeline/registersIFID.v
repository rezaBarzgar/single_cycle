module registerIFID(input clk ,input [15:0]PCPlus4,input [15:0]instructionIn,output [15:0]PCPlus4Out,output [15:0]instructionOut);
reg [15:0] pcplus4 ;
reg [15:0] instruction ;

always@(posedge clk)begin 
   pcplus4 = PCPlus4;
   instruction = instructionIn;
end
assign PCPlus4Out = pcplus4;
assign instructionOut = instruction;
endmodule;