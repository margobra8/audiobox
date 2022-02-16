library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use work.package_dsed.all;

entity audio_interface_tb is
end audio_interface_tb;

architecture Behavioral of audio_interface_tb is

	component audio_interface
		port 
		(
			-- control ports
			clk_12megas : in std_logic;
			reset       : in std_logic;
 
			-- controller
			record_enable    : in std_logic;
			sample_out       : out std_logic_vector (sample_size - 1 downto 0);
			sample_out_ready : out std_logic;
 
			-- fsmd_microphone
			micro_clk  : out std_logic;
			micro_LR   : out std_logic;
			micro_data : in std_logic;
 
			-- play
			play_enable    : in std_logic;
			sample_in      : in std_logic_vector (sample_size - 1 downto 0);
			sample_request : out std_logic;
 
			-- jack ctl and pwm
			jack_pwm : out std_logic;
			jack_sd  : out std_logic;
			
			-- vol
			btnu : in std_logic;
			btnd : in std_logic;
			level : out unsigned (4 downto 0)
		);
	end component;

	signal clk_12megas      : std_logic := '0';
	signal reset            : std_logic := '0';
	signal record_enable    : std_logic := '0';
	signal sample_out_ready : std_logic := '0';
	signal micro_clk        : std_logic := '0';
	signal micro_LR         : std_logic := '0';
	signal micro_data       : std_logic := '0';
	signal play_enable      : std_logic := '0';
	signal sample_request   : std_logic := '0';
	signal jack_pwm         : std_logic := '0';
	signal jack_sd          : std_logic := '0';
 
	-- our out signal
	signal aux_out      : std_logic_vector(sample_size - 1 downto 0) := (others => '0');
	signal aux_in       : std_logic_vector(sample_size - 1 downto 0) := (others => '0');
	signal a, b, c      : std_logic := '0';
	constant clk_period : time := 167 ns;
 

begin
	XAIF : audio_interface
	port map
	(
		clk_12megas      => clk_12megas, 
		reset            => reset, 
		record_enable    => record_enable, 
		sample_out       => aux_out, 
		sample_out_ready => sample_out_ready, 
		micro_clk        => micro_clk, 
		micro_LR         => micro_LR, 
		micro_data       => micro_data, 
		play_enable      => play_enable, 
		sample_in        => aux_in, 
		sample_request   => sample_request, 
		jack_pwm         => jack_pwm, 
		jack_sd          => jack_sd,
		btnu             => '0',
		btnd             => '0'
	);
	-- clock generation
	clk_12megas <= not clk_12megas after clk_period/2;
 
	inputs : process
	begin
		reset         <= '1';
		play_enable   <= '0';
		record_enable <= '1';
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