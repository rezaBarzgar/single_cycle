library verilog;
use verilog.vl_types.all;
entity adder4 is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        cout            : out    vl_logic;
        S               : out    vl_logic_vector(3 downto 0)
    );
end adder4;
