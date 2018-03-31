-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity contact_discovery_AXILiteS_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 16;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    -- axi4 lite slave signals
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    -- user signals
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    operation             :out  STD_LOGIC_VECTOR(31 downto 0);
    operation_ap_vld      :out  STD_LOGIC;
    contact_in_address0   :in   STD_LOGIC_VECTOR(5 downto 0);
    contact_in_ce0        :in   STD_LOGIC;
    contact_in_q0         :out  STD_LOGIC_VECTOR(7 downto 0);
    database_in_address0  :in   STD_LOGIC_VECTOR(5 downto 0);
    database_in_ce0       :in   STD_LOGIC;
    database_in_q0        :out  STD_LOGIC_VECTOR(7 downto 0);
    matched_out_address0  :in   STD_LOGIC_VECTOR(13 downto 0);
    matched_out_ce0       :in   STD_LOGIC;
    matched_out_we0       :in   STD_LOGIC;
    matched_out_d0        :in   STD_LOGIC_VECTOR(0 downto 0);
    matched_finished      :in   STD_LOGIC_VECTOR(31 downto 0);
    error_out             :in   STD_LOGIC_VECTOR(31 downto 0);
    database_size_out     :in   STD_LOGIC_VECTOR(31 downto 0);
    contacts_size_out     :in   STD_LOGIC_VECTOR(31 downto 0)
);
end entity contact_discovery_AXILiteS_s_axi;

-- ------------------------Address Info-------------------
-- 0x0000 : Control signals
--          bit 0  - ap_start (Read/Write/COH)
--          bit 1  - ap_done (Read/COR)
--          bit 2  - ap_idle (Read)
--          bit 3  - ap_ready (Read)
--          bit 7  - auto_restart (Read/Write)
--          others - reserved
-- 0x0004 : Global Interrupt Enable Register
--          bit 0  - Global Interrupt Enable (Read/Write)
--          others - reserved
-- 0x0008 : IP Interrupt Enable Register (Read/Write)
--          bit 0  - Channel 0 (ap_done)
--          bit 1  - Channel 1 (ap_ready)
--          others - reserved
-- 0x000c : IP Interrupt Status Register (Read/TOW)
--          bit 0  - Channel 0 (ap_done)
--          bit 1  - Channel 1 (ap_ready)
--          others - reserved
-- 0x0010 : Data signal of operation
--          bit 31~0 - operation[31:0] (Read/Write)
-- 0x0014 : Control signal of operation
--          bit 0  - operation_ap_vld (Read/Write/SC)
--          others - reserved
-- 0x8000 : Data signal of matched_finished
--          bit 31~0 - matched_finished[31:0] (Read)
-- 0x8004 : reserved
-- 0x8008 : Data signal of error_out
--          bit 31~0 - error_out[31:0] (Read)
-- 0x800c : reserved
-- 0x8010 : Data signal of database_size_out
--          bit 31~0 - database_size_out[31:0] (Read)
-- 0x8014 : reserved
-- 0x8018 : Data signal of contacts_size_out
--          bit 31~0 - contacts_size_out[31:0] (Read)
-- 0x801c : reserved
-- 0x0040 ~
-- 0x007f : Memory 'contact_in' (64 * 8b)
--          Word n : bit [ 7: 0] - contact_in[4n]
--                   bit [15: 8] - contact_in[4n+1]
--                   bit [23:16] - contact_in[4n+2]
--                   bit [31:24] - contact_in[4n+3]
-- 0x0080 ~
-- 0x00bf : Memory 'database_in' (64 * 8b)
--          Word n : bit [ 7: 0] - database_in[4n]
--                   bit [15: 8] - database_in[4n+1]
--                   bit [23:16] - database_in[4n+2]
--                   bit [31:24] - database_in[4n+3]
-- 0x4000 ~
-- 0x7fff : Memory 'matched_out' (15000 * 1b)
--          Word n : bit [ 0: 0] - matched_out[4n]
--                   bit [ 8: 8] - matched_out[4n+1]
--                   bit [16:16] - matched_out[4n+2]
--                   bit [24:24] - matched_out[4n+3]
--                   others      - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of contact_discovery_AXILiteS_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                  : INTEGER := 16#0000#;
    constant ADDR_GIE                      : INTEGER := 16#0004#;
    constant ADDR_IER                      : INTEGER := 16#0008#;
    constant ADDR_ISR                      : INTEGER := 16#000c#;
    constant ADDR_OPERATION_DATA_0         : INTEGER := 16#0010#;
    constant ADDR_OPERATION_CTRL           : INTEGER := 16#0014#;
    constant ADDR_MATCHED_FINISHED_DATA_0  : INTEGER := 16#8000#;
    constant ADDR_MATCHED_FINISHED_CTRL    : INTEGER := 16#8004#;
    constant ADDR_ERROR_OUT_DATA_0         : INTEGER := 16#8008#;
    constant ADDR_ERROR_OUT_CTRL           : INTEGER := 16#800c#;
    constant ADDR_DATABASE_SIZE_OUT_DATA_0 : INTEGER := 16#8010#;
    constant ADDR_DATABASE_SIZE_OUT_CTRL   : INTEGER := 16#8014#;
    constant ADDR_CONTACTS_SIZE_OUT_DATA_0 : INTEGER := 16#8018#;
    constant ADDR_CONTACTS_SIZE_OUT_CTRL   : INTEGER := 16#801c#;
    constant ADDR_CONTACT_IN_BASE          : INTEGER := 16#0040#;
    constant ADDR_CONTACT_IN_HIGH          : INTEGER := 16#007f#;
    constant ADDR_DATABASE_IN_BASE         : INTEGER := 16#0080#;
    constant ADDR_DATABASE_IN_HIGH         : INTEGER := 16#00bf#;
    constant ADDR_MATCHED_OUT_BASE         : INTEGER := 16#4000#;
    constant ADDR_MATCHED_OUT_HIGH         : INTEGER := 16#7fff#;
    constant ADDR_BITS         : INTEGER := 16;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_operation       : UNSIGNED(31 downto 0) := (others => '0');
    signal int_operation_ap_vld : STD_LOGIC := '0';
    signal int_matched_finished : UNSIGNED(31 downto 0) := (others => '0');
    signal int_error_out       : UNSIGNED(31 downto 0) := (others => '0');
    signal int_database_size_out : UNSIGNED(31 downto 0) := (others => '0');
    signal int_contacts_size_out : UNSIGNED(31 downto 0) := (others => '0');
    -- memory signals
    signal int_contact_in_address0 : UNSIGNED(3 downto 0);
    signal int_contact_in_ce0  : STD_LOGIC;
    signal int_contact_in_we0  : STD_LOGIC;
    signal int_contact_in_be0  : UNSIGNED(3 downto 0);
    signal int_contact_in_d0   : UNSIGNED(31 downto 0);
    signal int_contact_in_q0   : UNSIGNED(31 downto 0);
    signal int_contact_in_address1 : UNSIGNED(3 downto 0);
    signal int_contact_in_ce1  : STD_LOGIC;
    signal int_contact_in_we1  : STD_LOGIC;
    signal int_contact_in_be1  : UNSIGNED(3 downto 0);
    signal int_contact_in_d1   : UNSIGNED(31 downto 0);
    signal int_contact_in_q1   : UNSIGNED(31 downto 0);
    signal int_contact_in_read : STD_LOGIC;
    signal int_contact_in_write : STD_LOGIC;
    signal int_contact_in_shift : UNSIGNED(1 downto 0);
    signal int_database_in_address0 : UNSIGNED(3 downto 0);
    signal int_database_in_ce0 : STD_LOGIC;
    signal int_database_in_we0 : STD_LOGIC;
    signal int_database_in_be0 : UNSIGNED(3 downto 0);
    signal int_database_in_d0  : UNSIGNED(31 downto 0);
    signal int_database_in_q0  : UNSIGNED(31 downto 0);
    signal int_database_in_address1 : UNSIGNED(3 downto 0);
    signal int_database_in_ce1 : STD_LOGIC;
    signal int_database_in_we1 : STD_LOGIC;
    signal int_database_in_be1 : UNSIGNED(3 downto 0);
    signal int_database_in_d1  : UNSIGNED(31 downto 0);
    signal int_database_in_q1  : UNSIGNED(31 downto 0);
    signal int_database_in_read : STD_LOGIC;
    signal int_database_in_write : STD_LOGIC;
    signal int_database_in_shift : UNSIGNED(1 downto 0);
    signal int_matched_out_address0 : UNSIGNED(11 downto 0);
    signal int_matched_out_ce0 : STD_LOGIC;
    signal int_matched_out_we0 : STD_LOGIC;
    signal int_matched_out_be0 : UNSIGNED(3 downto 0);
    signal int_matched_out_d0  : UNSIGNED(31 downto 0);
    signal int_matched_out_q0  : UNSIGNED(31 downto 0);
    signal int_matched_out_address1 : UNSIGNED(11 downto 0);
    signal int_matched_out_ce1 : STD_LOGIC;
    signal int_matched_out_we1 : STD_LOGIC;
    signal int_matched_out_be1 : UNSIGNED(3 downto 0);
    signal int_matched_out_d1  : UNSIGNED(31 downto 0);
    signal int_matched_out_q1  : UNSIGNED(31 downto 0);
    signal int_matched_out_read : STD_LOGIC;
    signal int_matched_out_write : STD_LOGIC;
    signal int_matched_out_shift : UNSIGNED(1 downto 0);

    component contact_discovery_AXILiteS_s_axi_ram is
        generic (
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk0    : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  STD_LOGIC;
            be0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            clk1    : in  STD_LOGIC;
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  STD_LOGIC;
            be1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component contact_discovery_AXILiteS_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
-- ----------------------- Instantiation------------------
-- int_contact_in
int_contact_in : contact_discovery_AXILiteS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_contact_in_address0,
     ce0      => int_contact_in_ce0,
     we0      => int_contact_in_we0,
     be0      => int_contact_in_be0,
     d0       => int_contact_in_d0,
     q0       => int_contact_in_q0,
     clk1     => ACLK,
     address1 => int_contact_in_address1,
     ce1      => int_contact_in_ce1,
     we1      => int_contact_in_we1,
     be1      => int_contact_in_be1,
     d1       => int_contact_in_d1,
     q1       => int_contact_in_q1);
-- int_database_in
int_database_in : contact_discovery_AXILiteS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 16,
     AWIDTH   => log2(16))
port map (
     clk0     => ACLK,
     address0 => int_database_in_address0,
     ce0      => int_database_in_ce0,
     we0      => int_database_in_we0,
     be0      => int_database_in_be0,
     d0       => int_database_in_d0,
     q0       => int_database_in_q0,
     clk1     => ACLK,
     address1 => int_database_in_address1,
     ce1      => int_database_in_ce1,
     we1      => int_database_in_we1,
     be1      => int_database_in_be1,
     d1       => int_database_in_d1,
     q1       => int_database_in_q1);
-- int_matched_out
int_matched_out : contact_discovery_AXILiteS_s_axi_ram
generic map (
     BYTES    => 4,
     DEPTH    => 3750,
     AWIDTH   => log2(3750))
port map (
     clk0     => ACLK,
     address0 => int_matched_out_address0,
     ce0      => int_matched_out_ce0,
     we0      => int_matched_out_we0,
     be0      => int_matched_out_be0,
     d0       => int_matched_out_d0,
     q0       => int_matched_out_q0,
     clk1     => ACLK,
     address1 => int_matched_out_address1,
     ce1      => int_matched_out_ce1,
     we1      => int_matched_out_we1,
     be1      => int_matched_out_be1,
     d1       => int_matched_out_d1,
     q1       => int_matched_out_q1);

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) and (int_contact_in_read = '0') and (int_database_in_read = '0') and (int_matched_out_read = '0') else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data <= (7 => int_auto_restart, 3 => int_ap_ready, 2 => int_ap_idle, 1 => int_ap_done, 0 => int_ap_start, others => '0');
                    when ADDR_GIE =>
                        rdata_data <= (0 => int_gie, others => '0');
                    when ADDR_IER =>
                        rdata_data <= (1 => int_ier(1), 0 => int_ier(0), others => '0');
                    when ADDR_ISR =>
                        rdata_data <= (1 => int_isr(1), 0 => int_isr(0), others => '0');
                    when ADDR_OPERATION_DATA_0 =>
                        rdata_data <= RESIZE(int_operation(31 downto 0), 32);
                    when ADDR_OPERATION_CTRL =>
                        rdata_data <= (0 => int_operation_ap_vld, others => '0');
                    when ADDR_MATCHED_FINISHED_DATA_0 =>
                        rdata_data <= RESIZE(int_matched_finished(31 downto 0), 32);
                    when ADDR_ERROR_OUT_DATA_0 =>
                        rdata_data <= RESIZE(int_error_out(31 downto 0), 32);
                    when ADDR_DATABASE_SIZE_OUT_DATA_0 =>
                        rdata_data <= RESIZE(int_database_size_out(31 downto 0), 32);
                    when ADDR_CONTACTS_SIZE_OUT_DATA_0 =>
                        rdata_data <= RESIZE(int_contacts_size_out(31 downto 0), 32);
                    when others =>
                        rdata_data <= (others => '0');
                    end case;
                elsif (int_contact_in_read = '1') then
                    rdata_data <= int_contact_in_q1;
                elsif (int_database_in_read = '1') then
                    rdata_data <= int_database_in_q1;
                elsif (int_matched_out_read = '1') then
                    rdata_data <= int_matched_out_q1;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    int_ap_idle          <= ap_idle;
    int_ap_ready         <= ap_ready;
    operation            <= STD_LOGIC_VECTOR(int_operation);
    operation_ap_vld     <= int_operation_ap_vld;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (int_ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OPERATION_DATA_0) then
                    int_operation(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_operation(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_operation_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs  = '1' and waddr = ADDR_OPERATION_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_operation_ap_vld <= '1';
                else
                    int_operation_ap_vld <= '0'; -- self clear
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_matched_finished <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_matched_finished <= UNSIGNED(matched_finished); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_error_out <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_error_out <= UNSIGNED(error_out); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_database_size_out <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_database_size_out <= UNSIGNED(database_size_out); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_contacts_size_out <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_contacts_size_out <= UNSIGNED(contacts_size_out); -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------
    -- contact_in
    int_contact_in_address0 <= SHIFT_RIGHT(UNSIGNED(contact_in_address0), 2)(3 downto 0);
    int_contact_in_ce0   <= contact_in_ce0;
    int_contact_in_we0   <= '0';
    int_contact_in_be0   <= (others => '0');
    int_contact_in_d0    <= (others => '0');
    contact_in_q0        <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_contact_in_q0, TO_INTEGER(int_contact_in_shift) * 8)(7 downto 0));
    int_contact_in_address1 <= raddr(5 downto 2) when ar_hs = '1' else waddr(5 downto 2);
    int_contact_in_ce1   <= '1' when ar_hs = '1' or (int_contact_in_write = '1' and WVALID  = '1') else '0';
    int_contact_in_we1   <= '1' when int_contact_in_write = '1' and WVALID = '1' else '0';
    int_contact_in_be1   <= UNSIGNED(WSTRB);
    int_contact_in_d1    <= UNSIGNED(WDATA);
    -- database_in
    int_database_in_address0 <= SHIFT_RIGHT(UNSIGNED(database_in_address0), 2)(3 downto 0);
    int_database_in_ce0  <= database_in_ce0;
    int_database_in_we0  <= '0';
    int_database_in_be0  <= (others => '0');
    int_database_in_d0   <= (others => '0');
    database_in_q0       <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_database_in_q0, TO_INTEGER(int_database_in_shift) * 8)(7 downto 0));
    int_database_in_address1 <= raddr(5 downto 2) when ar_hs = '1' else waddr(5 downto 2);
    int_database_in_ce1  <= '1' when ar_hs = '1' or (int_database_in_write = '1' and WVALID  = '1') else '0';
    int_database_in_we1  <= '1' when int_database_in_write = '1' and WVALID = '1' else '0';
    int_database_in_be1  <= UNSIGNED(WSTRB);
    int_database_in_d1   <= UNSIGNED(WDATA);
    -- matched_out
    int_matched_out_address0 <= SHIFT_RIGHT(UNSIGNED(matched_out_address0), 2)(11 downto 0);
    int_matched_out_ce0  <= matched_out_ce0;
    int_matched_out_we0  <= matched_out_we0;
    int_matched_out_be0  <= SHIFT_LEFT(TO_UNSIGNED(1, 4), TO_INTEGER(UNSIGNED(matched_out_address0(1 downto 0))));
    int_matched_out_d0   <= UNSIGNED(RESIZE(UNSIGNED(matched_out_d0), 8)) & UNSIGNED(RESIZE(UNSIGNED(matched_out_d0), 8)) & UNSIGNED(RESIZE(UNSIGNED(matched_out_d0), 8)) & UNSIGNED(RESIZE(UNSIGNED(matched_out_d0), 8));
    int_matched_out_address1 <= raddr(13 downto 2) when ar_hs = '1' else waddr(13 downto 2);
    int_matched_out_ce1  <= '1' when ar_hs = '1' or (int_matched_out_write = '1' and WVALID  = '1') else '0';
    int_matched_out_we1  <= '1' when int_matched_out_write = '1' and WVALID = '1' else '0';
    int_matched_out_be1  <= UNSIGNED(WSTRB);
    int_matched_out_d1   <= UNSIGNED(WDATA);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_contact_in_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_CONTACT_IN_BASE and raddr <= ADDR_CONTACT_IN_HIGH) then
                    int_contact_in_read <= '1';
                else
                    int_contact_in_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_contact_in_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_CONTACT_IN_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_CONTACT_IN_HIGH) then
                    int_contact_in_write <= '1';
                elsif (WVALID = '1') then
                    int_contact_in_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (contact_in_ce0 = '1') then
                    int_contact_in_shift <= UNSIGNED(contact_in_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_database_in_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_DATABASE_IN_BASE and raddr <= ADDR_DATABASE_IN_HIGH) then
                    int_database_in_read <= '1';
                else
                    int_database_in_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_database_in_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_DATABASE_IN_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_DATABASE_IN_HIGH) then
                    int_database_in_write <= '1';
                elsif (WVALID = '1') then
                    int_database_in_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (database_in_ce0 = '1') then
                    int_database_in_shift <= UNSIGNED(database_in_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_matched_out_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_MATCHED_OUT_BASE and raddr <= ADDR_MATCHED_OUT_HIGH) then
                    int_matched_out_read <= '1';
                else
                    int_matched_out_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_matched_out_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_MATCHED_OUT_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_MATCHED_OUT_HIGH) then
                    int_matched_out_write <= '1';
                elsif (WVALID = '1') then
                    int_matched_out_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (matched_out_ce0 = '1') then
                    int_matched_out_shift <= UNSIGNED(matched_out_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;


end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity contact_discovery_AXILiteS_s_axi_ram is
    generic (
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk0    : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  STD_LOGIC;
        be0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        clk1    : in  STD_LOGIC;
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  STD_LOGIC;
        be1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity contact_discovery_AXILiteS_s_axi_ram;

architecture behave of contact_discovery_AXILiteS_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
          if (address0 > DEPTH-1) then
              address0_tmp <= (others => '0');
          else
              address0_tmp <= address0;
          end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
          if (address1 > DEPTH-1) then
              address1_tmp <= (others => '0');
          else
              address1_tmp <= address1;
          end if;
    --synthesis translate_on
    end process;

    --read port 0
    process (clk0) begin
        if (clk0'event and clk0 = '1') then
            if (ce0 = '1') then
                q0 <= mem(to_integer(address0_tmp));
            end if;
        end if;
    end process;

    --read port 1
    process (clk1) begin
        if (clk1'event and clk1 = '1') then
            if (ce1 = '1') then
                q1 <= mem(to_integer(address1_tmp));
            end if;
        end if;
    end process;

    gen_write : for i in 0 to BYTES - 1 generate
    begin
        --write port 0
        process (clk0)
        begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1' and we0 = '1' and be0(i) = '1') then
                    mem(to_integer(address0_tmp))(8*i+7 downto 8*i) := d0(8*i+7 downto 8*i);
                end if;
            end if;
        end process;

        --write port 1
        process (clk1)
        begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1' and we1 = '1' and be1(i) = '1') then
                    mem(to_integer(address1_tmp))(8*i+7 downto 8*i) := d1(8*i+7 downto 8*i);
                end if;
            end if;
        end process;

    end generate;

end architecture behave;


