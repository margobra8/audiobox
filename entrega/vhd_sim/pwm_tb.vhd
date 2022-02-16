----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.12.2021 00:31:19
-- Design Name: 
-- Module Name: pwm_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.package_dsed.all;

entity pwm_tb is
end pwm_tb;

architecture Behavioral of pwm_tb is

	component pwm
		port (
			clk_12megas     : in std_logic;
			reset           : in std_logic;
			en_2_cycles     : in std_logic;
			sample_in       : in std_logic_vector (sample_size - 1 downto 0);
			sample_request  : out std_logic;
			pwm_pulse       : out std_logic
		);
	end component;
 
	component en_4_cycles
		port (
			clk_12megas  : in std_logic;
			reset        : in std_logic;
			clk_3megas   : out std_logic;
			en_2_cycles  : out std_logic;
			en_4_cycles  : out std_logic
		);
	end component;

	-- signals for pwm
	signal reset : std_logic := '0';
	signal clk_12megas : std_logic := '0';
	signal en_2_cycles : std_logic := '0';
	signal sample_in : std_logic_vector (sample_size - 1 downto 0) := (others => '0');
	signal sample_request : std_logic := '0';
	signal pwm_pulse : std_logic := '0';
 
	-- signals for en_4_cycles
	signal clk_3megas : std_logic := '0';
	signal enable_4_cycles : std_logic := '0';

	constant clk_period : time := 167 ns;
 
begin
	XPWM : pwm
	port map(
		clk_12megas     => clk_12megas, 
		reset           => reset, 
		en_2_cycles     => en_2_cycles, 
		sample_in       => sample_in, 
		sample_request  => sample_request, 
		pwm_pulse       => pwm_pulse
	);
 
	XEN4 : en_4_cycles
	port map(
		clk_12megas  => clk_12megas, 
		reset        => reset, 
		clk_3megas   => clk_3megas, 
		en_2_cycles  => en_2_cycles, 
		en_4_cycles  => enable_4_cycles
	);

	-- clock generation
	clk_12megas <= not clk_12megas after clk_period/2;
 
	inputs : process
	begin
		reset <= '1';
		wait for 1000 ns;
		reset <= '0';
		sample_in <= (others => '0');
		wait for 1000 us;
		sample_in <= (others => '1');
		wait for 1000 us;
		sample_in <= "10101101";
		wait;
	end process;

end Behavioral;