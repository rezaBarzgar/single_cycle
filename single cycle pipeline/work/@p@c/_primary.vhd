library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        inp             : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end PC;
