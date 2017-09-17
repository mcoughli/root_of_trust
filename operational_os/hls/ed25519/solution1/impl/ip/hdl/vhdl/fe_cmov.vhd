-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fe_cmov is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    f_0_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_1_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_2_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_3_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_4_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_5_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_6_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_7_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_8_read : IN STD_LOGIC_VECTOR (31 downto 0);
    f_9_read : IN STD_LOGIC_VECTOR (31 downto 0);
    g_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    g_ce0 : OUT STD_LOGIC;
    g_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    g_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    g_ce1 : OUT STD_LOGIC;
    g_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    tmp_7562 : IN STD_LOGIC_VECTOR (4 downto 0);
    u_xy2d_offset : IN STD_LOGIC_VECTOR (2 downto 0);
    b : IN STD_LOGIC_VECTOR (0 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_5 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_6 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_7 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_8 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_9 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of fe_cmov is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv12_2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_const_lv12_3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000011";
    constant ap_const_lv12_4 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_const_lv12_5 : STD_LOGIC_VECTOR (11 downto 0) := "000000000101";
    constant ap_const_lv12_6 : STD_LOGIC_VECTOR (11 downto 0) := "000000000110";
    constant ap_const_lv12_7 : STD_LOGIC_VECTOR (11 downto 0) := "000000000111";
    constant ap_const_lv12_8 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_const_lv12_9 : STD_LOGIC_VECTOR (11 downto 0) := "000000001001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_fu_255_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_1438_reg_262 : STD_LOGIC_VECTOR (11 downto 0);
    signal reg_270 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal reg_276 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal tmp_1442_reg_282 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_1443_reg_288 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal g0_reg_650 : STD_LOGIC_VECTOR (31 downto 0);
    signal g1_reg_655 : STD_LOGIC_VECTOR (31 downto 0);
    signal g2_reg_670 : STD_LOGIC_VECTOR (31 downto 0);
    signal g3_reg_675 : STD_LOGIC_VECTOR (31 downto 0);
    signal g4_reg_690 : STD_LOGIC_VECTOR (31 downto 0);
    signal g5_reg_695 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal g6_reg_710 : STD_LOGIC_VECTOR (31 downto 0);
    signal g7_reg_715 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1438_cast_fu_334_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1439_cast_fu_345_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1440_cast_fu_350_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1441_cast_fu_355_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1442_cast_fu_360_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1443_cast_fu_365_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1444_cast_fu_370_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1445_cast_fu_375_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1446_cast_fu_380_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1447_cast_fu_385_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_fu_255_p0 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl_cast_fu_314_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_255_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl1_cast_fu_329_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_fu_304_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_1437_fu_319_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_1439_fu_339_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal x0_fu_390_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal b_assign_cast_fu_442_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal x1_fu_395_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x2_fu_400_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x3_fu_405_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x4_fu_410_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x5_fu_415_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x6_fu_420_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x7_fu_425_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x8_fu_430_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x9_fu_436_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x0_1_fu_450_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x1_1_fu_456_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x2_1_fu_462_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x3_1_fu_468_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x4_1_fu_474_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x5_1_fu_480_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x6_1_fu_486_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x7_1_fu_492_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x8_1_fu_498_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal x9_1_fu_504_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_0_write_assign_fu_510_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_1_write_assign_fu_516_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_2_write_assign_fu_522_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_3_write_assign_fu_528_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_4_write_assign_fu_534_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_5_write_assign_fu_540_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_6_write_assign_fu_546_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_7_write_assign_fu_552_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_8_write_assign_fu_558_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal f_9_write_assign_fu_564_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_2_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_3_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_4_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_5_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_6_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_7_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_8_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_9_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);


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


    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_0_preg <= f_0_write_assign_fu_510_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_1_preg <= f_1_write_assign_fu_516_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_2_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_2_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_2_preg <= f_2_write_assign_fu_522_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_3_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_3_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_3_preg <= f_3_write_assign_fu_528_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_4_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_4_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_4_preg <= f_4_write_assign_fu_534_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_5_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_5_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_5_preg <= f_5_write_assign_fu_540_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_6_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_6_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_6_preg <= f_6_write_assign_fu_546_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_7_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_7_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_7_preg <= f_7_write_assign_fu_552_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_8_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_8_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_8_preg <= f_8_write_assign_fu_558_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_9_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_9_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                    ap_return_9_preg <= f_9_write_assign_fu_564_p2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                ap_return_0 <= f_0_write_assign_fu_510_p2;
                ap_return_1 <= f_1_write_assign_fu_516_p2;
                ap_return_2 <= f_2_write_assign_fu_522_p2;
                ap_return_3 <= f_3_write_assign_fu_528_p2;
                ap_return_4 <= f_4_write_assign_fu_534_p2;
                ap_return_5 <= f_5_write_assign_fu_540_p2;
                ap_return_6 <= f_6_write_assign_fu_546_p2;
                ap_return_7 <= f_7_write_assign_fu_552_p2;
                ap_return_8 <= f_8_write_assign_fu_558_p2;
                ap_return_9 <= f_9_write_assign_fu_564_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                g0_reg_650 <= g_q0;
                g1_reg_655 <= g_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                g2_reg_670 <= g_q0;
                g3_reg_675 <= g_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                g4_reg_690 <= g_q0;
                g5_reg_695 <= g_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                g6_reg_710 <= g_q0;
                g7_reg_715 <= g_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state6))) then
                reg_270 <= grp_fu_255_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state8))) then
                reg_276 <= grp_fu_255_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_1438_reg_262 <= grp_fu_255_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                tmp_1442_reg_282 <= grp_fu_255_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                tmp_1443_reg_288 <= grp_fu_255_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
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
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    b_assign_cast_fu_442_p3 <= 
        ap_const_lv32_FFFFFFFF when (b(0) = '1') else 
        ap_const_lv32_0;
    f_0_write_assign_fu_510_p2 <= (x0_1_fu_450_p2 xor f_0_read);
    f_1_write_assign_fu_516_p2 <= (x1_1_fu_456_p2 xor f_1_read);
    f_2_write_assign_fu_522_p2 <= (x2_1_fu_462_p2 xor f_2_read);
    f_3_write_assign_fu_528_p2 <= (x3_1_fu_468_p2 xor f_3_read);
    f_4_write_assign_fu_534_p2 <= (x4_1_fu_474_p2 xor f_4_read);
    f_5_write_assign_fu_540_p2 <= (x5_1_fu_480_p2 xor f_5_read);
    f_6_write_assign_fu_546_p2 <= (x6_1_fu_486_p2 xor f_6_read);
    f_7_write_assign_fu_552_p2 <= (x7_1_fu_492_p2 xor f_7_read);
    f_8_write_assign_fu_558_p2 <= (x8_1_fu_498_p2 xor f_8_read);
    f_9_write_assign_fu_564_p2 <= (x9_1_fu_504_p2 xor f_9_read);

    g_address0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state5, ap_CS_fsm_state9, tmp_1438_cast_fu_334_p1, tmp_1440_cast_fu_350_p1, tmp_1442_cast_fu_360_p1, tmp_1444_cast_fu_370_p1, tmp_1446_cast_fu_380_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            g_address0 <= tmp_1446_cast_fu_380_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            g_address0 <= tmp_1444_cast_fu_370_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            g_address0 <= tmp_1442_cast_fu_360_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            g_address0 <= tmp_1440_cast_fu_350_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            g_address0 <= tmp_1438_cast_fu_334_p1(12 - 1 downto 0);
        else 
            g_address0 <= "XXXXXXXXXXXX";
        end if; 
    end process;


    g_address1_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state5, ap_CS_fsm_state9, tmp_1439_cast_fu_345_p1, tmp_1441_cast_fu_355_p1, tmp_1443_cast_fu_365_p1, tmp_1445_cast_fu_375_p1, tmp_1447_cast_fu_385_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            g_address1 <= tmp_1447_cast_fu_385_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            g_address1 <= tmp_1445_cast_fu_375_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            g_address1 <= tmp_1443_cast_fu_365_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            g_address1 <= tmp_1441_cast_fu_355_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            g_address1 <= tmp_1439_cast_fu_345_p1(12 - 1 downto 0);
        else 
            g_address1 <= "XXXXXXXXXXXX";
        end if; 
    end process;


    g_ce0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            g_ce0 <= ap_const_logic_1;
        else 
            g_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    g_ce1_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            g_ce1 <= ap_const_logic_1;
        else 
            g_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_255_p0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state6, ap_CS_fsm_state3, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state9, p_shl_cast_fu_314_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            grp_fu_255_p0 <= ap_const_lv12_9;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            grp_fu_255_p0 <= ap_const_lv12_8;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            grp_fu_255_p0 <= ap_const_lv12_7;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            grp_fu_255_p0 <= ap_const_lv12_6;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_fu_255_p0 <= ap_const_lv12_5;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_255_p0 <= ap_const_lv12_4;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_255_p0 <= ap_const_lv12_3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_fu_255_p0 <= ap_const_lv12_2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_255_p0 <= p_shl_cast_fu_314_p1;
        else 
            grp_fu_255_p0 <= "XXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_255_p1_assign_proc : process(ap_CS_fsm_state1, tmp_1438_reg_262, ap_CS_fsm_state2, ap_CS_fsm_state6, ap_CS_fsm_state3, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state9, p_shl1_cast_fu_329_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            grp_fu_255_p1 <= tmp_1438_reg_262;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_255_p1 <= p_shl1_cast_fu_329_p1;
        else 
            grp_fu_255_p1 <= "XXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_255_p2 <= std_logic_vector(unsigned(grp_fu_255_p0) + unsigned(grp_fu_255_p1));
    p_shl1_cast_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1437_fu_319_p4),12));
    p_shl_cast_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_304_p4),12));
    tmp_1437_fu_319_p4 <= ((tmp_7562 & u_xy2d_offset) & ap_const_lv1_0);
    tmp_1438_cast_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1438_reg_262),64));
    tmp_1439_cast_fu_345_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1439_fu_339_p2),64));
    tmp_1439_fu_339_p2 <= (tmp_1438_reg_262 or ap_const_lv12_1);
    tmp_1440_cast_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reg_270),64));
    tmp_1441_cast_fu_355_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reg_276),64));
    tmp_1442_cast_fu_360_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1442_reg_282),64));
    tmp_1443_cast_fu_365_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1443_reg_288),64));
    tmp_1444_cast_fu_370_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reg_270),64));
    tmp_1445_cast_fu_375_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reg_276),64));
    tmp_1446_cast_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reg_276),64));
    tmp_1447_cast_fu_385_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_255_p2),64));
    tmp_fu_304_p4 <= ((tmp_7562 & u_xy2d_offset) & ap_const_lv3_0);
    x0_1_fu_450_p2 <= (x0_fu_390_p2 and b_assign_cast_fu_442_p3);
    x0_fu_390_p2 <= (g0_reg_650 xor f_0_read);
    x1_1_fu_456_p2 <= (x1_fu_395_p2 and b_assign_cast_fu_442_p3);
    x1_fu_395_p2 <= (g1_reg_655 xor f_1_read);
    x2_1_fu_462_p2 <= (x2_fu_400_p2 and b_assign_cast_fu_442_p3);
    x2_fu_400_p2 <= (g2_reg_670 xor f_2_read);
    x3_1_fu_468_p2 <= (x3_fu_405_p2 and b_assign_cast_fu_442_p3);
    x3_fu_405_p2 <= (g3_reg_675 xor f_3_read);
    x4_1_fu_474_p2 <= (x4_fu_410_p2 and b_assign_cast_fu_442_p3);
    x4_fu_410_p2 <= (g4_reg_690 xor f_4_read);
    x5_1_fu_480_p2 <= (x5_fu_415_p2 and b_assign_cast_fu_442_p3);
    x5_fu_415_p2 <= (g5_reg_695 xor f_5_read);
    x6_1_fu_486_p2 <= (x6_fu_420_p2 and b_assign_cast_fu_442_p3);
    x6_fu_420_p2 <= (g6_reg_710 xor f_6_read);
    x7_1_fu_492_p2 <= (x7_fu_425_p2 and b_assign_cast_fu_442_p3);
    x7_fu_425_p2 <= (g7_reg_715 xor f_7_read);
    x8_1_fu_498_p2 <= (x8_fu_430_p2 and b_assign_cast_fu_442_p3);
    x8_fu_430_p2 <= (g_q0 xor f_8_read);
    x9_1_fu_504_p2 <= (x9_fu_436_p2 and b_assign_cast_fu_442_p3);
    x9_fu_436_p2 <= (g_q1 xor f_9_read);
end behav;