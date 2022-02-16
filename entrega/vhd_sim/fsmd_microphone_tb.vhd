----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2021 23:52:09
-- Design Name: 
-- Module Name: fsmd_microphone_tb - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;
use work.package_dsed.all;

entity fsmd_microphone_tb is
end fsmd_microphone_tb;

architecture Behavioral of fsmd_microphone_tb is

    component fsmd_microphone port (
        clk_12megas      : in std_logic;
        reset            : in std_logic;
        enable_4_cycles  : in std_logic;
        micro_data       : in std_logic;
        sample_out       : out std_logic_vector (sample_size-1 downto 0);
        sample_out_ready : out std_logic);
    end component;
    
    component en_4_cycles port (
        clk_12megas     : in STD_LOGIC;
        reset           : in STD_LOGIC;
        clk_3megas      : out STD_LOGIC;
        en_2_cycles     : out STD_LOGIC;
        en_4_cycles     : out STD_LOGIC);
    end component;

    -- signals related to fsmd_microphone
    
    signal clk_12megas      : std_logic := '0';
    signal reset            : std_logic := '0';
    signal enable_4_cycles  : std_logic := '0';
    signal micro_data       : std_logic := '0';
    signal sample_out       : std_logic_vector (sample_size-1 downto 0) := (others => '0');
    signal sample_out_ready : std_logic := '0';
    
    -- signals related to en_4_cycles
    
    signal clk_3megas       : std_logic := '0';
    signal en_2_cycles      : std_logic := '0';
    
    -- signals for pseudorandom micro_data
    signal a                : std_logic := '1';
    signal b, c             : std_logic := '0';

    constant clk_period : time := 167 ns;
    
begin

    XFSM : fsmd_microphone
    port map (
        clk_12megas         => clk_12megas,
        reset               => reset,
        enable_4_cycles     => enable_4_cycles,
        micro_data          => micro_data,
        sample_out          => sample_out,
        sample_out_ready    => sample_out_ready
    );
          
    XEN4 :  en_4_cycles
    port map (
        clk_12megas => clk_12megas,
        reset       => reset,
        clk_3megas  => clk_3megas,
        en_2_cycles => en_2_cycles,
        en_4_cycles => enable_4_cycles
     );

    -- clock generation (code from lab 4.4.2)
    clk_12megas <= not clk_12megas after clk_period/2;
  
    inputs : process
    begin
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        -- micro_data <= '1'; -- fixed microdata to 1
        wait;
    end process;
    
    -- pseudorandom micro_data
    a <= not a after 100 us;
    b <= not b after 125 us;
    c <= not c after 160 us;
    micro_data <= a xor b xor c;

end Behavioral;