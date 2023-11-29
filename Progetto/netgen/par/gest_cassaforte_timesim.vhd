--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20160913
--  \   \         Application: netgen
--  /   /         Filename: gest_cassaforte_timesim.vhd
-- /___/   /\     Timestamp: Sat Dec 21 22:58:03 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf gest_cassaforte.pcf -rpw 100 -tpw 0 -ar Structure -tm gest_cassaforte -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim gest_cassaforte.ncd gest_cassaforte_timesim.vhd 
-- Device	: 6slx4csg225-3 (PRODUCTION 1.23 2016-11-22)
-- Input file	: gest_cassaforte.ncd
-- Output file	: /home/ise/Xilinx_Project/cassaforte/netgen/par/gest_cassaforte_timesim.vhd
-- # of Entities	: 1
-- Design Name	: gest_cassaforte
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity gest_cassaforte is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    s_key_1 : in STD_LOGIC := 'X'; 
    s_key_2 : in STD_LOGIC := 'X'; 
    sens_porta : in STD_LOGIC := 'X'; 
    apertura : out STD_LOGIC; 
    timeo : out STD_LOGIC; 
    key_1 : in STD_LOGIC_VECTOR ( 0 to 3 ); 
    key_2 : in STD_LOGIC_VECTOR ( 0 to 3 ) 
  );
end gest_cassaforte;

architecture Structure of gest_cassaforte is
  signal c_s_FSM_FFd1_140 : STD_LOGIC; 
  signal s_key_1_IBUF_0 : STD_LOGIC; 
  signal s_key_2_IBUF_0 : STD_LOGIC; 
  signal count_o_143 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal sens_porta_IBUF_0 : STD_LOGIC; 
  signal key_1_0_IBUF_0 : STD_LOGIC; 
  signal key_1_1_IBUF_0 : STD_LOGIC; 
  signal key_1_2_IBUF_0 : STD_LOGIC; 
  signal key_1_3_IBUF_0 : STD_LOGIC; 
  signal key_2_0_IBUF_0 : STD_LOGIC; 
  signal key_2_1_IBUF_0 : STD_LOGIC; 
  signal key_2_2_IBUF_0 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal key_2_3_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal c_s_FSM_FFd2_159 : STD_LOGIC; 
  signal c_s_FSM_FFd1_In1_160 : STD_LOGIC; 
  signal ric1_1_o1 : STD_LOGIC; 
  signal ric1_2_o1 : STD_LOGIC; 
  signal GND_3_o_PWR_3_o_OR_18_o1 : STD_LOGIC; 
  signal s_key_1_IBUF_3 : STD_LOGIC; 
  signal s_key_2_IBUF_6 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_11 : STD_LOGIC; 
  signal sens_porta_IBUF_14 : STD_LOGIC; 
  signal key_1_0_IBUF_17 : STD_LOGIC; 
  signal key_1_1_IBUF_20 : STD_LOGIC; 
  signal key_1_2_IBUF_23 : STD_LOGIC; 
  signal key_1_3_IBUF_26 : STD_LOGIC; 
  signal key_2_0_IBUF_29 : STD_LOGIC; 
  signal key_2_1_IBUF_32 : STD_LOGIC; 
  signal key_2_2_IBUF_35 : STD_LOGIC; 
  signal rst_IBUF_38 : STD_LOGIC; 
  signal key_2_3_IBUF_41 : STD_LOGIC; 
  signal count_En_GND_4_o_MUX_14_o : STD_LOGIC; 
  signal c_s_FSM_FFd1_In : STD_LOGIC; 
  signal c_s_FSM_FFd2_In : STD_LOGIC; 
  signal count_c_3_rstpot_121 : STD_LOGIC; 
  signal count_c_0_rstpot_112 : STD_LOGIC; 
  signal count_c_1_rstpot_104 : STD_LOGIC; 
  signal count_c_2_rstpot_96 : STD_LOGIC; 
  signal NlwBufferSignal_apertura_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_timeo_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_count_o_CLK : STD_LOGIC; 
  signal NlwBufferSignal_c_s_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_c_s_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_c_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_c_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_c_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_count_c_0_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal count_c : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  apertura_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_apertura_OBUF_I,
      O => apertura
    );
  s_key_1_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_key_1_IBUF_3,
      I => s_key_1
    );
  ProtoComp1_IMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_key_1_IBUF_3,
      O => s_key_1_IBUF_0
    );
  s_key_2_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_key_2_IBUF_6,
      I => s_key_2
    );
  ProtoComp1_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_key_2_IBUF_6,
      O => s_key_2_IBUF_0
    );
  timeo_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => NlwBufferSignal_timeo_OBUF_I,
      O => timeo
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_11,
      I => clk
    );
  ProtoComp1_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_11,
      O => clk_BUFGP_IBUFG_0
    );
  sens_porta_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      O => sens_porta_IBUF_14,
      I => sens_porta
    );
  ProtoComp1_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 202 ps
    )
    port map (
      I => sens_porta_IBUF_14,
      O => sens_porta_IBUF_0
    );
  key_1_0_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      O => key_1_0_IBUF_17,
      I => key_1(0)
    );
  ProtoComp1_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 202 ps
    )
    port map (
      I => key_1_0_IBUF_17,
      O => key_1_0_IBUF_0
    );
  key_1_1_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => key_1_1_IBUF_20,
      I => key_1(1)
    );
  ProtoComp1_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => key_1_1_IBUF_20,
      O => key_1_1_IBUF_0
    );
  key_1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => key_1_2_IBUF_23,
      I => key_1(2)
    );
  ProtoComp1_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => key_1_2_IBUF_23,
      O => key_1_2_IBUF_0
    );
  key_1_3_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => key_1_3_IBUF_26,
      I => key_1(3)
    );
  ProtoComp1_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => key_1_3_IBUF_26,
      O => key_1_3_IBUF_0
    );
  key_2_0_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => key_2_0_IBUF_29,
      I => key_2(0)
    );
  ProtoComp1_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => key_2_0_IBUF_29,
      O => key_2_0_IBUF_0
    );
  key_2_1_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      O => key_2_1_IBUF_32,
      I => key_2(1)
    );
  ProtoComp1_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 202 ps
    )
    port map (
      I => key_2_1_IBUF_32,
      O => key_2_1_IBUF_0
    );
  key_2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      O => key_2_2_IBUF_35,
      I => key_2(2)
    );
  ProtoComp1_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 202 ps
    )
    port map (
      I => key_2_2_IBUF_35,
      O => key_2_2_IBUF_0
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_38,
      I => rst
    );
  ProtoComp1_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_38,
      O => rst_IBUF_0
    );
  key_2_3_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      O => key_2_3_IBUF_41,
      I => key_2(3)
    );
  ProtoComp1_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 202 ps
    )
    port map (
      I => key_2_3_IBUF_41,
      O => key_2_3_IBUF_0
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  ric1_2_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => X"0303030300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => key_2_0_IBUF_0,
      ADR2 => key_2_3_IBUF_0,
      ADR5 => s_key_2_IBUF_0,
      O => ric1_2_o1
    );
  c_s_FSM_FFd1_In11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => X"9429A5A5CC33FFFF"
    )
    port map (
      ADR5 => ric1_1_o1,
      ADR4 => ric1_2_o1,
      ADR2 => key_1_1_IBUF_0,
      ADR0 => key_1_2_IBUF_0,
      ADR1 => key_2_1_IBUF_0,
      ADR3 => key_2_2_IBUF_0,
      O => c_s_FSM_FFd1_In1_160
    );
  count_o : X_SFF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_o_CLK,
      I => count_En_GND_4_o_MUX_14_o,
      O => count_o_143,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_En_GND_4_o_MUX_14_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"00000000C0C08080"
    )
    port map (
      ADR3 => '1',
      ADR4 => count_c(2),
      ADR0 => count_c(1),
      ADR1 => count_c(3),
      ADR2 => c_s_FSM_FFd2_159,
      ADR5 => c_s_FSM_FFd1_140,
      O => count_En_GND_4_o_MUX_14_o
    );
  c_s_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_c_s_FSM_FFd2_CLK,
      I => c_s_FSM_FFd2_In,
      O => c_s_FSM_FFd2_159,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  c_s_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"3330333000000303"
    )
    port map (
      ADR0 => '1',
      ADR4 => c_s_FSM_FFd1_In1_160,
      ADR3 => GND_3_o_PWR_3_o_OR_18_o1,
      ADR5 => sens_porta_IBUF_0,
      ADR1 => count_o_143,
      ADR2 => c_s_FSM_FFd1_140,
      O => c_s_FSM_FFd2_In
    );
  GND_3_o_PWR_3_o_OR_18_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"0000200040000000"
    )
    port map (
      ADR2 => ric1_1_o1,
      ADR3 => ric1_2_o1,
      ADR5 => key_1_1_IBUF_0,
      ADR1 => key_1_2_IBUF_0,
      ADR4 => key_2_1_IBUF_0,
      ADR0 => key_2_2_IBUF_0,
      O => GND_3_o_PWR_3_o_OR_18_o1
    );
  c_s_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_c_s_FSM_FFd1_CLK,
      I => c_s_FSM_FFd1_In,
      O => c_s_FSM_FFd1_140,
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  c_s_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => X"00FF0000CCFFE0C0"
    )
    port map (
      ADR0 => c_s_FSM_FFd1_In1_160,
      ADR2 => GND_3_o_PWR_3_o_OR_18_o1,
      ADR1 => sens_porta_IBUF_0,
      ADR4 => c_s_FSM_FFd1_140,
      ADR5 => count_o_143,
      ADR3 => c_s_FSM_FFd2_159,
      O => c_s_FSM_FFd1_In
    );
  ric1_1_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => X"00000F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => key_1_0_IBUF_0,
      ADR2 => key_1_3_IBUF_0,
      ADR5 => s_key_1_IBUF_0,
      O => ric1_1_o1
    );
  count_c_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_c_3_CLK,
      I => count_c_3_rstpot_121,
      O => count_c(3),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_c_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => X"0F0F000008000000"
    )
    port map (
      ADR1 => count_c(0),
      ADR3 => count_c(1),
      ADR0 => count_c(2),
      ADR5 => count_c(3),
      ADR4 => c_s_FSM_FFd2_159,
      ADR2 => c_s_FSM_FFd1_140,
      O => count_c_3_rstpot_121
    );
  count_c_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_c_2_CLK,
      I => count_c_2_rstpot_96,
      O => count_c(2),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_c_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => X"2030100030300000"
    )
    port map (
      ADR3 => count_c(0),
      ADR5 => count_c(1),
      ADR0 => count_c(3),
      ADR4 => count_c(2),
      ADR2 => c_s_FSM_FFd2_159,
      ADR1 => c_s_FSM_FFd1_140,
      O => count_c_2_rstpot_96
    );
  count_c_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_c_1_CLK,
      I => count_c_1_rstpot_104,
      O => count_c(1),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_c_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => X"00000000F5002A00"
    )
    port map (
      ADR0 => count_c(0),
      ADR1 => count_c(2),
      ADR2 => count_c(3),
      ADR4 => count_c(1),
      ADR3 => c_s_FSM_FFd2_159,
      ADR5 => c_s_FSM_FFd1_140,
      O => count_c_1_rstpot_104
    );
  count_c_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_count_c_0_CLK,
      I => count_c_0_rstpot_112,
      O => count_c(0),
      SRST => rst_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  count_c_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => X"00000000C80400CC"
    )
    port map (
      ADR0 => count_c(1),
      ADR2 => count_c(2),
      ADR4 => count_c(3),
      ADR3 => count_c(0),
      ADR1 => c_s_FSM_FFd2_159,
      ADR5 => c_s_FSM_FFd1_140,
      O => count_c_0_rstpot_112
    );
  NlwBufferBlock_apertura_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => c_s_FSM_FFd1_140,
      O => NlwBufferSignal_apertura_OBUF_I
    );
  NlwBufferBlock_timeo_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => count_o_143,
      O => NlwBufferSignal_timeo_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_count_o_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_o_CLK
    );
  NlwBufferBlock_c_s_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_c_s_FSM_FFd2_CLK
    );
  NlwBufferBlock_c_s_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_c_s_FSM_FFd1_CLK
    );
  NlwBufferBlock_count_c_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_c_3_CLK
    );
  NlwBufferBlock_count_c_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_c_2_CLK
    );
  NlwBufferBlock_count_c_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_c_1_CLK
    );
  NlwBufferBlock_count_c_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_count_c_0_CLK
    );
  NlwBlock_gest_cassaforte_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_gest_cassaforte_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

