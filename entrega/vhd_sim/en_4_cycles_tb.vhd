library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity en_4_cycles_tb is
--  Port ( );
end en_4_cycles_tb;

architecture Behavioral of en_4_cycles_tb is

-- output signals
signal clk_3megas, en_2_cycles, en_4_cycles : std_logic := '0';

-- input signals
signal clk_12megas : std_logic := '0';
signal reset : std_logic := '1';

-- constant values
constant clk_period : time := 0.16666666666 us;

begin

X1 : entity work.en_4_cycles(Behavioral) 
    port map ( clk_12megas => clk_12megas,
               reset => reset,
               clk_3megas => clk_3megas,
               en_2_cycles => en_2_cycles,
               en_4_cycles => en_4_cycles);

clk_12megas <= not clk_12megas after clk_period/2;
reset <= '0' after 0.005 us;

end Behavioral;
