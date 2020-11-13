library verilog;
use verilog.vl_types.all;
entity PC_adder is
    port(
        pc              : in     vl_logic_vector(15 downto 0);
        nextPC          : out    vl_logic_vector(15 downto 0)
    );
end PC_adder;
