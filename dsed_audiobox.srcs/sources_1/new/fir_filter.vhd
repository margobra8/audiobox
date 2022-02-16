library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use work.package_dsed.all;

entity fir_filter is
	port 
	(
		clk              : in std_logic;
		reset            : in std_logic;
		sample_in        : in signed (sample_size - 1 downto 0);
		sample_in_enable : in std_logic;
		filter_select    : in std_logic; -- 0 lowpass, 1 highpass
		sample_out       : out signed (sample_size - 1 downto 0);
		sample_out_ready : out std_logic
	);
end fir_filter;

architecture Behavioral of fir_filter is
	-- 2 half mult, 1 sum

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
 
	component ctrl_fir
		port 
		(
			clk     : in std_logic;
			reset   : in std_logic;
			in_en   : in std_logic;
			cnt     : out std_logic_vector (2 downto 0);
			out_rdy : out std_logic
		);
	end component;

	signal ac0, ac1, ac2, ac3, ac4, ax0, ax1, ax2, ax3, ax4 : signed (sample_size - 1 downto 0);
	signal a_cnt_mux                                        : std_logic_vector (2 downto 0);

begin
	-- set correct coeffs
	process (filter_select)
	begin
		if (filter_select = '0') then
			ac0 <= c0lp;
			ac1 <= c1lp;
			ac2 <= c2lp;
			ac3 <= c3lp;
			ac4 <= c4lp;
		else
			ac0 <= c0hp;
			ac1 <= c1hp;
			ac2 <= c2hp;
			ac3 <= c3hp;
			ac4 <= c4hp;
		end if;
	end process;

	-- z^-i for x samples
	process (clk, reset, sample_in_enable)
	begin
		if (reset = '1') then
			ax0 <= (others => '0');
			ax1 <= (others => '0');
			ax2 <= (others => '0');
			ax3 <= (others => '0');
			ax4 <= (others => '0');
		else
			if (rising_edge(clk) and sample_in_enable = '1') then
				ax0 <= sample_in;
				ax1 <= ax0;
				ax2 <= ax1;
				ax3 <= ax2;
				ax4 <= ax3;
			end if;
		end if;
	end process;

    -- data path
	dfir : data_flux_fir
	port map
	(
		clk   => clk, 
		reset => reset, 
		c0    => ac0, 
		c1    => ac1, 
		c2    => ac2, 
		c3    => ac3, 
		c4    => ac4, 
		x0    => ax0, 
		x1    => ax1, 
		x2    => ax2, 
		x3    => ax3, 
		x4    => ax4, 
		cnt   => a_cnt_mux, 
		o     => sample_out
	);

	-- ctrl fsm
	cfir : ctrl_fir
	port map
	(
		clk     => clk, 
		reset   => reset, 
		in_en   => sample_in_enable, 
		cnt     => a_cnt_mux, 
		out_rdy => sample_out_ready
	);
end Behavioral;