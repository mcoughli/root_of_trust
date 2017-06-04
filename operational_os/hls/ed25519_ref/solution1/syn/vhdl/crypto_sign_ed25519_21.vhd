-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity crypto_sign_ed25519_21 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    r_v_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    r_v_ce0 : OUT STD_LOGIC;
    r_v_we0 : OUT STD_LOGIC;
    r_v_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    r_v_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of crypto_sign_ed25519_21 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv5_1E : STD_LOGIC_VECTOR (4 downto 0) := "11110";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv64_1F : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv32_FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011111111";
    constant ap_const_lv32_FFFFFF13 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111100010011";
    constant ap_const_lv32_ED : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011101101";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal r_v_addr_reg_252 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_v_load_reg_257 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_29_fu_135_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_29_reg_275 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_v_addr_9_reg_280 : STD_LOGIC_VECTOR (4 downto 0);
    signal m_1_fu_161_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal m_1_1_fu_187_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal m_1_1_reg_290 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_886_cast_cast_fu_207_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_886_cast_cast_reg_295 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_v_addr_10_reg_303 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_753_fu_215_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_30_fu_226_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_30_reg_308 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_72 : STD_LOGIC_VECTOR (4 downto 0);
    signal m1_reg_83 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_reg_93 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_s_fu_130_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_755_fu_221_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_752_fu_201_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_756_fu_232_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal tmp_754_fu_245_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_fu_104_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_2_fu_110_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_6_fu_141_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_7_fu_147_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_765_fu_153_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_4_fu_167_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_764_fu_173_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_5_fu_181_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_884_cast_cast_fu_193_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_890_cast_cast_fu_238_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_1_reg_93_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                i_1_reg_93 <= i_30_reg_308;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_1_reg_93 <= ap_const_lv5_1E;
            end if; 
        end if;
    end process;

    i_reg_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_reg_72 <= i_29_reg_275;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                i_reg_72 <= ap_const_lv5_1E;
            end if; 
        end if;
    end process;

    m1_reg_83_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                m1_reg_83 <= m_1_fu_161_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                m1_reg_83 <= x_2_fu_110_p2(31 downto 31);
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_0))) then
                i_29_reg_275 <= i_29_fu_135_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_0 = tmp_753_fu_215_p2))) then
                i_30_reg_308 <= i_30_fu_226_p2;
                r_v_addr_10_reg_303 <= tmp_755_fu_221_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                m_1_1_reg_290 <= m_1_1_fu_187_p2;
                    tmp_886_cast_cast_reg_295(7 downto 0) <= tmp_886_cast_cast_fu_207_p3(7 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                r_v_load_reg_257 <= r_v_q0;
            end if;
        end if;
    end process;
    tmp_886_cast_cast_reg_295(31 downto 8) <= "000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, tmp_fu_124_p2, ap_CS_fsm_state6, tmp_753_fu_215_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = tmp_753_fu_215_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state8)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_29_fu_135_p2 <= std_logic_vector(unsigned(i_reg_72) + unsigned(ap_const_lv5_1F));
    i_30_fu_226_p2 <= std_logic_vector(unsigned(i_1_reg_93) + unsigned(ap_const_lv5_1F));
    m_1_1_fu_187_p2 <= (m1_reg_83 and x_5_fu_181_p2);
    m_1_fu_161_p2 <= (tmp_765_fu_153_p3 and m1_reg_83);
    r_v_addr_9_reg_280 <= ap_const_lv64_0(5 - 1 downto 0);
    r_v_addr_reg_252 <= ap_const_lv64_1F(5 - 1 downto 0);

    r_v_address0_assign_proc : process(ap_CS_fsm_state1, r_v_addr_reg_252, ap_CS_fsm_state3, tmp_fu_124_p2, r_v_addr_9_reg_280, ap_CS_fsm_state5, r_v_addr_10_reg_303, ap_CS_fsm_state6, tmp_753_fu_215_p2, ap_CS_fsm_state7, tmp_s_fu_130_p1, tmp_755_fu_221_p1, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            r_v_address0 <= r_v_addr_10_reg_303;
        elsif ((((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = tmp_753_fu_215_p2)) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            r_v_address0 <= r_v_addr_9_reg_280;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_0 = tmp_753_fu_215_p2))) then 
            r_v_address0 <= tmp_755_fu_221_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            r_v_address0 <= r_v_addr_reg_252;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_1))) then 
            r_v_address0 <= ap_const_lv64_0(5 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_0))) then 
            r_v_address0 <= tmp_s_fu_130_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            r_v_address0 <= ap_const_lv64_1F(5 - 1 downto 0);
        else 
            r_v_address0 <= "XXXXX";
        end if; 
    end process;


    r_v_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3, tmp_fu_124_p2, ap_CS_fsm_state5, ap_CS_fsm_state6, tmp_753_fu_215_p2, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_1)) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_0 = tmp_753_fu_215_p2)) or (ap_const_logic_1 = ap_CS_fsm_state7) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = tmp_753_fu_215_p2)) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            r_v_ce0 <= ap_const_logic_1;
        else 
            r_v_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    r_v_d0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state7, tmp_752_fu_201_p2, tmp_756_fu_232_p2, ap_CS_fsm_state8, tmp_754_fu_245_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            r_v_d0 <= tmp_754_fu_245_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            r_v_d0 <= tmp_756_fu_232_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            r_v_d0 <= tmp_752_fu_201_p2;
        else 
            r_v_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    r_v_we0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            r_v_we0 <= ap_const_logic_1;
        else 
            r_v_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_752_fu_201_p2 <= std_logic_vector(unsigned(r_v_load_reg_257) - unsigned(tmp_884_cast_cast_fu_193_p3));
    tmp_753_fu_215_p2 <= "1" when (i_1_reg_93 = ap_const_lv5_0) else "0";
    tmp_754_fu_245_p2 <= std_logic_vector(unsigned(r_v_q0) - unsigned(tmp_890_cast_cast_fu_238_p3));
    tmp_755_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_reg_93),64));
    tmp_756_fu_232_p2 <= std_logic_vector(unsigned(r_v_q0) - unsigned(tmp_886_cast_cast_reg_295));
    tmp_764_fu_173_p3 <= x_4_fu_167_p2(31 downto 31);
    tmp_765_fu_153_p3 <= x_7_fu_147_p2(31 downto 31);
    tmp_884_cast_cast_fu_193_p3 <= 
        ap_const_lv32_7F when (m_1_1_fu_187_p2(0) = '1') else 
        ap_const_lv32_0;
    tmp_886_cast_cast_fu_207_p3 <= 
        ap_const_lv32_FF when (m_1_1_fu_187_p2(0) = '1') else 
        ap_const_lv32_0;
    tmp_890_cast_cast_fu_238_p3 <= 
        ap_const_lv32_ED when (m_1_1_reg_290(0) = '1') else 
        ap_const_lv32_0;
    tmp_fu_124_p2 <= "1" when (i_reg_72 = ap_const_lv5_0) else "0";
    tmp_s_fu_130_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_72),64));
    x_2_fu_110_p2 <= std_logic_vector(unsigned(x_fu_104_p2) + unsigned(ap_const_lv32_FFFFFFFF));
    x_4_fu_167_p2 <= std_logic_vector(unsigned(r_v_q0) + unsigned(ap_const_lv32_FFFFFF13));
    x_5_fu_181_p2 <= (tmp_764_fu_173_p3 xor ap_const_lv1_1);
    x_6_fu_141_p2 <= (r_v_q0 xor ap_const_lv32_FF);
    x_7_fu_147_p2 <= std_logic_vector(unsigned(x_6_fu_141_p2) + unsigned(ap_const_lv32_FFFFFFFF));
    x_fu_104_p2 <= (r_v_q0 xor ap_const_lv32_7F);
end behav;
