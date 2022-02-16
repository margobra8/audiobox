library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.package_dsed.all;
use IEEE.NUMERIC_STD.ALL;

entity mux7 is
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
end mux7;

architecture Behavioral of mux7 is

begin
	with c select o <= i0 when "000", 
	                   i1 when "001", 
	                   i2 when "010", 
	                   i3 when "011", 
	                   i4 when "100",
	                   i5 when "101",
	                   i6 when "110", 
	                   i0 when others;
end Behavioral;