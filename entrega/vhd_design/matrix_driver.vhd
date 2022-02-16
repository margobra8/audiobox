library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity matrix_driver is
    port
    (
        clk : in std_logic;
        reset : in std_logic;
        st : in std_logic_vector (2 downto 0);
        seg : in std_logic_vector (6 downto 0);
        cseg : in std_logic_vector (6 downto 0);
        
        level : in unsigned(4 downto 0);
        
        disp7 : out std_logic_vector (6 downto 0);
        an : out std_logic_vector (7 downto 0);
        dp : out std_logic
    );
end matrix_driver;

architecture Behavioral of matrix_driver is
    
    component matrix_blinker
	port
    (
        clk         : in  std_logic;
        reset       : in  std_logic;
        active_disp : out std_logic_vector (2 downto 0);
        an          : out std_logic_vector (7 downto 0);
        dp          : out std_logic
    );
    end component;
    
    component bcd_7seg
	port
    (
        b : in std_logic_vector (3 downto 0);
        disp7 : out std_logic_vector (6 downto 0);
        na : in std_logic
    );
    end component;
    
    component state_7seg
	port
    (
        st      : in  std_logic_vector (2 downto 0);
        disp7_0 : out std_logic_vector (6 downto 0);
        disp7_1 : out std_logic_vector (6 downto 0)
    );
    end component;
    
    component mux8x7
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
    end component;
    
    component bin7_bcd2
        port
        (
            i   : in  std_logic_vector (6 downto 0);
            bcd : out std_logic_vector (7 downto 0)
        );
    end component;

    
    signal ai0, ai1, ai2, ai3, ai4, ai5, ai6, ai7 : std_logic_vector(6 downto 0);
    signal bcd_cseg, bcd_seg, bcd_lvl : std_logic_vector (7 downto 0);
    signal aactive_disp : std_logic_vector (2 downto 0);
    signal pad_lvl : std_logic_vector (6 downto 0);
    
begin

pad_lvl <= "00" & std_logic_vector(level); -- padding for bin2bcd conversion

bin_cseg : bin7_bcd2
port map
(
    i => cseg,
    bcd => bcd_cseg
);

bin_seg : bin7_bcd2
port map
(
    i => seg,
    bcd => bcd_seg
);

bin_lvl : bin7_bcd2
port map
(
    i => pad_lvl,
    bcd => bcd_lvl
);

bcd_cseg_0 : bcd_7seg
port map
(
    b => bcd_cseg(3 downto 0),
    disp7 => ai0,
    na => '0'
);

bcd_cseg_1 : bcd_7seg
port map
(
    b => bcd_cseg(7 downto 4),
    disp7 => ai1,
    na => '0'
);

bcd_seg_0 : bcd_7seg
port map
(
    b => bcd_seg(3 downto 0),
    disp7 => ai2,
    na => '0'
);

bcd_seg_1 : bcd_7seg
port map
(
    b => bcd_seg(7 downto 4),
    disp7 => ai3,
    na => '0'
);

bcd_lvl_0 : bcd_7seg
port map
(
    b => bcd_lvl(3 downto 0),
    disp7 => ai6,
    na => '0'
);

bcd_lvl_1 : bcd_7seg
port map
(
    b => bcd_lvl(7 downto 4),
    disp7 => ai7,
    na => '0'
);

muxsel : mux8x7
port map
(
    i0 => ai0,
    i1 => ai1,
    i2 => ai2,
    i3 => ai3,
    i4 => ai4,
    i5 => ai5,
    i6 => ai6,
    i7 => ai7,
    s => aactive_disp,
    y => disp7
);

refresh : matrix_blinker
port map
(
    clk => clk,
    reset => reset,
    active_disp => aactive_disp,
    an => an,
    dp => dp
);

st_decode : state_7seg
port map
(
    st => st,
    disp7_0 => ai4,
    disp7_1 => ai5
);

end Behavioral;
