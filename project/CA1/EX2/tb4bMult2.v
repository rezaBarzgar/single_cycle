module tbmult;
reg [3:0] inp1, inp2;
wire [7:0] result;

initial
begin
	inp1 = 0;
	inp2 = 0;
end

always
begin
  
	#10 // 2 * -2
	    inp1 = 4'b0010;
	    inp2 = 4'b1110;
	#10 // 3 * 4
	    inp1 = 4'b0011;
	    inp2 = 4'b0100;
	#10 // -3 * 4
	    inp1 = 4'b1101;
	    inp2 = 4'b0100;
	#10 // -1 * 4
	    inp1 = 4'b1111;
	    inp2 = 4'b0100;
	#10 // 4 * 5
	    inp1 = 4'b0100;
	    inp2 = 4'b0101;
	#10 // -7 * -5
	    inp1 = 4'b1001;
	    inp2 = 4'b1011;
	
	
end

multiply4bits mult4 (result, inp1, inp2);

endmodule;
