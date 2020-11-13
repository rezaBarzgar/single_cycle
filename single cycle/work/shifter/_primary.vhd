library verilog;
use verilog.vl_types.all;
entity shifter is
    port(
        immediate       : in     vl_logic_vector(15 downto 0);
        shifted         : out    vl_logic_vector(15 downto 0)
    );
end shifter;
