module tester();
  wire clk;
  Clk clock_init(clk);
  single_cycle my_single(clk);
endmodule
