library verilog;
use verilog.vl_types.all;
entity control is
    port(
        opcode          : in     vl_logic_vector(3 downto 0);
        jump            : out    vl_logic;
        regDest         : out    vl_logic;
        branch          : out    vl_logic;
        memRead         : out    vl_logic;
        memToReg        : out    vl_logic;
        memWrite        : out    vl_logic;
        aluSrc          : out    vl_logic;
        regWrite        : out    vl_logic;
        aluOp           : out    vl_logic_vector(3 downto 0)
    );
end control;
