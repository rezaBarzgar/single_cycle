library verilog;
use verilog.vl_types.all;
entity branchControl is
    port(
        branch          : in     vl_logic;
        zero            : in     vl_logic;
        aluOp           : in     vl_logic_vector(3 downto 0);
        pcSrc           : out    vl_logic
    );
end branchControl;
