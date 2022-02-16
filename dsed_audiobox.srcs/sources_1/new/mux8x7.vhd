library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8x7 is
    port
    (
        i0 : in std_logic_vector (6 downto 0);
        i1 : in std_logic_vector (6 downto 0);
        i2 : in std_logic_vector (6 downto 0);
        i3 : in std_logic_vector (6 downto 0);
        i4 : in std_logic_vector (6 downto 0);
        i5 : in std_logic_vector (6 downto 0);
        i6 : in std_logic_vector (6 downto 0);
        i7 : in std_logic_vector (6 downto 0);
        
        s : in std_logic_vector (2 downto 0);
        y : out std_logic_vector (6 downto 0)
    );
end mux8x7;

architecture Behavioral of mux8x7 is

begin

with s select y <= i0 when "000",
                   i1 when "001",
                   i2 when "010",
                   i3 when "011",
                   i4 when "100",
                   i5 when "101",
                   i6 when "110",
                   i7 when "111",
                   i0 when others;

end Behavioral;
