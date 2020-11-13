library verilog;
use verilog.vl_types.all;
entity registerIFID is
    port(
        clk             : in     vl_logic;
        PCPlus4         : in     vl_logic_vector(15 downto 0);
        instructionIn   : in     vl_logic_vector(15 downto 0);
        PCPlus4Out      : out    vl_logic_vector(15 downto 0);
        instructionOut  : out    vl_logic_vector(15 downto 0)
    );
end registerIFID;
