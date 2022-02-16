library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.package_dsed.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity data_flux_fir is
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
end data_flux_fir;

architecture Behavioral of data_flux_fir is

	component mux5
		port 
		(
			i0 : in signed (sample_size - 1 downto 0);
			i1 : in signed (sample_size - 1 downto 0);
			i2 : in signed (sample_size - 1 downto 0);
			i3 : in signed (sample_size - 1 downto 0);
			i4 : in signed (sample_size - 1 downto 0);
			o  : out signed (sample_size - 1 downto 0);
			c  : in std_logic_vector (2 downto 0)
		);
	end component;
	
	component mux7
		port 
		(
			i0 : in signed (sample_size - 1 downto 0);
			i1 : in signed (sample_size - 1 downto 0);
			i2 : in signed (sample_size - 1 downto 0);
			i3 : in signed (sample_size - 1 downto 0);
			i4 : in signed (sample_size - 1 downto 0);
			i5 : in signed (sample_size - 1 downto 0);
			i6 : in signed (sample_size - 1 downto 0);
			o  : out signed (sample_size - 1 downto 0);
			c  : in std_logic_vector (2 downto 0)
		);
	end component;
 
	signal a1, a2, a3, a4, sum, r1_reg, r1_next, r2_reg, r2_next : signed (sample_size - 1 downto 0);
	signal rm_reg, rm_next                                       : signed (2 * sample_size - 1 downto 0);
 
begin
	m5m1 : mux5
	port map
	(
		i0 => c0, 
		i1 => c1, 
		i2 => c2, 
		i3 => c3, 
		i4 => c4, 
		o  => a1, 
		c  => cnt
	);

	m5m2 : mux5
	port map
	(
		i0 => x0, 
		i1 => x1, 
		i2 => x2, 
		i3 => x3, 
		i4 => x4, 
		o  => a2, 
		c  => cnt
	);
 
	m7m3 : mux7
	port map
	(
		i0 => r1_reg, 
		i1 => rm_reg (2 * sample_size - 2 downto sample_size - 1), 
		i2 => r1_reg, 
		i3 => rm_reg (2 * sample_size - 2 downto sample_size - 1), 
		i4 => rm_reg (2 * sample_size - 2 downto sample_size - 1), 
		i5 => rm_reg (2 * sample_size - 2 downto sample_size - 1), 
		i6 => r1_reg, 
		o  => a3, 
		c  => cnt
	);
 
	m7m4 : mux7
	port map
	(
		i0 => r2_reg, 
		i1 => r2_reg, 
		i2 => rm_reg (2 * sample_size - 2 downto sample_size - 1), 
		i3 => sum, 
		i4 => sum, 
		i5 => sum, 
		i6 => sum, 
		o  => a4, 
		c  => cnt
	);
 
	sync : process (clk, reset)
	begin
		if (clk'EVENT and clk = '1') then
			if (reset = '1') then
				r1_reg <= (others => '0');
				r2_reg <= (others => '0');
				rm_reg <= (others => '0');
			else
				r1_reg <= r1_next;
				r2_reg <= r2_next;
				rm_reg <= rm_next;
			end if;
		end if;
	end process;
 
	r1_next <= a3;
	r2_next <= a4;
 
	rm_next <= a1 * a2;
 
	sum     <= r1_reg + r2_reg;
 
	o       <= signed(sum);
 
end Behavioral;