library verilog;
use verilog.vl_types.all;
entity jumpShifter is
    port(
        immediate       : in     vl_logic_vector(11 downto 0);
        pc              : in     vl_logic_vector(2 downto 0);
        shifted         : out    vl_logic_vector(15 downto 0)
    );
end jumpShifter;
