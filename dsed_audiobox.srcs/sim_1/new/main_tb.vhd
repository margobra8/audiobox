----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2022 22:00:08
-- Design Name: 
-- Module Name: main_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main_tb is
end main_tb;

architecture Behavioral of main_tb is

component main
    port
    (
        sysclk : in std_logic; -- system clock
        reset : in std_logic; -- bounded to sw15
    
        ---- USER INPUTS
        -- button inputs;
        btnc: in std_logic; -- rec
        btnl: in std_logic; -- play rw
        btnr: in std_logic; -- play fw
        ---- IMPROVEMENTS SECTION
        -- btnd: in std_logic; -- vol dn
        -- btnu: in std_logic; -- vol up
        
        -- switch inputs
        sw0 : in std_logic;
        sw1 : in std_logic;
        sw2 : in std_logic;
        
        ---- MIC
        micro_clk : out std_logic;
        micro_data : in std_logic;
        micro_LR : out std_logic;
        
        ---- JACK 3.5MM
        jack_pwm : out std_logic;
        jack_sd : out std_logic
    );
end component;

    signal sysclk       : std_logic := '0';
    signal reset        : std_logic := '0';
    signal btnl         : std_logic := '0';
    signal btnr         : std_logic := '0';
    signal btnc         : std_logic := '0';
    signal sw0          : std_logic := '0';
    signal sw1          : std_logic := '0';
    signal sw2          : std_logic := '0';
    signal micro_clk    : std_logic := '0';
    signal micro_data   : std_logic := '0';
    signal micro_LR     : std_logic := '0';
    signal jack_sd      : std_logic := '0';
    signal jack_pwm     : std_logic := '0';
    
    signal a,b,c : std_logic := '0';
    
    constant clk_period : time := 5 ns;    
begin

    XMAIN : main
    port map
    (
        sysclk => sysclk,
        reset => reset,
        btnl => btnl,
        btnr => btnr,
        btnc => btnc,
        sw0 => sw0,
        sw1 => sw1,
        sw2 => sw2,
        micro_clk => micro_clk,
        micro_data => micro_data,
        micro_LR => micro_LR,
        jack_sd => jack_sd,
        jack_pwm => jack_pwm
    );
    
    -- Clock generation
    sysclk <= not sysclk after clk_period/2;
    
    input : process
    begin
        reset <= '1';
        wait for 1 us;      
        reset <= '0';
        wait for 5 us; 
        btnc <= '1'; -- Grabación
        wait for 10100 us;
        btnc <= '0';
        wait for 100us;
        btnr <= '1'; -- Play Normal
        SW0 <= '0';
        SW1 <= '0';
        wait for 200 us;
        btnr <= '0'; 
        wait for 2 ms;
        btnl <= '1'; -- Play al reves
        SW0 <= '0';
        SW1 <= '0';
        wait for 200 us;
        btnl <= '0'; 
        wait for 2 ms;
        btnr <= '1'; -- Play con Filtro Paso Alto
        SW0 <= '1';
        SW1 <= '1';
        wait for 200 us;
        btnr <= '0'; 
        wait for 2 ms;    
        btnr <= '1'; -- Play con Filtro Paso Bajo
        SW0 <= '1';
        SW1 <= '0';
        wait for 200 us;
        btnr <= '0'; 
        wait for 2 ms;      
        sw2 <= '1'; -- Borra
        wait for 500 us;
        sw2 <= '0';
        wait for 100 us;      
    
    end process;
    
	-- pseudorandom micro_data
    micro_data_nrg : process
    begin
        wait for 90 ns;
        a          <= not a after 1252 ns;
        b          <= not b after 2364 ns;
        c          <= not c after 3675 ns;
        micro_data <= a xor b xor c;
    end process;
end Behavioral;
