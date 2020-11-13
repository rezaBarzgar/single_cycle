
module carrySellect8 (
input [7:0] A,
input [7:0] B,
input cin,
output[7:0] sum,
output cout
);

wire c4;
wire c80;
wire c81;
wire[3:0] temp80;
wire[3:0] temp81;

adder4 lowadder(A[3:0],B[3:0],cin,c4,sum[3:0]);

adder4 adder80(A[7:4],B[7:4],1'b0,c80,temp80[3:0]);

adder4 adder81(A[7:4],B[7:4],1'b1,c81,temp81[3:0]);

mux2x1 mux8(temp80[3:0],temp81[3:0],c4,sum[7:4]);

assign cout = (c4 | c80) & c81;

endmodule

module mux2x1(input[3:0] A,
input[3:0] B,
input sel,
output[3:0] out);

assign out = (sel == 1'b1) ? B : A;

endmodule 


