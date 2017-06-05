--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
--Date        : Mon Jun 05 19:38:37 2017
--Host        : Pract2 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target Ethernet_wrapper.bd
--Design      : Ethernet_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Ethernet_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    mdio_rtl_mdc : out STD_LOGIC;
    mdio_rtl_mdio_io : inout STD_LOGIC;
    reset_rtl : out STD_LOGIC;
    rgmii_rtl_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rtl_rx_ctl : in STD_LOGIC;
    rgmii_rtl_rxc : in STD_LOGIC;
    rgmii_rtl_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rtl_tx_ctl : out STD_LOGIC;
    rgmii_rtl_txc : out STD_LOGIC
  );
end Ethernet_wrapper;

architecture STRUCTURE of Ethernet_wrapper is
  component Ethernet is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    mdio_rtl_mdc : out STD_LOGIC;
    mdio_rtl_mdio_i : in STD_LOGIC;
    mdio_rtl_mdio_o : out STD_LOGIC;
    mdio_rtl_mdio_t : out STD_LOGIC;
    rgmii_rtl_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rtl_rx_ctl : in STD_LOGIC;
    rgmii_rtl_rxc : in STD_LOGIC;
    rgmii_rtl_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rtl_tx_ctl : out STD_LOGIC;
    rgmii_rtl_txc : out STD_LOGIC;
    reset_rtl : out STD_LOGIC
  );
  end component Ethernet;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal mdio_rtl_mdio_i : STD_LOGIC;
  signal mdio_rtl_mdio_o : STD_LOGIC;
  signal mdio_rtl_mdio_t : STD_LOGIC;
begin
Ethernet_i: component Ethernet
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      mdio_rtl_mdc => mdio_rtl_mdc,
      mdio_rtl_mdio_i => mdio_rtl_mdio_i,
      mdio_rtl_mdio_o => mdio_rtl_mdio_o,
      mdio_rtl_mdio_t => mdio_rtl_mdio_t,
      reset_rtl => reset_rtl,
      rgmii_rtl_rd(3 downto 0) => rgmii_rtl_rd(3 downto 0),
      rgmii_rtl_rx_ctl => rgmii_rtl_rx_ctl,
      rgmii_rtl_rxc => rgmii_rtl_rxc,
      rgmii_rtl_td(3 downto 0) => rgmii_rtl_td(3 downto 0),
      rgmii_rtl_tx_ctl => rgmii_rtl_tx_ctl,
      rgmii_rtl_txc => rgmii_rtl_txc
    );
mdio_rtl_mdio_iobuf: component IOBUF
     port map (
      I => mdio_rtl_mdio_o,
      IO => mdio_rtl_mdio_io,
      O => mdio_rtl_mdio_i,
      T => mdio_rtl_mdio_t
    );
end STRUCTURE;
