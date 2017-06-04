-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fe_copy is
port (
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


architecture behav of fe_copy is 
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';



begin



    ap_return_0 <= f_0_read;
    ap_return_1 <= f_1_read;
    ap_return_2 <= f_2_read;
    ap_return_3 <= f_3_read;
    ap_return_4 <= f_4_read;
    ap_return_5 <= f_5_read;
    ap_return_6 <= f_6_read;
    ap_return_7 <= f_7_read;
    ap_return_8 <= f_8_read;
    ap_return_9 <= f_9_read;
end behav;