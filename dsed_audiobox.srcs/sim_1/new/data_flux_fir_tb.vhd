library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.package_dsed.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity data_flux_fir_tb is
end data_flux_fir_tb;

architecture Behavioral of data_flux_fir_tb is

	component data_flux_fir
		port 
		(
			clk   : in std_logic;
			reset : in std_logic;
			c0    : in signed (sample_size - 1 downto 0);
			c1    : in signed (sample_size - 1 downto 0);
			c2    : in signed (sample_size - 1 downto 0);
			c3    : in signed (sample_size - 1 downto 0);
			c4    : in signed (sample_size - 1 downto 0);
			x0    : in signed (sample_size - 1 downto 0);
			x1    : in signed (sample_size - 1 downto 0);
			x2    : in signed (sample_size - 1 downto 0);
			x3    : in signed (sample_size - 1 downto 0);
			x4    : in signed (sample_size - 1 downto 0);
			cnt   : in std_logic_vector (2 downto 0);
			o     : out signed (sample_size - 1 downto 0)
		);
	end component;

	signal clk          : std_logic := '0';
	signal reset        : std_logic := '0';
	signal cnt          : std_logic_vector (2 downto 0) := (others => '0');
	signal c0           : signed (sample_size - 1 downto 0) := (others => '0');
	signal c1           : signed (sample_size - 1 downto 0) := (others => '0');
	signal c2           : signed (sample_size - 1 downto 0) := (others => '0');
	signal c3           : signed (sample_size - 1 downto 0) := (others => '0');
	signal c4           : signed (sample_size - 1 downto 0) := (others => '0');
	signal x0           : signed (sample_size - 1 downto 0) := (others => '0');
	signal x1           : signed (sample_size - 1 downto 0) := (others => '0');
	signal x2           : signed (sample_size - 1 downto 0) := (others => '0');
	signal x3           : signed (sample_size - 1 downto 0) := (others => '0');
	signal x4           : signed (sample_size - 1 downto 0) := (others => '0');
	signal o            : signed (sample_size - 1 downto 0) := (others => '0');
 
	constant clk_period : time := 167 ns;

begin
	clk <= not clk after clk_period/2;

	XDFIR : data_flux_fir
	port map
	(
		clk   => clk, 
		reset => reset, 
		cnt   => cnt, 
		c0    => c0, 
		c1    => c1, 
		c2    => c2, 
		c3    => c3, 
		c4    => c4, 
		x0    => x0, 
		x1    => x1, 
		x2    => x2, 
		x3    => x3, 
		x4    => x4, 
		o     => o
	);
 
	input : process
	begin
		reset <= '1';
		wait for 150 ns;
		reset <= '0';
		c0    <= c0lp; 
		x0    <= "00000001";
		c1    <= c1lp; 
		x1    <= "00000001";
		c2    <= c2lp; 
		x2    <= "00000010";
		c3    <= c3lp; 
		x3    <= "01000011";
		c4    <= c4lp; 
		x4    <= "00000100"; 
		wait;
	end process;

end Behavioral;