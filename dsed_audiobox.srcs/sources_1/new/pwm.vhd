library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.package_dsed.all;
use IEEE.NUMERIC_STD.all;

entity pwm is
	port (
		clk_12megas     : in std_logic;
		reset           : in std_logic;
		en_2_cycles     : in std_logic;
		sample_in       : in std_logic_vector (sample_size - 1 downto 0);
		sample_request  : out std_logic;
		pwm_pulse       : out std_logic;
		-- volume ctl
		factor : in unsigned(8 downto 0) -- repr <4,5>
	);
end pwm;

architecture Behavioral of pwm is

	signal count_reg, count_next : std_logic_vector (len_cnt_300 - 1 downto 0);
	signal samp_req_reg, samp_req_next : std_logic;
	signal buf_reg, buf_next : std_logic;
	-- IMPROVEMENT: vol ctl
	signal u_samp_in : unsigned(sample_size-1 downto 0);
	signal vol : unsigned (7 downto 0) := (others=>'0');
	signal avol : unsigned (16 downto 0) := (others=>'0');
	signal fact_8 : unsigned (8 downto 0);
begin

    -- this code is a modification of an original design by Dr. P. Chu, available in RTL book (see PDF Report for bibliography)
    
	ff_tick : process (clk_12megas, reset)
	begin
		if (reset = '1') then
			count_reg <= (others => '0');
			buf_reg <= '0';
			samp_req_reg <= '0';
		else
			if (clk_12megas'event and clk_12megas = '1') then
				if (samp_req_reg = '1') then
					samp_req_reg <= '0';
				else
					samp_req_reg <= samp_req_next; 
				end if;
 
				if (en_2_cycles = '1') then
					count_reg <= count_next;
					buf_reg <= buf_next;
				end if;
			end if;
		end if;
	end process;
 
	next_state_logic : process (count_reg, sample_in)
	begin
		samp_req_next <= '0';
		count_next <= std_logic_vector (unsigned(count_reg) + 1);
		if (count_reg = std_logic_vector(to_unsigned(299, len_cnt_300))) then -- 299
			samp_req_next <= '1';
			count_next <= (others => '0'); 
		end if;
		if ((count_reg < ('0' & sample_in)) or (unsigned(sample_in) = 0)) then
			buf_next <= '1';
		else
			buf_next <= '0';
		end if;
	end process;
	
	-- IMPROVEMENT: volume ctl
	u_samp_in <= unsigned(sample_in);
	avol <= u_samp_in * factor; -- repr <8,0> * <4,5> = <12,5>
	
	vol_mgr : process (avol)
	begin
	   if (avol > "1111111100000") then -- avol > 255 [<7,5>]
	       vol <= "11111111";
	   else
	       vol <= avol (12 downto 5); --vol value in <8,0> 
	   end if;
	end process;
	
	
	-- output logic
	--pwm_pulse <= buf_reg;
	pwm_pulse <= '1' when(( unsigned(count_reg) < vol or sample_in="00000000") and reset ='0') else '0';
	sample_request <= samp_req_reg;

end Behavioral;