library verilog;
use verilog.vl_types.all;
entity RegFile is
    port(
        clk             : in     vl_logic;
        readreg1        : in     vl_logic_vector(2 downto 0);
        readreg2        : in     vl_logic_vector(2 downto 0);
        writereg        : in     vl_logic_vector(2 downto 0);
        writedata       : in     vl_logic_vector(15 downto 0);
        RegWrite        : in     vl_logic;
        readdata1       : out    vl_logic_vector(15 downto 0);
        readdata2       : out    vl_logic_vector(15 downto 0)
    );
end RegFile;
