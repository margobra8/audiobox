library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.package_dsed.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsmd_microphone is
    Port ( clk_12megas : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_4_cycles : in STD_LOGIC;
    micro_data : in STD_LOGIC;
    sample_out : out STD_LOGIC_VECTOR (sample_size-  1 downto 0);
    sample_out_ready : out STD_LOGIC);
end fsmd_microphone;

architecture Behavioral of fsmd_microphone is

    -- state types enum
    type state_type is (s0, s1, s2);
    
    signal state_next, state_reg : state_type;
    signal count_next, count_reg : integer := 0;
    signal d1_next, d1_reg, d2_next, d2_reg: STD_LOGIC_VECTOR (sample_size - 1 downto 0);
    signal first_cyc_reg, first_cyc_next: STD_LOGIC;
    signal samp_out_reg, samp_out_next : STD_LOGIC_VECTOR (sample_size - 1 downto 0);

    signal samp_rdy : STD_LOGIC;  
    
begin

    ff_tick : process (clk_12megas, reset)
    begin
        if (reset = '1') then
            state_reg <= s0;
            count_reg <= 0;
            d1_reg <= (others => '0');
            d2_reg <= (others => '0');
            first_cyc_reg <= '0';
            samp_out_reg <= (others => '0');
        else
            if (clk_12megas'event and clk_12megas = '1') then
                if (enable_4_cycles = '1') then
                    state_reg <= state_next;
                    count_reg <= count_next;
                    d1_reg <= d1_next;
                    d2_reg <= d2_next;
                    first_cyc_reg <= first_cyc_next;
                    samp_out_reg <= samp_out_next;
                 end if;
            end if;
        end if;
    end process;
    
    next_state_logic : process (state_reg, count_reg, micro_data, d1_reg, d2_reg, enable_4_cycles, first_cyc_reg, samp_out_reg)
    
    -- en_4_cycles needs to be in sensitivity list to have samp_out_rdy synced and having clock from 12 MHz source
    
    begin
        samp_rdy <= '0';
        count_next <= count_reg;
        samp_out_next <= samp_out_reg;
        first_cyc_next <= first_cyc_reg;
        d1_next <= d1_reg;
        d2_next <= d2_reg;
        case state_reg is
            when s0 =>
                count_next <= count_reg + 1;
                if (micro_data = '1') then
                    d1_next <= d1_reg + '1';
                    d2_next <= d2_reg + '1';
                end if;
            when s1 =>
                count_next <= count_reg + 1;
                if (micro_data = '1') then
                    d1_next <= d1_reg + '1';
                end if;
                if (first_cyc_reg = '1' and count_reg = 106) then
                    samp_out_next <= d2_reg;
                    d2_next <= (others => '0');
                    samp_rdy <= enable_4_cycles;
                else
                    samp_rdy <= '0';
                end if;
            when s2 =>               
                if (count_reg = 299) then
                    count_next <= 0;
                    first_cyc_next <= '1';
                else
                    count_next <= count_reg + 1;
                end if;
                if (micro_data = '1') then
                    d2_next <= d2_reg + '1';
                end if;
                if (count_reg = 255) then
                    samp_out_next <= d1_reg;
                    d1_next <= (others => '0');
                    samp_rdy <= enable_4_cycles;
                else
                    samp_rdy <= '0';
                end if;
        end case;
    end process;
       
    next_state_decode : process (state_reg, count_reg)
    begin
        state_next <= s0;
        case (state_reg) is
            when s0 =>
                -- combinational logic for updating state has a fixed duration of 1 clock cycle, it is necessary to decrement the count upper bound by 1
                if (count_reg = 254) then
                    state_next <= s2;
                elsif(count_reg = 104) then
                    state_next <= s1;
                end if;  
            when s1 =>
                if (count_reg = 148) then
                    state_next <= s0;
                else
                    state_next <= s1;
                end if;          
            when s2 =>
                if (count_reg = 299) then
                    state_next <= s0;
                else
                    state_next <= s2;
                end if; 
            when others =>
                state_next <= s0;
        end case;
    end process;
        
-- output logic
sample_out <= samp_out_reg;        
sample_out_ready <= samp_rdy;

end Behavioral;
