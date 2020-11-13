library verilog;
use verilog.vl_types.all;
entity registerIDEX is
    port(
        clk             : in     vl_logic;
        WBIn            : in     vl_logic_vector(1 downto 0);
        MIn             : in     vl_logic_vector(2 downto 0);
        EXIn            : in     vl_logic_vector(5 downto 0);
        PCPlus4In       : in     vl_logic_vector(15 downto 0);
        ReadData1In     : in     vl_logic_vector(15 downto 0);
        ReadData2In     : in     vl_logic_vector(15 downto 0);
        ImmSignExtIn    : in     vl_logic_vector(15 downto 0);
        RtIn            : in     vl_logic_vector(2 downto 0);
        RdIn            : in     vl_logic_vector(2 downto 0);
        WBOut           : out    vl_logic_vector(1 downto 0);
        MOut            : out    vl_logic_vector(2 downto 0);
        EXOut           : out    vl_logic_vector(5 downto 0);
        PCPlus4Out      : out    vl_logic_vector(15 downto 0);
        ReadData1Out    : out    vl_logic_vector(15 downto 0);
        ReadData2Out    : out    vl_logic_vector(15 downto 0);
        ImmSignExtOut   : out    vl_logic_vector(15 downto 0);
        RtOut           : out    vl_logic_vector(2 downto 0);
        RdOut           : out    vl_logic_vector(2 downto 0)
    );
end registerIDEX;
