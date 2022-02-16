library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.package_dsed.all;

entity vol_ctl is
	port
	(
		clk    : in  std_logic;
		reset  : in  std_logic;
		btnu   : in  std_logic; -- vol +
		btnd   : in  std_logic; -- vol -
		factor : out unsigned(8 downto 0);
		level  : out unsigned(4 downto 0)
	);
end vol_ctl;

architecture Behavioral of vol_ctl is

	constant MAX_LVL     : unsigned(4 downto 0) := "10100"; -- 20
	constant LOW_LVL     : unsigned(4 downto 0) := "00000"; -- 0
	constant DEFAULT_LVL : unsigned(4 downto 0) := "01010"; -- 10

	signal last_btnu, last_btnd : std_logic             := '0';
	signal lvl_reg, lvl_next    : unsigned (4 downto 0) := "01010"; -- default lvl is 10
	signal plus_vol, minus_vol  : std_logic;                        -- more or less vol req
	
begin

	process (clk, reset)
	begin
		if (reset = '1') then
			lvl_reg <= DEFAULT_LVL;
		elsif rising_edge(clk) then
			last_btnu <= btnu;
			last_btnd <= btnd;
			lvl_reg   <= lvl_next;
		end if;
	end process;

	process (last_btnd, btnd, last_btnu, btnu)
	begin
		plus_vol  <= '0';
		minus_vol <= '0';
		if (last_btnd = '0' and btnd = '1') then
			minus_vol <= '1';
		end if;

		if (last_btnu = '0' and btnu = '1') then
			plus_vol <= '1';
		end if;

	end process;

	process (lvl_reg, plus_vol, minus_vol)
	begin
		lvl_next <= lvl_reg;
		if (lvl_reg < MAX_LVL and plus_vol = '1') then
			lvl_next <= lvl_reg + 1;

		elsif (lvl_reg > LOW_LVL and minus_vol = '1') then
			lvl_next <= lvl_reg - 1;
		end if;
	end process;

	-- LEVEL ROM
	with lvl_reg select factor <= -- unsigned <4,5>
		"000000000" when "00000",     --0 
		"000000001" when "00001",     --1    
		"000000010" when "00010",     --2    
		"000000100" when "00011",     --3    
		"000000110" when "00100",     --4    
		"000001000" when "00101",     --5    
		"000001011" when "00110",     --6    
		"000001111" when "00111",     --7    
		"000010011" when "01000",     --8    
		"000011001" when "01001",     --9    
		"000100000" when "01010",     --10    
		"000101000" when "01011",     --11    
		"000110001" when "01100",     --12   
		"000111101" when "01101",     --13   
		"001001011" when "01110",     --14   
		"001011101" when "01111",     --15   
		"001110010" when "10000",     --16   
		"010001100" when "10001",     --17   
		"010101011" when "10010",     --18   
		"011010001" when "10011",     --19   
		"100000000" when others;      --20  

	level <= lvl_reg;
	
end Behavioral;