library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity en_4_cycles is
    Port ( clk_12megas : in std_logic;
           reset : in std_logic;
           clk_3megas: out std_logic;
           en_2_cycles: out std_logic;
           en_4_cycles : out std_logic);
end en_4_cycles;

architecture Behavioral of en_4_cycles is
-- 00 01 10 11

signal mod3_n, mod3_r : unsigned(1 downto 0) := "00";

begin

-- ff process
sequential : process (reset, clk_12megas)
    begin
    if (reset = '1') then
        mod3_r <= to_unsigned(0, 2);
    else
        if (rising_edge(clk_12megas)) then
            mod3_r <= mod3_n;
        end if;
    end if;
end process;

-- next state logic of mod 3 counter
mod3_n <= mod3_r + 1;

-- output logic of mod 3 counter
clk_3megas <= '1' when mod3_r(1) = '1' else '0';
en_4_cycles <= '1' when mod3_r = to_unsigned(2, 2) else '0';
en_2_cycles <= '1' when mod3_r(0) = '1' else '0';

end Behavioral;
