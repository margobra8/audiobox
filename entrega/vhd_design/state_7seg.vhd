library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity state_7seg is
	port
	(
		st      : in  std_logic_vector (2 downto 0);
		disp7_0 : out std_logic_vector (6 downto 0);
		disp7_1 : out std_logic_vector (6 downto 0)
	);
end state_7seg;

architecture Behavioral of state_7seg is

begin

	with st select disp7_1 <= "1111001" when "000", -- char "i"
		"0101111" when "001",                           -- char "r"
		"0001100" when "010",                           -- char "p"
		"1000110" when "011",                           -- char "c"
		"0000110" when others;                          -- char "e"

	with st select disp7_0 <= "0100001" when "000", -- char "d"
		"0000110" when "001",                           -- char "e"
		"1000111" when "010",                           -- char "l"
		"1000111" when "011",                           -- char "l"
		"0101111" when others;                          -- char "r"                          

end Behavioral;