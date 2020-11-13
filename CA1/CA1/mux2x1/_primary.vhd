library verilog;
use verilog.vl_types.all;
entity mux2x1 is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end mux2x1;
