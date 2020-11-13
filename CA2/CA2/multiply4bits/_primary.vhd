library verilog;
use verilog.vl_types.all;
entity multiply4bits is
    port(
        p               : out    vl_logic_vector(7 downto 0);
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0)
    );
end multiply4bits;
