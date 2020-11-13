module Pipeline(input clk);
  //------------------------------------------------------------------------------------------------------
  wire [15:0]pc_plus_two_EX,readdata1_EX,readdata2_EX,signExtIm_EX_shifted,
  signExtIm_EX,pc_in,pc_plus_two,branch_address,instruction,
  pc_plus_two_id,instruction_id,writereg,writedata,readdata1,readdata2,
  input_1_alu,signExtIm,main_alu_out,branch_address_EX,branch_address_MEM,
  main_alu_out_MEM,readdata2_MEM,write_back_data,write_back_data_WB
  ,main_alu_out_WB,pc_out;
  
  wire pcsrc,zero,zero_MEM;
  
  wire [1:0] WB,WB_EX,WB_MEM,WB_WB;
  
  wire [2:0] M,M_EX,main_alu_op,M_MEM,
  alu_operation_MEM,target_reg,instruction_EX_8_6
  ,instruction_EX_5_3,instruction_EX_after_mux,target_reg_WB;
  
  wire [5:0] EX,EX_EX;
  
  
    
  
    
  //----------------------------------------------------------------------------------------------------
  mux2X1 mux_before_pc(pc_plus_two,branch_address ,pc_in,pcsrc);
  
  PC pc(pc_in,clk,pc_out);
  
  PC_adder pc_adder(pc_out,pc_plus_two);
  
  IMemBank inst_memori(memread,pc_out[7:0],instruction);
  
  registerIFID if_id(clk ,pc_plus_two,instruction,pc_plus_two_id,instruction_id);
  
  RegFile register_file(clk, instruction_id[11:9],instruction_id[8:6], target_reg_WB, writedata, WB_WB[0], readdata1, readdata2);
  
  signExt sign_ext(instruction_id[5:0],signExtIm);
  
  Control control (instruction_id[15:12],EX[0],M[0],M[1],WB[1],M[2],EX[5],WB[0] ,EX[4:1]);
  
  registerIDEX registe_id_ex(clk,WB,M,EX,pc_plus_two,readdata1,readdata2,signExtIm,instruction_id[8:6],instruction_id[5:3],WB_EX,M_EX,EX_EX,pc_plus_two_EX,readdata1_EX,readdata2_EX,signExtIm_EX,instruction_EX_8_6,instruction_EX_5_3);
  
  shifter shifter_before_alu(signExtIm_EX,signExtIm_EX_shifted);
  
  mux2X1 mux_before_alu(readdata2_EX,signExtIm_EX ,input_1_alu,EX_EX[5]);
  
  mux2 mux_befor_reg_ex_mem(instruction_EX_5_3,instruction_EX_8_6 ,instruction_EX_after_mux,EX_EX[0]);
  
  aluControl alu_control(signExtIm_EX[2:0],EX_EX[4:1],main_alu_op);
  
  ALU main_alu(readdata1_EX,readdata2_EX,main_alu_op,main_alu_out,zero,,);
  
  adder branch_adder(pc_plus_two_EX,signExtIm_EX_shifted,branch_address_EX);
  
  registerEXMEM register_ex_mem(clk,zero,WB_EX,M_EX,EX_EX[4:1],branch_address_EX,main_alu_out,readdata2_EX,instruction_EX_after_mux,
  zero_MEM,WB_MEM,M_MEM,alu_operation_MEM,branch_address_MEM,main_alu_out_MEM,readdata2_MEM,target_reg);
  
  
  branchControl branch_control(M_MEM[0],zero_MEM,alu_operation_MEM,pcsrc);
  
  DMemBank memory_bank(M_MEM[1], M_MEM[2],main_alu_out_MEM,readdata2_MEM,write_back_data);
  
  registerMEMWB register_mem_wb(clk,WB_MEM,write_back_data,main_alu_out_MEM,target_reg,
  WB_WB,write_back_data_WB,main_alu_out_WB,target_reg_WB);

  mux2X1 mux_wb_final(main_alu_out_WB,write_back_data_WB,writedata,WB_WB[1]);
  
endmodule
