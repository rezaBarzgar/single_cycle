library verilog;
use verilog.vl_types.all;
entity DMemBank is
    port(
        memread         : in     vl_logic;
        memwrite        : in     vl_logic;
        address         : in     vl_logic_vector(15 downto 0);
        writedata       : in     vl_logic_vector(15 downto 0);
        readdata        : out    vl_logic_vector(15 downto 0)
    );
end DMemBank;
