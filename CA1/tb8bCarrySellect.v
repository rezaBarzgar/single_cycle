module tb;
  reg [7:0] inp1,inp2;
  reg carryIn;
  wire carryOut;
  wire [7:0] sum;
  
  initial 
  begin
    inp1 = 0;
    inp2 = 0;
    carryIn = 0; 
  end
  
  always 
  begin
    #10 inp1 = 8'd199;
        inp2 = 8'd55;
        
    #10 inp1 = 8'd199;
        inp2 = 8'd56;
        carryIn = 1'b1;
        
    #10 inp1 = 8'd100;
        inp2 = 8'b1;
        carryIn = 1'b0;
        
    #10 inp1 = 8'd5;
        inp2 = 8'd89;
        carryIn = 1'b1;
  end
  
  carrySellect8 CS1(inp1,inp2,carryIn,sum,carryOut);
endmodule
