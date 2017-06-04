-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity crypto_sign_ed255vdy_rom is 
    generic(
             dwidth     : integer := 32; 
             awidth     : integer := 5; 
             mem_size    : integer := 32
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of crypto_sign_ed255vdy_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000000000000000000001011001", 
    1 => "00000000000000000000000011110001", 
    2 => "00000000000000000000000010110010", 
    3 => "00000000000000000000000000100110", 
    4 => "00000000000000000000000010010100", 
    5 => "00000000000000000000000010011011", 
    6 => "00000000000000000000000011010110", 
    7 => "00000000000000000000000011101011", 
    8 => "00000000000000000000000001010110", 
    9 => "00000000000000000000000010110001", 
    10 => "00000000000000000000000010000011", 
    11 => "00000000000000000000000010000010", 
    12 => "00000000000000000000000010011010", 
    13 => "00000000000000000000000000010100", 
    14 => "00000000000000000000000011100000", 
    15 => "00000000000000000000000000000000", 
    16 => "00000000000000000000000000110000", 
    17 => "00000000000000000000000011010001", 
    18 => "00000000000000000000000011110011", 
    19 => "00000000000000000000000011101110", 
    20 => "00000000000000000000000011110010", 
    21 => "00000000000000000000000010000000", 
    22 => "00000000000000000000000010001110", 
    23 => "00000000000000000000000000011001", 
    24 => "00000000000000000000000011100111", 
    25 => "00000000000000000000000011111100", 
    26 => "00000000000000000000000011011111", 
    27 => "00000000000000000000000001010110", 
    28 => "00000000000000000000000011011100", 
    29 => "00000000000000000000000011011001", 
    30 => "00000000000000000000000000000110", 
    31 => "00000000000000000000000000100100" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "block";

attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity crypto_sign_ed255vdy is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of crypto_sign_ed255vdy is
    component crypto_sign_ed255vdy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    crypto_sign_ed255vdy_rom_U :  component crypto_sign_ed255vdy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


