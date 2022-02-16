library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bcd_7seg is
	port
	(
		b : in std_logic_vector (3 downto 0);
		disp7 : out std_logic_vector (6 downto 0);
		na : in std_logic
	);
end bcd_7seg;

architecture Behavioral of bcd_7seg is

begin

with b select disp7 <=
      "1000000" when "0000",
      "1111001" when "0001",
      "0100100" when "0010",
      "0110000" when "0011",
      "0011001" when "0100",
      "0010010" when "0101",
      "0000010" when "0110",
      "1111000" when "0111",
      "0000000" when "1000",
      "0010000" when "1001",
      "0000110" when others;

end Behavioral;
