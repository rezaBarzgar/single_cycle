library verilog;
use verilog.vl_types.all;
entity registerMEMWB is
    port(
        clk             : in     vl_logic;
        WBIn            : in     vl_logic_vector(1 downto 0);
        ReadDataIn      : in     vl_logic_vector(15 downto 0);
        AluOutIn        : in     vl_logic_vector(15 downto 0);
        TRegIn          : in     vl_logic_vector(2 downto 0);
        WBOut           : out    vl_logic_vector(1 downto 0);
        ReadDataOut     : out    vl_logic_vector(15 downto 0);
        AluOutOut       : out    vl_logic_vector(15 downto 0);
        TRegOut         : out    vl_logic_vector(2 downto 0)
    );
end registerMEMWB;
