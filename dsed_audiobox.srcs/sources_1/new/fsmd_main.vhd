library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.package_dsed.all;

entity fsmd_main is
	port
	(
		fclk : in std_logic;
		reset  : in std_logic;

		---- USER INPUTS
		-- button inputs;
		btnc : in std_logic; -- rec
		btnl : in std_logic; -- play rw
		btnr : in std_logic; -- play fw

		---- IMPROVEMENTS SECTION
		--btnd: in std_logic; -- vol dn
		--btnu: in std_logic; -- vol up

		-- switch inputs
		sw0 : in std_logic; -- filtering on/off
		sw1 : in std_logic; -- filtering hp (1) / lp (0)
		sw2 : in std_logic; -- clr

		---- AUDIO IF
		ma_rec_en       : out std_logic;
		ma_samp_out     : in  std_logic_vector (sample_size - 1 downto 0);
		ma_samp_out_rdy : in  std_logic;
		ma_play_en      : out std_logic;
		ma_samp_in      : out std_logic_vector (sample_size - 1 downto 0);
		ma_samp_req     : in  std_logic;

		-- FIR FILTER
		mf_samp_in      : out signed (sample_size - 1 downto 0);
		mf_samp_in_en   : out std_logic;
		mf_samp_out     : in  signed (sample_size - 1 downto 0);
		mf_samp_out_rdy : in  std_logic;

		-- RAM
		mr_addra : out std_logic_vector (18 downto 0);
		mr_dina  : out std_logic_vector (7 downto 0);
		mr_douta : in  std_logic_vector(7 downto 0);
		mr_ena   : out std_logic;
		mr_wea   : out std_logic_vector (0 downto 0);

		-- STATUS OUTPUTS
		mo_st      : out std_logic_vector (2 downto 0); -- state repr
		mo_low_mem : out std_logic;                     -- low memory warning (90 percent full)
		mo_no_mem  : out std_logic;                     -- no memory warning
		mo_seg     : out std_logic_vector (6 downto 0); -- secs dn
		mo_cseg    : out std_logic_vector (6 downto 0)  -- secs/100 dn
	);
end fsmd_main;

architecture Behavioral of fsmd_main is

	type st_type is (idle, rec, play, clr);
	signal st_next, st_reg : st_type;

	-- aif
	signal ma_samp_in_next, ma_samp_in_reg : std_logic_vector (sample_size - 1 downto 0);

	-- ram addr
	signal f_next, f_reg, dir_next, dir_reg                                : std_logic;
	signal addr_u_next, addr_d_next, addr_u_reg, addr_d_reg, p_next, p_reg : std_logic_vector (18 downto 0);

	-- time
	signal clkp_cseg_next, clkp_cseg_reg, clkp_seg_next, clkp_seg_reg : std_logic;
	signal clkr_cseg_next, clkr_cseg_reg, clkr_seg_next, clkr_seg_reg : std_logic;
	signal clkcc_next, clkcc_reg                                      : std_logic;

	signal zerop_cseg_next, zerop_cseg_reg, zerop_seg_next, zerop_seg_reg : std_logic;
	signal zeror_cseg_next, zeror_cseg_reg, zeror_seg_next, zeror_seg_reg : std_logic;
	signal zerocc_next, zerocc_reg                                        : std_logic;

	signal qp_cseg_next, qp_seg_next, qr_cseg_next, qr_seg_next : std_logic_vector (6 downto 0);
	signal qp_cseg_reg, qp_seg_reg, qr_cseg_reg, qr_seg_reg : std_logic_vector (6 downto 0);
	signal qcc_next, qcc_reg                              : std_logic_vector (16 downto 0);

	signal ap_seg_load_next, ap_cseg_load_next, ar_seg_load_next, ar_cseg_load_next : std_logic                      := '0';
	signal ap_seg_load_reg, ap_cseg_load_reg, ar_seg_load_reg, ar_cseg_load_reg     : std_logic                      := '0';
	signal acc_load_next, acc_load_reg                                              : std_logic                      := '0';
	signal ap_seg_l_next, ap_cseg_l_next, ar_seg_l_next, ar_cseg_l_next             : std_logic_vector (6 downto 0)  := (others => '0');
	signal ap_seg_l_reg, ap_cseg_l_reg, ar_seg_l_reg, ar_cseg_l_reg                                 : std_logic_vector (6 downto 0)  := (others => '0');
	signal acc_l_next, acc_l_reg                                                                    : std_logic_vector (16 downto 0) := (others => '0');

	signal up_seg_reg, up_cseg_reg, ur_seg_reg, ur_cseg_reg, ucc_reg      : std_logic := '1';
	signal up_seg_next, up_cseg_next, ur_seg_next, ur_cseg_next, ucc_next : std_logic := '1';
	--	signal cnt_next, cnt_reg, p_cnt_next, p_cnt_reg                             : std_logic_vector (16 downto 0);
	--	signal mo_seg_u_next, mo_seg_d_next, mo_seg_u_reg, mo_seg_d_reg             : std_logic_vector (3 downto 0);
	--	signal mo_cseg_u_next, mo_cseg_d_next, mo_cseg_u_reg, mo_cseg_d_reg         : std_logic_vector (3 downto 0);
	--	signal p_mo_seg_u_next, p_mo_seg_d_next, p_mo_seg_u_reg, p_mo_seg_d_reg     : std_logic_vector (3 downto 0);
	--	signal p_mo_cseg_u_next, p_mo_cseg_d_next, p_mo_cseg_u_reg, p_mo_cseg_d_reg : std_logic_vector (3 downto 0);
	--	signal clk_cseg_next, clk_cseg_reg, clk_seg_next, clk_seg_reg : std_logic;
	--	signal zero_cseg_next, zero_cseg_reg, zero_seg_next, zero_seg_reg : std_logic;
	--	signal qp_cseg_next, qp_cseg_reg, qp_sec_next, qp_sec_reg : std_logic_vector (7 downto 0);
	--	signal qr_cseg_next, qr_cseg_reg, qr_sec_next, qr_sec_reg : std_logic_vector (7 downto 0);

	component cnt_mod99
		port
		(
			CLK  : in  std_logic;
			CE   : in  std_logic;
			SCLR : in  std_logic;
			LOAD : in  std_logic;
			UP   : in  std_logic;
			L    : in  std_logic_vector(6 downto 0);
			Q    : out std_logic_vector(6 downto 0)
		);
	end component;

	component cnt_mod120k
		port
		(
			CLK  : in  std_logic;
			CE   : in  std_logic;
			SCLR : in  std_logic;
			LOAD : in  std_logic;
			UP   : in  std_logic;
			L    : in  std_logic_vector(16 downto 0);
			Q    : out std_logic_vector(16 downto 0)
		);
	end component;

begin

	sync : process (fclk, reset)
	begin
		if (reset = '1') then
			st_reg <= idle;

			addr_u_reg <= (others => '0');
			addr_d_reg <= (others => '0');
			dir_reg <= '0';
			p_reg      <= (others => '0');

			f_reg          <= '0';
			ma_samp_in_reg <= (others => '0');

			clkp_seg_reg <= '0';
			clkr_seg_reg <= '0';
			clkp_cseg_reg <= '0';
			clkr_cseg_reg <= '0';
			clkcc_reg    <= '0';

			zerop_seg_reg <= '1';
			zeror_seg_reg <= '1';
			zerop_cseg_reg <= '1';
            zeror_cseg_reg <= '1';
			zerocc_reg    <= '1';
			
			qr_cseg_reg <= (others => '0');
			qr_seg_reg <= (others => '0');
			qp_cseg_reg <= (others => '0');
			qp_seg_reg <= (others => '0');
			qcc_reg <= (others => '0');

			ar_seg_load_reg  <= '0';
			ap_seg_load_reg  <= '0';
			ar_cseg_load_reg <= '0';
			ap_cseg_load_reg <= '0';
			acc_load_reg     <= '0';
			
			ap_seg_l_reg  <= (others => '0');
            ap_cseg_l_reg <= (others => '0');
            ar_seg_l_reg  <= (others => '0');
            ar_cseg_l_reg <= (others => '0');
            acc_l_reg <= (others => '0');

			up_seg_reg  <= '1';
			up_cseg_reg <= '1';
			ur_seg_reg  <= '1';
			ur_cseg_reg <= '1';
			ucc_reg     <= '1';
		else
			if (rising_edge(fclk)) then
				st_reg <= st_next;

				addr_u_reg <= addr_u_next;
				addr_d_reg <= addr_d_next;
				dir_reg <= dir_next;
				p_reg      <= p_next;

				f_reg          <= f_next;
				ma_samp_in_reg <= ma_samp_in_next;

				clkp_seg_reg <= clkp_seg_next;
				clkr_seg_reg <= clkr_seg_next;
				clkp_cseg_reg <= clkp_cseg_next;
				clkr_cseg_reg <= clkr_cseg_next;
				clkcc_reg    <= clkcc_next;

				zerop_seg_reg <= zerop_seg_next;
				zeror_seg_reg <= zeror_seg_next;
				zerop_cseg_reg <= zerop_cseg_next;
				zeror_cseg_reg <= zeror_cseg_next;
				zerocc_reg    <= zerocc_next;
				
				qr_cseg_reg <=   qr_cseg_next;        
                 qr_seg_reg <=    qr_seg_next;
                qp_cseg_reg <=   qp_cseg_next;
                 qp_seg_reg <=    qp_seg_next;
                    qcc_reg <=       qcc_next;

				ar_seg_load_reg  <= ar_seg_load_next;
				ap_seg_load_reg  <= ap_seg_load_next;
				ar_cseg_load_reg <= ar_cseg_load_next;
				ap_cseg_load_reg <= ap_cseg_load_next;
				acc_load_reg     <= acc_load_next;
				
				ap_seg_l_reg    <=  ap_seg_l_next;
                ap_cseg_l_reg   <=  ap_cseg_l_next;
                ar_seg_l_reg    <=  ar_seg_l_next;
                ar_cseg_l_reg   <=  ar_cseg_l_next;
                acc_l_reg <= acc_l_next;

				up_seg_reg  <= up_seg_next;
				up_cseg_reg <= up_cseg_next;
				ur_seg_reg  <= ur_seg_next;
				ur_cseg_reg <= ur_cseg_next;
				ucc_reg     <= ucc_next;
			end if;
		end if;
	end process;

	fsmd : process (st_reg, addr_u_reg, addr_d_reg, dir_reg, p_reg, btnc, btnl, btnr, sw0, sw1, sw2, ma_samp_out, ma_samp_out_rdy, ma_samp_req, mf_samp_out, mf_samp_out_rdy, mr_douta)
	begin
		st_next         <= idle;           -- next state
		addr_u_next     <= addr_u_reg;     -- upper current addr
		addr_d_next     <= addr_d_reg;     -- lower current addr
		dir_next <= dir_reg; -- play direction
		p_next          <= p_reg;          -- current pointer, points to last stored sample on memory
		f_next          <= f_reg;          -- flag to discard first rubbish sample on memory
		ma_samp_in_next <= ma_samp_in_reg; -- register for audio sample going to audio interface

		ma_play_en <= '0';             -- play enabled (to audio if)
		ma_rec_en  <= '0';             -- recording enabled (from audio if)
		ma_samp_in <= (others => '0'); -- force 0 sample to audio interface

		mf_samp_in_en <= '0';             -- filter in enable default 0
		mf_samp_in    <= (others => '0'); -- filter in default none

		mr_wea  <= "0";             -- ram default read
		mr_ena  <= '1';             -- ram default function enable
		mr_dina <= (others => '0'); -- ram default data in 0

		-- state nav
		case st_reg is
			when idle             =>
				ma_samp_in <= (others => '0');      -- no audio to audio interface
				if (btnc = '1') then                -- want to record ?
					addr_u_next <= p_reg;               -- current upper address is set to current pointer (to resume recording from where left off)
					if (unsigned(p_reg) >= 524287) then -- full ram ?
						st_next <= idle;                    -- then we go to idle and prevent recording
					else
						st_next <= rec; -- we go to record state
					end if;
				elsif (btnr = '1' xor btnl = '1') then -- play something (fw or rw) ? --TODO: change to XOR
				    if (btnr = '1') then
				        dir_next <= '0';
				    else
				        dir_next <= '1';
				    end if;
					st_next     <= play;                   -- we go to play state
					addr_u_next <= (others => '0');        -- we set upper address to the first one to play from the beginning of ram
					addr_d_next <= p_reg;                  -- we set the pointer to the lower end address to have a reference to where the recording stops
					f_next      <= '1';                    -- we enable discard of the first sample
				elsif (sw2 = '1') then                 -- clear enabled ?
					st_next <= clr;                        -- we go to clear state
				end if;
			when clr          =>
				p_next <= (others => '0'); -- set the pointer of last stored sample to 0 -> clears recording
				if (sw2 = '1') then        -- keep clr ?
					st_next <= clr;            -- stay in clr
				else
					st_next <= idle; -- go to idle
				end if;
			when rec =>
				ma_rec_en <= '1';                                          -- enable recording from the audio interface !
				if (ma_samp_out_rdy = '1') then                            -- if the audio if has a sample ready for us
					mr_wea      <= "1";                                        -- prepare to write to ram
					addr_u_next <= std_logic_vector(unsigned(addr_u_reg) + 1); -- advance mem addr
					addr_d_next <= addr_u_reg;                                 -- tail current addr
					mr_dina     <= ma_samp_out;                                -- store audio sample
					p_next      <= addr_u_reg;                                 -- pointer to current addr, update end of recording
				end if;
				if (btnc = '0' or unsigned(p_reg) >= 524287) then -- release rec btn or full ram ?
					st_next <= idle;                                  -- we go to idle state
				else
					st_next <= rec; -- we keep recording
				end if;
			when play =>
				ma_play_en <= '1';           -- enable playing from audio if !
				if (sw0 = '0') then          -- filtering off ?
					ma_samp_in <= mr_douta;      -- get sample from ram 
					if (ma_samp_req = '1') then  -- sample requested from audio interface ?
						if (dir_reg = '0') then         -- playing forward ? -- TODO: CHG TO REGISTER
							if (addr_u_reg = p_reg) then -- no more recorded audio ?
								st_next <= idle;             -- just dont play anything and go to idle
							else
								addr_u_next <= std_logic_vector(unsigned(addr_u_reg) + 1); -- advance mem addr
								addr_d_next <= addr_u_reg;                                 -- tail current addr
								st_next     <= play;                                       -- stay playing
							end if;
						elsif (dir_reg = '1') then                               -- playing rewind ? -- TODO: document added elsif dir reg
							if (unsigned(addr_d_reg) = 0) then -- no more recorded audio ?
								st_next <= idle;                   -- just dont play anything and go to idle
							else
								addr_d_next <= std_logic_vector(unsigned(addr_d_reg) - 1); -- back1 mem addr
								addr_u_next <= addr_d_reg;                                 -- tail current addr
								st_next     <= play;                                       -- stay playing
							end if;
						end if;
					else
						st_next <= play; -- wait for a sample request from audio if, stay in same state
					end if;
				else                                                           -- filtering on ? 
					mf_samp_in <= signed(not(mr_douta(7)) & mr_douta(6 downto 0)); -- get sample from mem and convert to 2c
					ma_samp_in <= ma_samp_in_reg;                                  -- send the sample at register to the audio interface 
					if (f_reg = '1') then                                          -- discard first sample (bad sample)
						mf_samp_in_en <= '1';                                          -- enable filter accepting samples
						f_next        <= '0';                                          -- don't discard any more samples
					end if;
					if (mf_samp_out_rdy = '1') then                                                     -- sample from filter is ready ?
						ma_samp_in_next <= std_logic_vector(not(mf_samp_out(7)) & mf_samp_out(6 downto 0)); -- get sample out of fir and convert from 2c, next send
					end if;
					if (ma_samp_req = '1') then  -- audio interface requests sample ?
						mf_samp_in_en <= '1';        -- we enable filter to accept sample
						if (dir_reg = '0') then         -- play fw
							if (addr_u_reg = p_reg) then -- no more recorded audio left ?
								st_next <= idle;             -- just dont play anything and go to idle
							else
								addr_u_next <= std_logic_vector(unsigned(addr_u_reg) + 1); -- advance mem addr
								addr_d_next <= addr_u_reg;                                 -- tail current addr
								st_next     <= play;                                       -- stay playing
							end if;
						elsif (dir_reg = '1') then                               -- playing rewind ? -- TODO document
							if (unsigned(addr_d_reg) = 0) then -- no more recorded audio left ?
								st_next <= idle;                   -- just dont play anything and go to idle
							else
								addr_d_next <= std_logic_vector(unsigned(addr_d_reg) - 1); -- back1 mem addr
								addr_u_next <= addr_d_reg;                                 -- tail current addr
								st_next     <= play;                                       -- stay playing
							end if;
						end if;
					else
						st_next <= play; -- wait for a sample request from audio if, stay in same state
					end if;
				end if;
		end case;
	end process;

	cseg_play_cnt : cnt_mod99
	port map
	(
		clk  => fclk,
		ce   => clkp_cseg_reg,
		sclr => zerop_cseg_reg,
		up => up_cseg_reg,
		load => ap_cseg_load_reg,
		l    => ap_cseg_l_reg,
		q    => qp_cseg_next
	);

	cseg_rec_cnt : cnt_mod99
	port map
	(
        clk  => fclk,
        ce   => clkr_cseg_reg,
        sclr => zeror_cseg_reg,
        up => ur_cseg_reg,
        load => ar_cseg_load_reg,
        l    => ar_cseg_l_reg,
        q    => qr_cseg_next
	);
	
	seg_play_cnt : cnt_mod99
	port map
	(
        clk  => fclk,
        ce   => clkp_seg_reg,
        sclr => zerop_seg_reg,
        up => up_seg_reg,
        load => ap_seg_load_reg,
        l    => ap_seg_l_reg,
        q    => qp_seg_next
	);

	seg_rec_cnt : cnt_mod99
	port map
	(
        clk  => fclk,
        ce   => clkr_seg_reg,
        sclr => zeror_seg_reg,
        up => ur_seg_reg,
        load => ar_seg_load_reg,
        l    => ar_seg_l_reg,
        q    => qr_seg_next
	);
	cnt_120k : cnt_mod120k
	port map 
	(
        clk  => fclk,
        ce   => clkcc_reg,
        sclr => zerocc_reg,
        up => ucc_reg,
        load => acc_load_reg,
        l    => acc_l_reg,
        q    => qcc_next
	);
	
	t_time : process (st_reg, dir_reg, addr_u_reg, addr_d_reg, p_reg, btnc, btnl, btnr, sw0, sw1, sw2, qr_cseg_next, qr_seg_next, qp_cseg_next, qp_seg_next, qcc_next, zerop_seg_reg, zeror_seg_reg, zerop_cseg_reg, zeror_cseg_reg, zerocc_reg, ar_seg_load_reg, ap_seg_load_reg, ar_cseg_load_reg, ap_cseg_load_reg, acc_load_reg, up_seg_reg, up_cseg_reg, ur_seg_reg, ur_cseg_reg, ucc_reg, ap_seg_l_reg, ap_cseg_l_reg, ar_seg_l_reg, ar_cseg_l_reg, acc_l_reg)
	-- clkp_seg_reg, clkr_seg_reg, clkp_cseg_reg, clkr_cseg_reg, clkcc_reg, 
	begin

		clkp_seg_next     <= '0';
		clkr_seg_next     <= '0';
		clkp_cseg_next     <= '0';
		clkr_cseg_next     <= '0';
		clkcc_next        <= '0';
		-- qr_cseg_next      <= (others => '0');
		-- qr_seg_next       <= (others => '0');
		-- qp_cseg_next      <= (others => '0');
		-- qp_seg_next       <= (others => '0');
		-- qcc_next          <= (others => '0');
		zerop_seg_next    <= '0';
		zeror_seg_next    <= '0';
		zeror_cseg_next    <= '0';
		zerop_cseg_next    <= '0';
		zerocc_next       <= '0';
		ar_seg_load_next  <= '0';
		ap_seg_load_next  <= '0';
		ar_cseg_load_next <= '0';
		ap_cseg_load_next <= '0';
		                 
		ap_seg_l_next   <= (others => '0');
        ap_cseg_l_next  <= (others => '0');
        ar_seg_l_next   <= (others => '0');
        ar_cseg_l_next  <= (others => '0');
        acc_l_next      <= (others => '0');            
               
		acc_load_next     <= '0';
		up_seg_next       <= '1';
		up_cseg_next      <= '1';
		ur_seg_next       <= '1';
		ur_cseg_next      <= '1';
		ucc_next          <= '1';

		case st_reg is
			when idle =>
			    if (btnl = '1' xor btnr = '1') then
                    ap_cseg_l_next <= qr_cseg_reg;
                    ap_cseg_load_next <= '1';
                    clkp_cseg_next <= '1';
                    ap_seg_l_next <= qr_seg_reg;
                    ap_seg_load_next <= '1';
                    clkp_seg_next <= '1';
                end if;
			when clr =>
				zeror_seg_next  <= '1';
				zeror_cseg_next <= '1';
				zerop_seg_next  <= '1';
				zerop_cseg_next <= '1';
				zerocc_next <= '1';
			when rec =>
				clkcc_next <= '1';
				if (unsigned(qcc_reg) = to_unsigned(120000, qcc_reg'length)) then -- 1 cent seg passed
					clkr_cseg_next <= '1';
					zerocc_next <= '1';
					if (unsigned(qr_cseg_reg) = to_unsigned(99, qr_cseg_reg'length)) then -- 1 second passed
                        clkr_seg_next   <= '1';
                        zeror_cseg_next <= '1';
                        if (unsigned(qr_seg_reg) = to_unsigned(99, qr_seg_reg'length)) then -- max time display reached 99.99 s
                            --zeror_cseg_next <= '1';
                            --zeror_seg_next  <= '1';
                        end if;
                    end if;
				end if;
			when play =>
                clkcc_next <= '1';
                up_cseg_next <= '0';
                up_seg_next <= '0';
                ucc_next <= '0';
                if (unsigned(qcc_reg) = to_unsigned(0, qcc_reg'length)) then -- 1 cent seg passed
                    acc_l_next <= std_logic_vector(to_unsigned(120000, qcc_reg'length));
                    acc_load_next <= '1';
                    clkp_cseg_next <= '1';
                    if (unsigned(qp_cseg_reg) = to_unsigned(0, qp_cseg_reg'length)) then -- 1 second passed
                        ap_cseg_l_next <= std_logic_vector(to_unsigned(99, qp_cseg_reg'length));
                        ap_cseg_load_next <= '1';
                        clkp_cseg_next <= '1';
                        clkp_seg_next   <= '1';
                        if (unsigned(qp_seg_reg) = to_unsigned(0, qp_seg_reg'length)) then -- max time display reached 99.99 s
                            --zerop_cseg_next <= '1';
                            --zerop_seg_next  <= '1';
                        end if;
                    end if;
                end if;                                                                   
		end case;
	end process;
	
	process (dir_reg, addr_u_reg, addr_d_reg)
        begin
            mr_addra <= addr_u_reg;
            if (dir_reg = '1') then
              mr_addra <= addr_d_reg;  
            end if;
        end process;

	with st_reg select mo_st <= "000" when idle,
		"001" when rec,
		"010" when play,
		"011" when clr,
		"111" when others;
	with st_reg select mo_seg <= qp_seg_reg when play,
		qr_seg_reg when others;

	with st_reg select mo_cseg <= qp_cseg_reg when play,
		qr_cseg_reg when others;

	mo_no_mem <= '1' when unsigned(p_reg) >= 524287 else
		'0';

	mo_low_mem <= '1' when unsigned(p_reg) >= 471858 else
		'0';

end Behavioral;