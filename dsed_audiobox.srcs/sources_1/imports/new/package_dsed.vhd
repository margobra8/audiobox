library IEEE;
use IEEE.numeric_std.all;

package package_dsed is
    constant sample_size : integer := 8; -- sampled values size
    constant len_cnt_300 : integer := 9; -- "300" uint length
    
    -- fir filter coefs
    constant c0lp : signed := "00000101";
    constant c1lp : signed := "00011111";
    constant c2lp : signed := "00111001";
    constant c3lp : signed := "00011111";
    constant c4lp : signed := "00000101";
    constant c0hp : signed := "11111111";
    constant c1hp : signed := "11100110";
    constant c2hp : signed := "01001101";
    constant c3hp : signed := "11100110";
    constant c4hp : signed := "11111111";

end package_dsed;