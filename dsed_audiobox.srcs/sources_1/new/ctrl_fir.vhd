library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.package_dsed.all;

entity ctrl_fir is
	port 
	(
		clk     : in std_logic;
		reset   : in std_logic;
		in_en   : in std_logic;
		cnt     : out std_logic_vector (2 downto 0);
		out_rdy : out std_logic
	);
end ctrl_fir;

architecture Behavioral of ctrl_fir is

	type st_type is (idle, t0, t1, t2, t3, t4, t5, t6);
	signal st_next, st_reg : st_type;
 
begin
	sync : process (clk, reset)
	begin
		if (reset = '1') then
			st_reg <= idle;
		else
			if (clk'event and clk = '1') then
				st_reg <= st_next;
			end if;
		end if;
	end process;
 
	moore_fsm : process (st_reg, in_en)
	begin
		st_next <= idle;
		out_rdy <= '0';
		cnt     <= "000";
		case (st_reg) is
			when idle => 
				if (in_en = '1') then
					st_next <= t0;
				end if;
			when t0 => 
				cnt     <= "000";
				st_next <= t1;
			when t1 => 
				cnt     <= "001";
				st_next <= t2;
			when t2 => 
				cnt     <= "010";
				st_next <= t3;
			when t3 => 
				cnt     <= "011";
				st_next <= t4;
			when t4 => 
				cnt     <= "100";
				st_next <= t5;
			when t5 => 
				cnt     <= "101";
				st_next <= t6; 
			when t6 => 
				cnt     <= "110";
				out_rdy <= '1';
		end case;
	end process;

end Behavioral;