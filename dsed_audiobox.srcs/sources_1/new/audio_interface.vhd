library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.package_dsed.all;

entity audio_interface is
	port
	(
		-- control ports
		clk_12megas : in std_logic;
		reset       : in std_logic;

		-- controller
		record_enable    : in  std_logic;
		sample_out       : out std_logic_vector (sample_size - 1 downto 0);
		sample_out_ready : out std_logic;

		-- fsmd_microphone
		micro_clk  : out std_logic;
		micro_LR   : out std_logic;
		micro_data : in  std_logic;

		-- play
		play_enable    : in  std_logic;
		sample_in      : in  std_logic_vector (sample_size - 1 downto 0);
		sample_request : out std_logic;

		-- jack ctl and pwm
		jack_pwm : out std_logic;
		jack_sd  : out std_logic;

		-- vol ctl
		btnu  : in  std_logic;
		btnd  : in  std_logic;
		level : out unsigned (4 downto 0)
	);
end audio_interface;

architecture Behavioral of audio_interface is

	-- component clock enable generator
	component en_4_cycles
		port
		(
			clk_12megas : in  std_logic;
			reset       : in  std_logic;
			clk_3megas  : out std_logic;
			en_2_cycles : out std_logic;
			en_4_cycles : out std_logic
		);
	end component;

	-- mic
	component fsmd_microphone
		port
		(
			clk_12megas      : in  std_logic;
			reset            : in  std_logic;
			enable_4_cycles  : in  std_logic;
			micro_data       : in  std_logic;
			sample_out       : out std_logic_vector (sample_size - 1 downto 0);
			sample_out_ready : out std_logic
		);
	end component;

	-- pwm component (?)
	component pwm
		port
		(
			clk_12megas    : in  std_logic;
			reset          : in  std_logic;
			en_2_cycles    : in  std_logic;
			sample_in      : in  std_logic_vector (sample_size - 1 downto 0);
			sample_request : out std_logic;
			pwm_pulse      : out std_logic;
			factor         : in  unsigned (8 downto 0)
		);
	end component;

	-- vol ctl
	component vol_ctl
		port
		(
			clk    : in  std_logic;
			reset  : in  std_logic;
			btnu   : in  std_logic; -- vol +
			btnd   : in  std_logic; -- vol -
			factor : out unsigned(8 downto 0);
			level  : out unsigned(4 downto 0)
		);
	end component;

	signal aux_en2, aux_en4   : std_logic;            -- aux signals from enables clock
	signal aux_and2, aux_and4 : std_logic;            -- aux signals for and gates
	signal afactor            : unsigned(8 downto 0); -- aux factor for volume ctl

begin
	aux_and4 <= aux_en4 and record_enable;
	aux_and2 <= aux_en2 and play_enable;

	en4 : en_4_cycles
	port map
	(
		clk_12megas => clk_12megas,
		reset       => reset,
		clk_3megas  => micro_clk,
		en_2_cycles => aux_en2,
		en_4_cycles => aux_en4
	);

	mic : fsmd_microphone
	port map
	(
        clk_12megas      => clk_12megas,
        reset            => reset,
        enable_4_cycles  => aux_and4,
        micro_data       => micro_data,
        sample_out       => sample_out,
        sample_out_ready => sample_out_ready
	);

	ppwm : pwm
	port map
	(
        clk_12megas    => clk_12megas,
        reset          => reset,
        en_2_cycles    => aux_and2,
        sample_in      => sample_in,
        sample_request => sample_request,
        pwm_pulse      => jack_pwm,
        -- vol
        factor => afactor
	);

	micro_LR <= '1';
	jack_sd  <= '1';

	vol : vol_ctl
	port map
	(
        clk    => clk_12megas,
        reset  => reset,
        btnu   => btnu,
        btnd   => btnd,
        factor => afactor,
        level  => level
	);

end Behavioral;