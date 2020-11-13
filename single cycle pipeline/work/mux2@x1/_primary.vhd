library verilog;
use verilog.vl_types.all;
entity mux2X1 is
    port(
        inp0            : in     vl_logic_vector(15 downto 0);
        inp1            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        sel             : in     vl_logic
    );
end mux2X1;
