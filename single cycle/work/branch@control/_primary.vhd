library verilog;
use verilog.vl_types.all;
entity branchControl is
    port(
        branch          : in     vl_logic;
        zero            : in     vl_logic;
        lt              : in     vl_logic;
        gt              : in     vl_logic;
        aluOp           : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic
    );
end branchControl;
