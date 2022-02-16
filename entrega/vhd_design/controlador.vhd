library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.package_dsed.all;

entity controlador is
	port
	(
		clk_100Mhz : in  std_logic;
		reset      : in  std_logic;
		--To/From the microphone
		micro_clk  : out std_logic;
		micro_data : in  std_logic;
		micro_LR   : out std_logic;
		--To/From the mini-jack
		jack_sd    : out std_logic;
		jack_pwm   : out std_logic
	);
end controlador;

architecture Behavioral of controlador is

	component clk_12megas
		port
		(
			clk_in1  : in  std_logic;
			clk_out1 : out std_logic; -- 12megas out
			reset : in std_logic); 
	end component;

	component audio_interface
		port
		(
			-- control ports
			clk_12megas      : in  std_logic;
			reset            : in  std_logic;

			-- controller
			record_enable    : in  std_logic;
			sample_out       : out std_logic_vector (sample_size - 1 downto 0);
			sample_out_ready : out std_logic;

			-- fsmd_microphone
			micro_clk        : out std_logic;
			micro_LR         : out std_logic;
			micro_data       : in  std_logic;

			-- play
			play_enable      : in  std_logic;
			sample_in        : in  std_logic_vector (sample_size - 1 downto 0);
			sample_request   : out std_logic;

			-- jack ctl and pwm
			jack_pwm         : out std_logic;
			jack_sd          : out std_logic;
			
			-- vol
			btnu             : in std_logic;
			btnd             : in std_logic
		);
	end component;

	signal clk_12M : std_logic;
	signal aux_samp : std_logic_vector (sample_size - 1 downto 0);
	signal aux_rdy, aux_req : std_logic;

begin

	clk12 : clk_12megas
	port map
	(
		clk_in1  => clk_100Mhz,
		clk_out1 => clk_12M,
		reset => reset);

    aif : audio_interface
    port map
    (
        clk_12megas      => clk_12M,
        reset            => reset,
        record_enable    => '1',
        sample_out       => aux_samp,
        sample_out_ready => aux_rdy,
        micro_clk        => micro_clk,
        micro_LR         => micro_LR,
        micro_data       => micro_data,
        play_enable      => '1',
        sample_in        => aux_samp,
        sample_request   => aux_req,
        jack_pwm         => jack_pwm,
        jack_sd          => jack_sd,
        btnd             => '0',
        btnu             => '0'
    );

end Behavioral;