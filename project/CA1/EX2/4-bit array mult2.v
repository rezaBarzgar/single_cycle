module FA(a,b,cin,s,cout);
output s,cout;
input a,b,cin;
assign s=(a^b^cin);
assign cout=((a&b)|(a&cin)|(b&cin));
endmodule

module multiply4bits(p,x,y);
output [7:0]p;
input [3:0]x;
input [3:0]y;
wire a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23;

assign p[0] = x[0] & y[0];

FA ha1(x[1]&y[0], x[0]&y[1],1'b0, p[1], a1);

FA ha2(x[2]&y[0], x[1]&y[1],1'b0, a2, a3);

FA fa1(a2, a1, x[0]&y[2], p[2], a4);

FA ha3(x[3]&~y[0], x[2]&y[1],1'b0, a5, a6);

FA fa2(a5, a3, x[1]&y[2], a7, a8);

FA fa3(a7, a4, ~x[0]&y[3], a9, a10);

FA fa4(a9, x[3], y[3], p[3], a11);

FA fa5(x[3]&~y[1], a6, x[2]&y[2], a12, a13);

FA fa6(a12, a8, ~x[1]&y[3], a14, a15);

FA fa7(a14, a10, a11, p[4], a16);

FA fa8(x[3]&~y[2], a13, ~x[2]&y[3], a17, a18);

FA fa9(a17, a15, a16, p[5], a19);

FA fa10(~x[3], ~y[3], x[3]&y[3], a20, a21);

FA fa11(a20, a18, a19, p[6], a22);

FA fa12(1'b1, a21, a22, p[7], a23);

endmodule