library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.package_dsed.all;

entity ram_tb is
end ram_tb;

architecture Behavioral of ram_tb is

	component ram
		port
		(
			addra : in  std_logic_vector (18 downto 0);
			clka  : in  std_logic;
			dina  : in  std_logic_vector (7 downto 0);
			douta : out std_logic_vector (7 downto 0);
			ena   : in  std_logic;
			wea   : in  std_logic_vector (0 downto 0)
		);
	end component;

	-- signals
	signal addra       : std_logic_vector(18 downto 0) := (others => '0');
	signal clka        : std_logic                     := '0';
	signal dina, douta : std_logic_vector(7 downto 0)  := (others => '0');
	signal ena         : std_logic                     := '0';
	signal wea         : std_logic_vector(0 downto 0)  := (others => '0');

	constant spacing    : time := 200 ns;
	constant clk_period : time := 167 ns;

begin

	XRAM : ram
	port map
	(
		addra => addra,
		clka  => clka,
		dina  => dina,
		douta => douta,
		ena   => ena,
		wea   => wea);

	-- Clock generation
	clka <= not clka after clk_period/2;

	input : process
	begin
		ena <= '1';
		wait for spacing;
		wea <= "1";
		wait for spacing;
		addra <= std_logic_vector(to_unsigned(2, addra'length));
		dina  <= "11101101";
		wait for spacing;
		addra <= std_logic_vector(to_unsigned(3, addra'length));
		dina  <= "11010101";
		wait for spacing * 2;
		wea  <= "0";
		dina <= "00000000";
		wait for spacing;
		addra <= std_logic_vector(to_unsigned(3, addra'length));
		wait for spacing;
		addra <= std_logic_vector(to_unsigned(2, addra'length));
		wait;
	end process;

end Behavioral;