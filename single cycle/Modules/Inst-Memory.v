//memory unit
module IMemBank(input memread, input [7:0] address, output [31:0] readdata);
 
  reg [15:0] mem_array [255:0];
  reg [31:0] readd;
  

  initial begin
    mem_array[0] = 16'b0000000000001000;
    mem_array[1] = 16'b0111001010000000;
    mem_array[2] = 16'b0111001011000000;
    mem_array[3] = 16'b0001000100000000;
    mem_array[4] = 16'b0001000101010010;
    mem_array[5] = 16'b1001100101001010;
    mem_array[6] = 16'b0001100100000010;
    mem_array[7] = 16'b0000001100001000;
    mem_array[8] = 16'b0111001110000000;
    mem_array[9] = 16'b1011110010000010;
    mem_array[10] = 16'b1100110011000011;
    mem_array[11] = 16'b1111000000000100;
    mem_array[12] = 16'b0000110000010000;
    mem_array[13] = 16'b1111000000001001;
    mem_array[14] = 16'b0000110000011000;
    mem_array[15] = 16'b1111000000000100;
    mem_array[16] = 16'bx;
  end
 
  always@(memread, address, mem_array[address])
  begin
    
      readd=mem_array[address];
    
  end

assign readdata = readd;

endmodule


module testbench;
  reg memread;              /* rw=RegWrite */
  reg [7:0] adr;  /* adr=address */
  wire [31:0] rd; /* rd=readdata */
  
  memBank u0(memread, adr, rd);
  
  initial begin
    memread=1'b0;
    adr=16'd0;
    
    #5
    memread=1'b1;
    adr=16'd0;
  end
  
  initial repeat(127)#4 adr=adr+1;
  
  
endmodule;


