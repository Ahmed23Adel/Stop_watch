library verilog;
use verilog.vl_types.all;
entity Frequency_divider is
    port(
        sysClk          : in     vl_logic;
        modifiedClk     : out    vl_logic;
        reset           : in     vl_logic
    );
end Frequency_divider;
