library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.package_dsed.all;

entity matrix_blinker is
	port
	(
		clk         : in  std_logic;
		reset       : in  std_logic;
		active_disp : out std_logic_vector (2 downto 0);
		an          : out std_logic_vector (7 downto 0);
		dp          : out std_logic
	);
end matrix_blinker;

architecture Behavioral of matrix_blinker is
	signal aux_ad : std_logic_vector (2 downto 0);
	signal cnt    : std_logic_vector (16 downto 0);

begin

	process (clk, reset)
	begin
		if (reset = '1') then
			cnt    <= (others => '0');
			aux_ad <= (others => '0');
		elsif rising_edge(clk) then
			cnt <= std_logic_vector(unsigned(cnt) + 1);
			if cnt = std_logic_vector(to_unsigned(20000, cnt'length)) then -- 120 Hz digit refresh
				aux_ad <= std_logic_vector(unsigned(aux_ad) + 1);
				cnt    <= (others => '0');
			end if;
		end if;
	end process;

	active_disp <= aux_ad;

	with aux_ad select an <=
		"11111110" when "000",
		"11111101" when "001",
		"11111011" when "010",
		"11110111" when "011",
		"11101111" when "100",
		"11011111" when "101",
		"10111111" when "110",
		"01111111" when "111",
		"11111110" when others;

	with aux_ad select dp <=
		'0' when "010" | "110",
		'1' when others;
end Behavioral;