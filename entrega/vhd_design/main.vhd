library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.package_dsed.all;

entity main is
    port (
        sysclk : in std_logic; -- system clock
        reset : in std_logic; -- bounded to sw15
    
        ---- USER INPUTS
        -- button inputs;
        btnc: in std_logic; -- rec
        btnl: in std_logic; -- play rw
        btnr: in std_logic; -- play fw
        ---- IMPROVEMENT: VOL CTL
        btnd: in std_logic; -- vol -
        btnu: in std_logic; -- vol +
        
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
        jack_sd : out std_logic;
        
        -- mem status
        g_led : out std_logic;
        r_led : out std_logic;
        
        -- display
        disp7 : out std_logic_vector (6 downto 0);
        an : out std_logic_vector (7 downto 0);
        dp : out std_logic
    );
end main;

architecture Behavioral of main is

    ---- CLOCK DIVIDER
	component clk_12megas
        port (
            clk_in1  : in  std_logic;
            clk_out1 : out std_logic; -- 12megas out
            reset : in std_logic); 
    end component;
    
    ---- AUDIO IF
    component audio_interface
        port (
                -- control ports
                clk_12megas      : in  std_logic;
                reset            : in  std_logic;
    
                -- controller
                record_enable    : in  std_logic;
                sample_out       : out std_logic_vector (sample_size - 1 downto 0);
                sample_out_ready : out std_logic;
    
                -- fsmd_microphone
                micro_clk        : out std_logic;
                micro_LR         : out std_logic;
                micro_data       : in  std_logic;
    
                -- play
                play_enable      : in  std_logic;
                sample_in        : in  std_logic_vector (sample_size - 1 downto 0);
                sample_request   : out std_logic;
    
                -- jack ctl and pwm
                jack_pwm         : out std_logic;
                jack_sd          : out std_logic;
                
		        -- vol ctl
                btnu  : in  std_logic;
                btnd  : in  std_logic;
                level : out unsigned (4 downto 0)
            );
    end component;
    
    ---- FIR FILTER
	component fir_filter
        port (
            clk              : in std_logic;
            reset            : in std_logic;
            sample_in        : in signed (sample_size - 1 downto 0);
            sample_in_enable : in std_logic;
            filter_select    : in std_logic; -- 0 lowpass, 1 highpass
            sample_out       : out signed (sample_size - 1 downto 0);
            sample_out_ready : out std_logic
        );
    end component;
    
    ---- CTRL
    component fsmd_main
        port (
            fclk  : in std_logic;
            reset : in std_logic;
    
            ---- USER INPUTS
            -- button inputs;
            btnc : in std_logic; -- rec
            btnl : in std_logic; -- play rw
            btnr : in std_logic; -- play fw
    
            ---- IMPROVEMENTS SECTION
            -- btnd: in std_logic; -- vol dn
            -- btnu: in std_logic; -- vol up
    
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
    end component;
    
    ---- RAM
    component ram 
    port (
        addra : in STD_LOGIC_VECTOR (18 downto 0);
        clka : in STD_LOGIC;
        dina : in STD_LOGIC_VECTOR (7 downto 0);
        douta : out STD_LOGIC_VECTOR (7 downto 0);
        ena : in STD_LOGIC;
        wea : in STD_LOGIC_VECTOR (0 downto 0)
        );
    end component;
    
    -- MATRIX
    component matrix_driver
        port
        (
            clk : in std_logic;
            reset : in std_logic;
            st : in std_logic_vector (2 downto 0);
            seg : in std_logic_vector (6 downto 0);
            cseg : in std_logic_vector (6 downto 0);
            
            level : in unsigned (4 downto 0);
            
            disp7 : out std_logic_vector (6 downto 0);
            an : out std_logic_vector (7 downto 0);
            dp : out std_logic
        );
    end component;

    signal aclk_12megas : std_logic;
    
    signal aa_samp_out, aa_samp_in : std_logic_vector (sample_size-1 downto 0);
    signal af_samp_out, af_samp_in : signed (sample_size-1 downto 0);
    signal aa_rec_en, aa_samp_out_rdy, af_samp_out_rdy, aa_play_en, aa_samp_req, af_samp_in_en, ar_ena : std_logic;
    signal ar_addra : std_logic_vector (18 downto 0);
    signal ar_dina, ar_douta : std_logic_vector (7 downto 0);
    signal ar_wea : std_logic_vector (0 downto 0);
    signal ao_st : std_logic_vector (2 downto 0);
    signal ao_low_mem, ao_no_mem : std_logic;
    signal ao_seg, ao_cseg : std_logic_vector (6 downto 0);
    signal alevel : unsigned (4 downto 0);
    
begin

    mclkdiv : clk_12megas
    port map
    (
        clk_in1 => sysclk,
        clk_out1 => aclk_12megas,
        reset => reset
    );
    
    maif : audio_interface
    port map
    (
        -- control ports
        clk_12megas => aclk_12megas,
        reset       => reset,
        
        -- controller
        record_enable    => aa_rec_en,
        sample_out       => aa_samp_out,
        sample_out_ready => aa_samp_out_rdy,
        
        -- fsmd_microphone
        micro_clk  => micro_clk,
        micro_LR   => micro_LR,
        micro_data => micro_data,
        
        -- play
        play_enable    => aa_play_en,
        sample_in      => aa_samp_in,
        sample_request => aa_samp_req,
        
        -- jack ctl and pwm
        jack_pwm => jack_pwm,
        jack_sd  => jack_sd,
        
        -- vol
        btnu => btnu,
        btnd => btnd,
        level => alevel
    );
    
    mfir : fir_filter
    port map
    (
        clk => aclk_12megas,
        reset => reset,
        sample_in => af_samp_in,
        sample_in_enable => af_samp_in_en,
        filter_select => sw1,
        sample_out => af_samp_out,
        sample_out_ready => af_samp_out_rdy
    );
    
    mram : ram
    port map
    (
        addra => ar_addra,
        clka => aclk_12megas,
        dina => ar_dina,
        douta => ar_douta,
        ena => ar_ena,
        wea => ar_wea
    );
    
    mfsmd : fsmd_main
    port map
    (
        fclk => aclk_12megas,
        reset => reset,
        
        btnc => btnc,
        btnl => btnl,
        btnr => btnr,
        
        sw0 => sw0,
        sw1 =>sw1,
        sw2 => sw2,
        
        ma_rec_en => aa_rec_en,
        ma_samp_out => aa_samp_out,
        ma_samp_out_rdy => aa_samp_out_rdy,
        ma_play_en => aa_play_en,
        ma_samp_in => aa_samp_in,
        ma_samp_req => aa_samp_req,
        
        mf_samp_in => af_samp_in,
        mf_samp_in_en => af_samp_in_en,
        mf_samp_out => af_samp_out,
        mf_samp_out_rdy => af_samp_out_rdy,
        
        mr_addra => ar_addra,
        mr_dina => ar_dina,
        mr_douta => ar_douta,
        mr_ena => ar_ena,
        mr_wea => ar_wea,
        
        mo_st => ao_st,
        mo_low_mem => ao_low_mem,
        mo_no_mem => ao_no_mem,
        mo_seg => ao_seg,
        mo_cseg => ao_cseg
    );
    
    mdisp : matrix_driver
    port map
    (
        clk => aclk_12megas,
        reset => reset,
        st => ao_st,
        seg => ao_seg,
        cseg => ao_cseg,
        
        level => alevel,
        
        disp7 => disp7,
        an => an,
        dp => dp
    );
    
    g_led <= ao_low_mem and (not ao_no_mem);
    r_led <= ao_low_mem or ao_no_mem;
    
end Behavioral;
