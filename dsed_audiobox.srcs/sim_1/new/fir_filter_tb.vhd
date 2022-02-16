----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 28.01.2022 17:16:10
-- Design Name:
-- Module Name: fir_filter_tb - Behavioral
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
use ieee.numeric_std.all;
use work.package_dsed.all;

entity fir_filter_tb is
end fir_filter_tb;

architecture Behavioral of fir_filter_tb is

	component fir_filter
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
	end component;
 
	signal clk              : std_logic := '0';
	signal reset            : std_logic := '0';
	signal sample_in        : signed (sample_size - 1 downto 0) := (others => '0');
	signal sample_in_enable : std_logic := '0';
	signal filter_select    : std_logic := '0';
	signal sample_out       : signed (sample_size - 1 downto 0) := (others => '0');
	signal sample_out_ready : std_logic := '0';
 
	constant clk_period     : time := 83.3 ns;
 
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
 
	input : process
	begin
		reset <= '1';
		wait for 150 ns;
		reset            <= '0';
		filter_select    <= '1';
 
		sample_in_enable <= '1';
		sample_in        <= "00000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;
 
		sample_in_enable <= '1';
		sample_in        <= "01000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;
 
		sample_in_enable <= '1';
		sample_in        <= "00000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;
 
		sample_in_enable <= '1';
		sample_in        <= "00000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;
 
		sample_in_enable <= '1';
		sample_in        <= "00000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;
 
		sample_in_enable <= '1';
		sample_in        <= "00000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;
 
		sample_in_enable <= '1';
		sample_in        <= "00000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;
 
		sample_in_enable <= '1';
		sample_in        <= "00000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;
 
		sample_in_enable <= '1';
		sample_in        <= "00000000";
		wait for clk_period;
		sample_in_enable <= '0';
		wait for 1500ns;

		wait;
	end process;

end Behavioral;