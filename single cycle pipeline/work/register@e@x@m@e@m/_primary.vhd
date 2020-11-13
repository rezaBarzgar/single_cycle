library verilog;
use verilog.vl_types.all;
entity registerEXMEM is
    port(
        Clk             : in     vl_logic;
        ZeroIn          : in     vl_logic;
        WBIn            : in     vl_logic_vector(1 downto 0);
        MIn             : in     vl_logic_vector(2 downto 0);
        aluOp           : in     vl_logic_vector(3 downto 0);
        PcAddIn         : in     vl_logic_vector(15 downto 0);
        AluOutIn        : in     vl_logic_vector(15 downto 0);
        ReadData2In     : in     vl_logic_vector(15 downto 0);
        TRegIn          : in     vl_logic_vector(2 downto 0);
        ZeroOut         : out    vl_logic;
        WBOut           : out    vl_logic_vector(1 downto 0);
        MOut            : out    vl_logic_vector(2 downto 0);
        aluOpOut        : out    vl_logic_vector(3 downto 0);
        PcAddOut        : out    vl_logic_vector(15 downto 0);
        AluOutOut       : out    vl_logic_vector(15 downto 0);
        ReadData2Out    : out    vl_logic_vector(15 downto 0);
        TRegOut         : out    vl_logic_vector(2 downto 0)
    );
end registerEXMEM;
