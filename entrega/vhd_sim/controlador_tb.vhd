library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.package_dsed.all;

entity controlador_tb is
end controlador_tb;

architecture Behavioral of controlador_tb is

	component controlador
		port 
		(
			clk_100Mhz : in std_logic;
			reset      : in std_logic;
			--To/From the microphone
			micro_clk  : out std_logic;
			micro_data : in std_logic;
			micro_LR   : out std_logic;
			--To/From the mini-jack
			jack_sd  : out std_logic;
			jack_pwm : out std_logic
		);
	end component;

	signal clk_100Mhz   : std_logic := '0';
	signal reset        : std_logic := '0';
	signal micro_clk    : std_logic := '0';
	signal micro_data   : std_logic := '0';
	signal micro_LR     : std_logic := '0';
	signal jack_sd      : std_logic := '0';
	signal jack_pwm     : std_logic := '0';

	signal a, b, c      : std_logic := '0';

	constant clk_period : time := 5 ns;
 
begin
	XCTRLR : controlador
	port map
	(
		clk_100Mhz => clk_100Mhz, 
		reset      => reset, 
		micro_clk  => micro_clk, 
		micro_data => micro_data, 
		micro_LR   => micro_LR, 
		jack_sd    => jack_sd, 
		jack_pwm   => jack_pwm
	);

	-- clock generation
	clk_100Mhz <= not clk_100Mhz after clk_period/2;

	inputs : process
	begin
		reset <= '1';
		wait for 150 ns;
		reset <= '0';
		wait;
	end process;
	
	-- pseudorandom micro_data
	micro_data_nrg : process
	begin
		wait for 90 ns;
		a          <= not a after 1252 ns;
		b          <= not b after 2364 ns;
		c          <= not c after 3675 ns;
		micro_data <= a xor b xor c;
	end process;
end Behavioral;