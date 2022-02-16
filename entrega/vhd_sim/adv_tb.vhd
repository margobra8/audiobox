library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.package_dsed.all;
entity adv_tb is
end adv_tb;

architecture Behavioral of adv_tb is

	component fir_filter
		port
		(
			clk              : in  std_logic;
			reset            : in  std_logic;
			sample_in        : in  signed (sample_size - 1 downto 0);
			sample_in_enable : in  std_logic;
			filter_select    : in  std_logic; -- 0 lowpass, 1 highpass
			sample_out       : out signed (sample_size - 1 downto 0);
			sample_out_ready : out std_logic
		);
	end component;

	signal clk              : std_logic                         := '0';
	signal reset            : std_logic                         := '0';
	signal sample_in        : signed (sample_size - 1 downto 0) := (others => '0');
	signal sample_in_enable : std_logic                         := '0';
	signal filter_select    : std_logic                         := '0';
	signal sample_out       : signed (sample_size - 1 downto 0) := (others => '0');
	signal sample_out_ready : std_logic                         := '0';

	-- constant clk_period : time      := 167 ns;
	constant clk_period : time      := 83.3 ns;
	signal fsel         : std_logic := '1';
	signal samp_out_dat : integer;

begin

	XFIR : fir_filter
	port map
	(
		clk              => clk,
		reset            => reset,
		sample_in        => sample_in,
		sample_in_enable => sample_in_enable,
		filter_select    => filter_select,
		sample_out       => sample_out,
		sample_out_ready => sample_out_ready
	);

	-- Clock generation
	clk <= not clk after clk_period/2;

	read_process : process (sample_in_enable)
		file in_file        : text open read_mode is "C:/home/archivos_dsed_lab/dsed_audiobox/matlab/samp_in.dat";
		variable in_line    : line;
		variable in_int     : integer;
		variable in_read_ok : boolean;
	begin
		if (sample_in_enable'event and sample_in_enable = '1') then
			if not endfile(in_file) then
				readline(in_file, in_line);
				read(in_line, in_int, in_read_ok);
				sample_in <= to_signed(in_int, sample_size);
			else
				assert false report "Simulation Finished" severity failure;
			end if;
		end if;
	end process;

	write_process : process (sample_out_ready, filter_select)
		file out_file     : text;
		variable out_line : line;
	begin
		-- diff files for diff filter outputs
		if (fsel = '1') then
			if (filter_select = '0') then
				file_open(out_file, "C:/home/archivos_dsed_lab/dsed_audiobox/matlab/samp_out_lp.dat", write_mode);
			else
				file_open(out_file, "C:/home/archivos_dsed_lab/dsed_audiobox/matlab/samp_out_hp.dat", write_mode);
			end if;
		end if;
		fsel <= '0';
		if (sample_out_ready'event and sample_out_ready = '1') then
			samp_out_dat <= to_integer(sample_out);
			write(out_line, samp_out_dat, left, sample_size);
			writeline(out_file, out_line);
		end if;
	end process;

	process
	begin
	   sample_in_enable <= '0';
	   wait for 10 * clk_period;
	   sample_in_enable <= '1';
	   wait for clk_period;
	end process;
	
	reset <= '1', '0' after 3 * clk_period;

end Behavioral;