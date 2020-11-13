library verilog;
use verilog.vl_types.all;
entity signExt is
    port(
        immediate       : in     vl_logic_vector(5 downto 0);
        signExtIm       : out    vl_logic_vector(15 downto 0)
    );
end signExt;
