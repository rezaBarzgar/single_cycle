module single_cycle (input clk);
//---------------------------------wire list-----------------------------------------------------------
wire [15:0] pcOut,instruction,read1,read2,extended,muxAlu,aluOut,memOut,muxWb,shiftedEx,pc2,branchAlu,muxBranch,jump16,muxToPc;
wire [2:0] muxWrReg,aluControlOut;
wire regDest,jump,branch,memRead,memToReg,memWrite,lt,gt,zero,aluSrc,regWrite,branchControlOut,bullShit0,bullShit1,bullShit2,bullShit3;
wire [3:0]aluOp;
//----------------------------------instanting modules-------------------------------------------------------------------
PC pc(muxToPc,clk,pcOut);

PC_adder pc_adder(pcOut,pc2);

jumpShifter jShift(instruction[11:0],pcOut[15:13],jump16);

mux2X1 mux_next_pc(muxBranch,jump16 ,muxToPc,jump);

mux2X1 mux_branch(pc2,branchAlu ,muxBranch,branchControlOut);

ALU branch_alu(pc2,shiftedEx,4'b0000,branchAlu,bullShit0,bullShit1,bullShit2);

shifter branch_shifter(extended,shiftedEx);

IMemBank inst_mem(memRead,pcOut[7:0],instruction);

mux2 mux_reg_write (instruction[11:9],instruction[5:3] ,muxWrReg,regDest);

Control control(instruction[15:12],jump,regDest,branch,memRead,memToReg,memWrite,aluSrc,regWrite ,aluOp); 

RegFile registers(clk, instruction[8:6],instruction[11:9], muxWrReg, muxWb, regWrite, read1, read2);

signExt signExtender(instruction[5:0],extended);

mux2X1 mux_alu_in(read2,extended ,muxAlu,aluSrc);

ALU alu(read1,muxAlu,aluControlOut,aluOut,zero,lt,gt);

aluControl alu_control(instruction[2:0], aluOp,aluControlOut);

branchControl branch_control(branch,zero,lt,gt ,aluOp,branchControlOut);

DMemBank data_mem(memRead,memWrite,aluOut,read2,memOut);

mux2X1 mux_write_back(aluOut,memOut,muxWb,memToReg);


endmodule
