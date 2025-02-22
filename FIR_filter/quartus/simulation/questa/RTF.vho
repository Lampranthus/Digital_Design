-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "02/21/2025 17:26:50"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RTF IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	X : IN std_logic_vector(9 DOWNTO 0);
	CLKO : OUT std_logic;
	STF : IN std_logic;
	CS : OUT std_logic;
	SCLK : OUT std_logic;
	MOSI : OUT std_logic
	);
END RTF;

-- Design Ports Information
-- CLKO	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOSI	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STF	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[8]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[9]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RTF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_X : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLKO : std_logic;
SIGNAL ww_STF : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL \sc5|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sc5|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \sc5|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[0]~8_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \sc2|sc0|state~q\ : std_logic;
SIGNAL \sc2|sc0|INT_ss_n~0_combout\ : std_logic;
SIGNAL \sc4|Mux5~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_6|Mux4~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux5~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux4~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~4_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux3~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~6_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux2~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~8_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux1~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Add0~10_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Mux0~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Equal0~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_5|Equal0~1_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_6|Mux4~1_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_6|Mux3~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_6|Mux3~1_combout\ : std_logic;
SIGNAL \sc4|Mux5~1_combout\ : std_logic;
SIGNAL \STF~input_o\ : std_logic;
SIGNAL \sc4|Mux5~2_combout\ : std_logic;
SIGNAL \sc4|qp[2]~0_combout\ : std_logic;
SIGNAL \sc4|qp[1]~1_combout\ : std_logic;
SIGNAL \sc2|sc0|last_bit[0]~0_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[5]~21_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[0]~9\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[1]~10_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[1]~11\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[2]~12_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[2]~13\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[3]~14_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[3]~15\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[4]~16_combout\ : std_logic;
SIGNAL \sc2|sc0|Equal0~0_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[4]~17\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[5]~19_combout\ : std_logic;
SIGNAL \sc2|sc0|Equal0~1_combout\ : std_logic;
SIGNAL \sc2|sc0|busy~0_combout\ : std_logic;
SIGNAL \sc2|sc0|busy~1_combout\ : std_logic;
SIGNAL \sc2|sc0|busy~q\ : std_logic;
SIGNAL \sc2|sc0|INT_ss_n~1_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_ss_n~q\ : std_logic;
SIGNAL \sc2|sc0|last_bit[0]~1_combout\ : std_logic;
SIGNAL \sc2|sc0|last_bit[0]~2_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~1_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~0_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~2_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~3_combout\ : std_logic;
SIGNAL \sc2|sc0|INT_sclk~q\ : std_logic;
SIGNAL \sc2|sc0|receive_transmit~0_combout\ : std_logic;
SIGNAL \sc2|sc0|receive_transmit~_wirecell_combout\ : std_logic;
SIGNAL \sc2|sc0|receive_transmit~q\ : std_logic;
SIGNAL \sc2|sc0|last_bit[0]~3_combout\ : std_logic;
SIGNAL \sc2|sc0|process_0~0_combout\ : std_logic;
SIGNAL \sc2|sc0|process_0~1_combout\ : std_logic;
SIGNAL \sc2|sc0|process_0~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[14]~26_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \sc4|Mux0~0_combout\ : std_logic;
SIGNAL \sc0|sc4|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc5|qp[0]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux9~2_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \sc1|c0|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc3|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc4|qp[1]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux8~2_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \sc1|c0|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc3|qp[2]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux7~2_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \sc0|sc3|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc4|qp[3]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux6~2_combout\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \sc1|c0|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc3|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc5|qp[4]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux5~2_combout\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \sc0|sc3|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc4|qp[5]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux4~2_combout\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \sc0|sc4|qp[6]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux3~2_combout\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \sc0|sc3|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc4|qp[7]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux2~2_combout\ : std_logic;
SIGNAL \X[8]~input_o\ : std_logic;
SIGNAL \sc1|c0|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc3|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc4|qp[8]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux1~2_combout\ : std_logic;
SIGNAL \X[9]~input_o\ : std_logic;
SIGNAL \sc0|sc3|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc4|qp[9]~feeder_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~0_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~1_combout\ : std_logic;
SIGNAL \sc0|sc0|Mux0~2_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux0~0_combout\ : std_logic;
SIGNAL \sc0|sc1|Mux0~1_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~0_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[11]~29_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~1\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~2_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[12]~28_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~3\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~4_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[13]~27_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~5\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~6_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer[0]~24_combout\ : std_logic;
SIGNAL \sc2|sc0|process_0~3_combout\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles[5]~18_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer[23]~1_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~23_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~22_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~21_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~20_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~19_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~18_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~17_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~16_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~15_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[15]~25_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~7\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~8_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~14_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[16]~24_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~9\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~10_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~13_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[17]~23_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~11\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~12_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~12_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[18]~22_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~13\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~14_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~11_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[19]~21_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~15\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~16_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~10_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \sc0|sc2|Bloque_3|qn[20]~20_combout\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~17\ : std_logic;
SIGNAL \sc0|sc2|Bloque_2|Add0~18_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~9_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~8_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~7_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~6_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~5_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~4_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~3_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~2_combout\ : std_logic;
SIGNAL \sc2|sc0|txBuffer~0_combout\ : std_logic;
SIGNAL \sc2|sc0|mosi~0_combout\ : std_logic;
SIGNAL \sc2|sc0|mosi~q\ : std_logic;
SIGNAL \sc2|sc0|clk_toggles\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_6|qp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sc5|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sc4|qp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_5|qp\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sc2|sc0|txBuffer\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_4|qp\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \sc0|sc6|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc2|sc0|last_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sc0|sc2|Bloque_3|qp\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \sc0|sc4|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc5|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc0|sc3|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc1|c0|qp\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc2|sc0|ALT_INV_state~q\ : std_logic;
SIGNAL \sc2|sc0|ALT_INV_INT_ss_n~q\ : std_logic;
SIGNAL \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
ww_X <= X;
CLKO <= ww_CLKO;
ww_STF <= STF;
CS <= ww_CS;
SCLK <= ww_SCLK;
MOSI <= ww_MOSI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sc5|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\sc5|altpll_component|auto_generated|wire_pll1_clk\(0) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(0);
\sc5|altpll_component|auto_generated|wire_pll1_clk\(1) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(1);
\sc5|altpll_component|auto_generated|wire_pll1_clk\(2) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(2);
\sc5|altpll_component|auto_generated|wire_pll1_clk\(3) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(3);
\sc5|altpll_component|auto_generated|wire_pll1_clk\(4) <= \sc5|altpll_component|auto_generated|pll1_CLK_bus\(4);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~dataout\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~12\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~11\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~10\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~9\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~8\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~7\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~6\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~5\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~4\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~3\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~2\ & \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~1\ & 
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~0\);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~0\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~1\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~2\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~3\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~4\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~5\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~6\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~7\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~8\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~9\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~10\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~11\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~12\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~dataout\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\sc0|sc0|Mux0~2_combout\ & \sc0|sc0|Mux1~2_combout\ & \sc0|sc0|Mux2~2_combout\ & \sc0|sc0|Mux3~2_combout\ & \sc0|sc0|Mux4~2_combout\ & \sc0|sc0|Mux5~2_combout\ & \sc0|sc0|Mux6~2_combout\ & 
\sc0|sc0|Mux7~2_combout\ & \sc0|sc0|Mux8~2_combout\ & \sc0|sc0|Mux9~2_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \sc0|sc1|Mux0~1_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~0\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~1\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~2\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~3\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~4\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~5\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~6\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~7\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~8\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~9\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~10\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~11\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~12\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~dataout\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sc5|altpll_component|auto_generated|wire_pll1_clk\(0));
\sc2|sc0|ALT_INV_state~q\ <= NOT \sc2|sc0|state~q\;
\sc2|sc0|ALT_INV_INT_ss_n~q\ <= NOT \sc2|sc0|INT_ss_n~q\;
\sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;

-- Location: IOOBUF_X65_Y0_N16
\CLKO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc2|sc0|busy~q\,
	devoe => ww_devoe,
	o => ww_CLKO);

-- Location: IOOBUF_X60_Y0_N2
\CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc2|sc0|ALT_INV_INT_ss_n~q\,
	devoe => ww_devoe,
	o => ww_CS);

-- Location: IOOBUF_X109_Y0_N2
\SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc2|sc0|INT_sclk~q\,
	devoe => ww_devoe,
	o => ww_SCLK);

-- Location: IOOBUF_X85_Y0_N2
\MOSI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sc2|sc0|mosi~q\,
	devoe => ww_devoe,
	o => ww_MOSI);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: PLL_1
\sc5|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \sc5|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \sc5|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \sc5|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \sc5|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X76_Y5_N10
\sc2|sc0|clk_toggles[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[0]~8_combout\ = \sc2|sc0|clk_toggles\(0) $ (VCC)
-- \sc2|sc0|clk_toggles[0]~9\ = CARRY(\sc2|sc0|clk_toggles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(0),
	datad => VCC,
	combout => \sc2|sc0|clk_toggles[0]~8_combout\,
	cout => \sc2|sc0|clk_toggles[0]~9\);

-- Location: IOIBUF_X115_Y40_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: FF_X77_Y5_N1
\sc2|sc0|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|busy~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|state~q\);

-- Location: LCCOMB_X77_Y5_N18
\sc2|sc0|INT_ss_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_ss_n~0_combout\ = (\sc2|sc0|Equal0~1_combout\) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|Equal0~1_combout\,
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|INT_ss_n~0_combout\);

-- Location: LCCOMB_X75_Y5_N10
\sc4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux5~0_combout\ = (\sc4|qp\(1) & (((!\sc4|qp\(2))) # (!\sc2|sc0|busy~q\))) # (!\sc4|qp\(1) & (((\sc4|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|busy~q\,
	datab => \sc4|qp\(0),
	datac => \sc4|qp\(2),
	datad => \sc4|qp\(1),
	combout => \sc4|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y5_N12
\sc0|sc2|Bloque_6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_6|Mux4~0_combout\ = (\sc4|qp\(1) & (!\sc4|qp\(2) & \sc4|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc4|qp\(1),
	datac => \sc4|qp\(2),
	datad => \sc4|qp\(0),
	combout => \sc0|sc2|Bloque_6|Mux4~0_combout\);

-- Location: LCCOMB_X73_Y4_N12
\sc0|sc2|Bloque_5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~0_combout\ = \sc0|sc2|Bloque_5|qp\(0) $ (VCC)
-- \sc0|sc2|Bloque_5|Add0~1\ = CARRY(\sc0|sc2|Bloque_5|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datad => VCC,
	combout => \sc0|sc2|Bloque_5|Add0~0_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~1\);

-- Location: LCCOMB_X73_Y4_N28
\sc0|sc2|Bloque_5|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux5~2_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_5|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_5|Add0~0_combout\,
	combout => \sc0|sc2|Bloque_5|Mux5~2_combout\);

-- Location: FF_X73_Y4_N29
\sc0|sc2|Bloque_5|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux5~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(0));

-- Location: LCCOMB_X73_Y4_N14
\sc0|sc2|Bloque_5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~2_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|Add0~1\ & VCC)) # (!\sc0|sc2|Bloque_5|qp\(1) & (!\sc0|sc2|Bloque_5|Add0~1\))
-- \sc0|sc2|Bloque_5|Add0~3\ = CARRY((!\sc0|sc2|Bloque_5|qp\(1) & !\sc0|sc2|Bloque_5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datad => VCC,
	cin => \sc0|sc2|Bloque_5|Add0~1\,
	combout => \sc0|sc2|Bloque_5|Add0~2_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~3\);

-- Location: LCCOMB_X73_Y4_N24
\sc0|sc2|Bloque_5|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux4~2_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (\sc0|sc2|Bloque_5|Add0~2_combout\ & !\sc0|sc2|Bloque_6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datab => \sc0|sc2|Bloque_5|Add0~2_combout\,
	datac => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_5|Mux4~2_combout\);

-- Location: FF_X73_Y4_N25
\sc0|sc2|Bloque_5|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux4~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(1));

-- Location: LCCOMB_X73_Y4_N16
\sc0|sc2|Bloque_5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~4_combout\ = (\sc0|sc2|Bloque_5|qp\(2) & ((GND) # (!\sc0|sc2|Bloque_5|Add0~3\))) # (!\sc0|sc2|Bloque_5|qp\(2) & (\sc0|sc2|Bloque_5|Add0~3\ $ (GND)))
-- \sc0|sc2|Bloque_5|Add0~5\ = CARRY((\sc0|sc2|Bloque_5|qp\(2)) # (!\sc0|sc2|Bloque_5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datad => VCC,
	cin => \sc0|sc2|Bloque_5|Add0~3\,
	combout => \sc0|sc2|Bloque_5|Add0~4_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~5\);

-- Location: LCCOMB_X73_Y4_N4
\sc0|sc2|Bloque_5|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux3~2_combout\ = (\sc0|sc2|Bloque_6|qp\(1)) # ((\sc0|sc2|Bloque_5|Add0~4_combout\) # (!\sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_5|Add0~4_combout\,
	combout => \sc0|sc2|Bloque_5|Mux3~2_combout\);

-- Location: FF_X73_Y4_N5
\sc0|sc2|Bloque_5|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux3~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(2));

-- Location: LCCOMB_X73_Y4_N18
\sc0|sc2|Bloque_5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~6_combout\ = (\sc0|sc2|Bloque_5|qp\(3) & (\sc0|sc2|Bloque_5|Add0~5\ & VCC)) # (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|Add0~5\))
-- \sc0|sc2|Bloque_5|Add0~7\ = CARRY((!\sc0|sc2|Bloque_5|qp\(3) & !\sc0|sc2|Bloque_5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datad => VCC,
	cin => \sc0|sc2|Bloque_5|Add0~5\,
	combout => \sc0|sc2|Bloque_5|Add0~6_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~7\);

-- Location: LCCOMB_X73_Y4_N30
\sc0|sc2|Bloque_5|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux2~2_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_5|Add0~6_combout\ & \sc0|sc2|Bloque_6|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datab => \sc0|sc2|Bloque_5|Add0~6_combout\,
	datac => \sc0|sc2|Bloque_6|qp\(0),
	combout => \sc0|sc2|Bloque_5|Mux2~2_combout\);

-- Location: FF_X73_Y4_N31
\sc0|sc2|Bloque_5|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux2~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(3));

-- Location: LCCOMB_X73_Y4_N20
\sc0|sc2|Bloque_5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~8_combout\ = (\sc0|sc2|Bloque_5|qp\(4) & ((GND) # (!\sc0|sc2|Bloque_5|Add0~7\))) # (!\sc0|sc2|Bloque_5|qp\(4) & (\sc0|sc2|Bloque_5|Add0~7\ $ (GND)))
-- \sc0|sc2|Bloque_5|Add0~9\ = CARRY((\sc0|sc2|Bloque_5|qp\(4)) # (!\sc0|sc2|Bloque_5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(4),
	datad => VCC,
	cin => \sc0|sc2|Bloque_5|Add0~7\,
	combout => \sc0|sc2|Bloque_5|Add0~8_combout\,
	cout => \sc0|sc2|Bloque_5|Add0~9\);

-- Location: LCCOMB_X73_Y4_N8
\sc0|sc2|Bloque_5|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux1~2_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_6|qp\(0) & \sc0|sc2|Bloque_5|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_5|Add0~8_combout\,
	combout => \sc0|sc2|Bloque_5|Mux1~2_combout\);

-- Location: FF_X73_Y4_N9
\sc0|sc2|Bloque_5|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux1~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(4));

-- Location: LCCOMB_X73_Y4_N22
\sc0|sc2|Bloque_5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Add0~10_combout\ = \sc0|sc2|Bloque_5|Add0~9\ $ (!\sc0|sc2|Bloque_5|qp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc2|Bloque_5|qp\(5),
	cin => \sc0|sc2|Bloque_5|Add0~9\,
	combout => \sc0|sc2|Bloque_5|Add0~10_combout\);

-- Location: LCCOMB_X73_Y4_N10
\sc0|sc2|Bloque_5|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Mux0~2_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_5|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_6|qp\(1),
	datad => \sc0|sc2|Bloque_5|Add0~10_combout\,
	combout => \sc0|sc2|Bloque_5|Mux0~2_combout\);

-- Location: FF_X73_Y4_N11
\sc0|sc2|Bloque_5|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_5|Mux0~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_5|qp\(5));

-- Location: LCCOMB_X73_Y4_N26
\sc0|sc2|Bloque_5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Equal0~0_combout\ = (!\sc0|sc2|Bloque_5|qp\(3) & (!\sc0|sc2|Bloque_5|qp\(2) & (!\sc0|sc2|Bloque_5|qp\(4) & !\sc0|sc2|Bloque_5|qp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(2),
	datac => \sc0|sc2|Bloque_5|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(5),
	combout => \sc0|sc2|Bloque_5|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y5_N2
\sc0|sc2|Bloque_5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_5|Equal0~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1)) # (!\sc0|sc2|Bloque_5|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc2|Bloque_5|Equal0~1_combout\);

-- Location: LCCOMB_X75_Y5_N4
\sc0|sc2|Bloque_6|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_6|Mux4~1_combout\ = (\sc0|sc2|Bloque_6|Mux3~0_combout\ & (((\sc0|sc2|Bloque_5|Equal0~1_combout\) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\)))) # (!\sc0|sc2|Bloque_6|Mux3~0_combout\ & (\sc0|sc2|Bloque_6|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|Mux4~0_combout\,
	datab => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datac => \sc0|sc2|Bloque_6|Mux3~0_combout\,
	datad => \sc0|sc2|Bloque_5|Equal0~1_combout\,
	combout => \sc0|sc2|Bloque_6|Mux4~1_combout\);

-- Location: FF_X75_Y5_N5
\sc0|sc2|Bloque_6|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_6|Mux4~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_6|qp\(0));

-- Location: LCCOMB_X74_Y5_N16
\sc0|sc2|Bloque_6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_6|Mux3~0_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & !\sc0|sc2|Bloque_6|qp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_6|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y5_N28
\sc0|sc2|Bloque_6|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_6|Mux3~1_combout\ = (\sc0|sc2|Bloque_6|Mux3~0_combout\ & (!\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc2|Bloque_5|qp\(0) & \sc0|sc2|Bloque_5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|Mux3~0_combout\,
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(0),
	datad => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	combout => \sc0|sc2|Bloque_6|Mux3~1_combout\);

-- Location: FF_X75_Y5_N29
\sc0|sc2|Bloque_6|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_6|Mux3~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_6|qp\(1));

-- Location: LCCOMB_X75_Y5_N8
\sc4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux5~1_combout\ = (\sc4|qp\(2) & (((!\sc2|sc0|busy~q\ & !\sc4|qp\(0))) # (!\sc4|qp\(1)))) # (!\sc4|qp\(2) & (((\sc4|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|busy~q\,
	datab => \sc4|qp\(0),
	datac => \sc4|qp\(2),
	datad => \sc4|qp\(1),
	combout => \sc4|Mux5~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\STF~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STF,
	o => \STF~input_o\);

-- Location: LCCOMB_X75_Y5_N24
\sc4|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux5~2_combout\ = (\sc4|Mux5~0_combout\ & (((!\sc4|Mux5~1_combout\)))) # (!\sc4|Mux5~0_combout\ & ((\sc4|Mux5~1_combout\ & (\sc0|sc2|Bloque_6|qp\(1))) # (!\sc4|Mux5~1_combout\ & ((\STF~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|Mux5~0_combout\,
	datab => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc4|Mux5~1_combout\,
	datad => \STF~input_o\,
	combout => \sc4|Mux5~2_combout\);

-- Location: FF_X75_Y5_N25
\sc4|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc4|Mux5~2_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|qp\(0));

-- Location: LCCOMB_X75_Y5_N14
\sc4|qp[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|qp[2]~0_combout\ = (\sc4|qp\(1) & ((\sc4|qp\(2) & (!\sc2|sc0|busy~q\)) # (!\sc4|qp\(2) & ((\sc4|qp\(0)))))) # (!\sc4|qp\(1) & (((\sc4|qp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|busy~q\,
	datab => \sc4|qp\(1),
	datac => \sc4|qp\(2),
	datad => \sc4|qp\(0),
	combout => \sc4|qp[2]~0_combout\);

-- Location: FF_X75_Y5_N15
\sc4|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc4|qp[2]~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|qp\(2));

-- Location: LCCOMB_X75_Y5_N18
\sc4|qp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|qp[1]~1_combout\ = (\sc4|qp\(1) & ((\sc4|qp\(2) & (!\sc2|sc0|busy~q\)) # (!\sc4|qp\(2) & ((!\sc4|qp\(0)))))) # (!\sc4|qp\(1) & (((\sc4|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|busy~q\,
	datab => \sc4|qp\(2),
	datac => \sc4|qp\(1),
	datad => \sc4|qp\(0),
	combout => \sc4|qp[1]~1_combout\);

-- Location: FF_X75_Y5_N19
\sc4|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc4|qp[1]~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc4|qp\(1));

-- Location: LCCOMB_X75_Y5_N16
\sc2|sc0|last_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|last_bit[0]~0_combout\ = (!\sc4|qp\(1) & (\sc4|qp\(2) & \sc4|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc4|qp\(1),
	datac => \sc4|qp\(2),
	datad => \sc4|qp\(0),
	combout => \sc2|sc0|last_bit[0]~0_combout\);

-- Location: LCCOMB_X75_Y5_N20
\sc2|sc0|clk_toggles[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[5]~21_combout\ = (\RST~input_o\ & ((\sc2|sc0|last_bit[0]~0_combout\) # (\sc2|sc0|state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|last_bit[0]~0_combout\,
	datac => \sc2|sc0|state~q\,
	datad => \RST~input_o\,
	combout => \sc2|sc0|clk_toggles[5]~21_combout\);

-- Location: FF_X76_Y5_N11
\sc2|sc0|clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[0]~8_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(0));

-- Location: LCCOMB_X76_Y5_N12
\sc2|sc0|clk_toggles[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[1]~10_combout\ = (\sc2|sc0|clk_toggles\(1) & (!\sc2|sc0|clk_toggles[0]~9\)) # (!\sc2|sc0|clk_toggles\(1) & ((\sc2|sc0|clk_toggles[0]~9\) # (GND)))
-- \sc2|sc0|clk_toggles[1]~11\ = CARRY((!\sc2|sc0|clk_toggles[0]~9\) # (!\sc2|sc0|clk_toggles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(1),
	datad => VCC,
	cin => \sc2|sc0|clk_toggles[0]~9\,
	combout => \sc2|sc0|clk_toggles[1]~10_combout\,
	cout => \sc2|sc0|clk_toggles[1]~11\);

-- Location: FF_X76_Y5_N13
\sc2|sc0|clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[1]~10_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(1));

-- Location: LCCOMB_X76_Y5_N14
\sc2|sc0|clk_toggles[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[2]~12_combout\ = (\sc2|sc0|clk_toggles\(2) & (\sc2|sc0|clk_toggles[1]~11\ $ (GND))) # (!\sc2|sc0|clk_toggles\(2) & (!\sc2|sc0|clk_toggles[1]~11\ & VCC))
-- \sc2|sc0|clk_toggles[2]~13\ = CARRY((\sc2|sc0|clk_toggles\(2) & !\sc2|sc0|clk_toggles[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(2),
	datad => VCC,
	cin => \sc2|sc0|clk_toggles[1]~11\,
	combout => \sc2|sc0|clk_toggles[2]~12_combout\,
	cout => \sc2|sc0|clk_toggles[2]~13\);

-- Location: FF_X76_Y5_N15
\sc2|sc0|clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[2]~12_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(2));

-- Location: LCCOMB_X76_Y5_N16
\sc2|sc0|clk_toggles[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[3]~14_combout\ = (\sc2|sc0|clk_toggles\(3) & (!\sc2|sc0|clk_toggles[2]~13\)) # (!\sc2|sc0|clk_toggles\(3) & ((\sc2|sc0|clk_toggles[2]~13\) # (GND)))
-- \sc2|sc0|clk_toggles[3]~15\ = CARRY((!\sc2|sc0|clk_toggles[2]~13\) # (!\sc2|sc0|clk_toggles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(3),
	datad => VCC,
	cin => \sc2|sc0|clk_toggles[2]~13\,
	combout => \sc2|sc0|clk_toggles[3]~14_combout\,
	cout => \sc2|sc0|clk_toggles[3]~15\);

-- Location: FF_X76_Y5_N17
\sc2|sc0|clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[3]~14_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(3));

-- Location: LCCOMB_X76_Y5_N18
\sc2|sc0|clk_toggles[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[4]~16_combout\ = (\sc2|sc0|clk_toggles\(4) & (\sc2|sc0|clk_toggles[3]~15\ $ (GND))) # (!\sc2|sc0|clk_toggles\(4) & (!\sc2|sc0|clk_toggles[3]~15\ & VCC))
-- \sc2|sc0|clk_toggles[4]~17\ = CARRY((\sc2|sc0|clk_toggles\(4) & !\sc2|sc0|clk_toggles[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(4),
	datad => VCC,
	cin => \sc2|sc0|clk_toggles[3]~15\,
	combout => \sc2|sc0|clk_toggles[4]~16_combout\,
	cout => \sc2|sc0|clk_toggles[4]~17\);

-- Location: FF_X76_Y5_N19
\sc2|sc0|clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[4]~16_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(4));

-- Location: LCCOMB_X76_Y5_N4
\sc2|sc0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|Equal0~0_combout\ = (!\sc2|sc0|clk_toggles\(3) & (!\sc2|sc0|clk_toggles\(2) & !\sc2|sc0|clk_toggles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(3),
	datac => \sc2|sc0|clk_toggles\(2),
	datad => \sc2|sc0|clk_toggles\(1),
	combout => \sc2|sc0|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y5_N20
\sc2|sc0|clk_toggles[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[5]~19_combout\ = \sc2|sc0|clk_toggles\(5) $ (\sc2|sc0|clk_toggles[4]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(5),
	cin => \sc2|sc0|clk_toggles[4]~17\,
	combout => \sc2|sc0|clk_toggles[5]~19_combout\);

-- Location: FF_X76_Y5_N21
\sc2|sc0|clk_toggles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|clk_toggles[5]~19_combout\,
	sclr => \sc2|sc0|INT_ss_n~0_combout\,
	ena => \sc2|sc0|clk_toggles[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|clk_toggles\(5));

-- Location: LCCOMB_X76_Y5_N2
\sc2|sc0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|Equal0~1_combout\ = (\sc2|sc0|clk_toggles\(0) & (\sc2|sc0|clk_toggles\(4) & (\sc2|sc0|Equal0~0_combout\ & \sc2|sc0|clk_toggles\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(0),
	datab => \sc2|sc0|clk_toggles\(4),
	datac => \sc2|sc0|Equal0~0_combout\,
	datad => \sc2|sc0|clk_toggles\(5),
	combout => \sc2|sc0|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y5_N0
\sc2|sc0|busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|busy~0_combout\ = (\sc2|sc0|state~q\ & (!\sc2|sc0|Equal0~1_combout\)) # (!\sc2|sc0|state~q\ & ((\sc2|sc0|last_bit[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|Equal0~1_combout\,
	datac => \sc2|sc0|state~q\,
	datad => \sc2|sc0|last_bit[0]~0_combout\,
	combout => \sc2|sc0|busy~0_combout\);

-- Location: LCCOMB_X77_Y5_N14
\sc2|sc0|busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|busy~1_combout\ = !\sc2|sc0|busy~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc2|sc0|busy~0_combout\,
	combout => \sc2|sc0|busy~1_combout\);

-- Location: FF_X77_Y5_N15
\sc2|sc0|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|busy~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|busy~q\);

-- Location: LCCOMB_X77_Y5_N12
\sc2|sc0|INT_ss_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_ss_n~1_combout\ = !\sc2|sc0|INT_ss_n~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc2|sc0|INT_ss_n~0_combout\,
	combout => \sc2|sc0|INT_ss_n~1_combout\);

-- Location: FF_X77_Y5_N13
\sc2|sc0|INT_ss_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|INT_ss_n~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|INT_ss_n~q\);

-- Location: LCCOMB_X75_Y5_N26
\sc2|sc0|last_bit[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|last_bit[0]~1_combout\ = (!\sc2|sc0|state~q\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|state~q\,
	datad => \RST~input_o\,
	combout => \sc2|sc0|last_bit[0]~1_combout\);

-- Location: LCCOMB_X76_Y5_N28
\sc2|sc0|last_bit[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|last_bit[0]~2_combout\ = (\sc4|qp\(2) & (!\sc4|qp\(1) & (\sc2|sc0|last_bit[0]~1_combout\ & \sc4|qp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(2),
	datab => \sc4|qp\(1),
	datac => \sc2|sc0|last_bit[0]~1_combout\,
	datad => \sc4|qp\(0),
	combout => \sc2|sc0|last_bit[0]~2_combout\);

-- Location: LCCOMB_X76_Y5_N6
\sc2|sc0|INT_sclk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_sclk~1_combout\ = (!\sc2|sc0|clk_toggles\(1) & (!\sc2|sc0|clk_toggles\(3) & (!\sc2|sc0|clk_toggles\(2) & !\sc2|sc0|clk_toggles\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(1),
	datab => \sc2|sc0|clk_toggles\(3),
	datac => \sc2|sc0|clk_toggles\(2),
	datad => \sc2|sc0|clk_toggles\(0),
	combout => \sc2|sc0|INT_sclk~1_combout\);

-- Location: LCCOMB_X77_Y5_N20
\sc2|sc0|INT_sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_sclk~0_combout\ = (\sc2|sc0|INT_ss_n~q\ & (\sc2|sc0|state~q\ & \RST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|INT_ss_n~q\,
	datac => \sc2|sc0|state~q\,
	datad => \RST~input_o\,
	combout => \sc2|sc0|INT_sclk~0_combout\);

-- Location: LCCOMB_X76_Y5_N24
\sc2|sc0|INT_sclk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_sclk~2_combout\ = (\sc2|sc0|INT_sclk~0_combout\ & ((\sc2|sc0|INT_sclk~1_combout\) # ((!\sc2|sc0|clk_toggles\(4)) # (!\sc2|sc0|clk_toggles\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|INT_sclk~1_combout\,
	datab => \sc2|sc0|clk_toggles\(5),
	datac => \sc2|sc0|INT_sclk~0_combout\,
	datad => \sc2|sc0|clk_toggles\(4),
	combout => \sc2|sc0|INT_sclk~2_combout\);

-- Location: LCCOMB_X77_Y5_N30
\sc2|sc0|INT_sclk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|INT_sclk~3_combout\ = (\sc2|sc0|INT_sclk~q\ & (((!\sc2|sc0|last_bit[0]~2_combout\ & !\sc2|sc0|INT_sclk~2_combout\)) # (!\sc2|sc0|state~q\))) # (!\sc2|sc0|INT_sclk~q\ & ((\sc2|sc0|last_bit[0]~2_combout\) # ((\sc2|sc0|INT_sclk~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|last_bit[0]~2_combout\,
	datab => \sc2|sc0|state~q\,
	datac => \sc2|sc0|INT_sclk~q\,
	datad => \sc2|sc0|INT_sclk~2_combout\,
	combout => \sc2|sc0|INT_sclk~3_combout\);

-- Location: FF_X77_Y5_N31
\sc2|sc0|INT_sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|INT_sclk~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|INT_sclk~q\);

-- Location: LCCOMB_X75_Y5_N0
\sc2|sc0|receive_transmit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|receive_transmit~0_combout\ = (\sc2|sc0|receive_transmit~q\) # ((!\sc4|qp\(1) & (\sc4|qp\(2) & \sc4|qp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc4|qp\(1),
	datab => \sc4|qp\(2),
	datac => \sc2|sc0|receive_transmit~q\,
	datad => \sc4|qp\(0),
	combout => \sc2|sc0|receive_transmit~0_combout\);

-- Location: LCCOMB_X75_Y5_N22
\sc2|sc0|receive_transmit~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|receive_transmit~_wirecell_combout\ = !\sc2|sc0|receive_transmit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc2|sc0|receive_transmit~q\,
	combout => \sc2|sc0|receive_transmit~_wirecell_combout\);

-- Location: FF_X75_Y5_N1
\sc2|sc0|receive_transmit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|receive_transmit~0_combout\,
	asdata => \sc2|sc0|receive_transmit~_wirecell_combout\,
	sload => \sc2|sc0|state~q\,
	ena => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|receive_transmit~q\);

-- Location: LCCOMB_X77_Y5_N4
\sc2|sc0|last_bit[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|last_bit[0]~3_combout\ = (\sc2|sc0|last_bit\(0)) # ((\sc2|sc0|last_bit[0]~0_combout\ & (!\sc2|sc0|state~q\ & \RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|last_bit[0]~0_combout\,
	datab => \sc2|sc0|state~q\,
	datac => \sc2|sc0|last_bit\(0),
	datad => \RST~input_o\,
	combout => \sc2|sc0|last_bit[0]~3_combout\);

-- Location: FF_X77_Y5_N5
\sc2|sc0|last_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|last_bit[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|last_bit\(0));

-- Location: LCCOMB_X76_Y5_N30
\sc2|sc0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|process_0~0_combout\ = (\sc2|sc0|receive_transmit~q\ & \sc2|sc0|last_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|receive_transmit~q\,
	datad => \sc2|sc0|last_bit\(0),
	combout => \sc2|sc0|process_0~0_combout\);

-- Location: LCCOMB_X76_Y5_N8
\sc2|sc0|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|process_0~1_combout\ = (((!\sc2|sc0|clk_toggles\(0)) # (!\sc2|sc0|clk_toggles\(2))) # (!\sc2|sc0|clk_toggles\(3))) # (!\sc2|sc0|clk_toggles\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|clk_toggles\(1),
	datab => \sc2|sc0|clk_toggles\(3),
	datac => \sc2|sc0|clk_toggles\(2),
	datad => \sc2|sc0|clk_toggles\(0),
	combout => \sc2|sc0|process_0~1_combout\);

-- Location: LCCOMB_X76_Y5_N22
\sc2|sc0|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|process_0~2_combout\ = (\sc2|sc0|process_0~0_combout\ & (((!\sc2|sc0|clk_toggles\(4) & \sc2|sc0|process_0~1_combout\)) # (!\sc2|sc0|clk_toggles\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|process_0~0_combout\,
	datab => \sc2|sc0|clk_toggles\(4),
	datac => \sc2|sc0|process_0~1_combout\,
	datad => \sc2|sc0|clk_toggles\(5),
	combout => \sc2|sc0|process_0~2_combout\);

-- Location: LCCOMB_X69_Y4_N26
\sc0|sc2|Bloque_3|qn[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[14]~26_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_6|qp\(0) & \sc0|sc2|Bloque_2|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_2|Add0~6_combout\,
	combout => \sc0|sc2|Bloque_3|qn[14]~26_combout\);

-- Location: FF_X69_Y4_N27
\sc0|sc2|Bloque_3|qp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[14]~26_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(14));

-- Location: IOIBUF_X107_Y0_N1
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LCCOMB_X75_Y5_N30
\sc4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc4|Mux0~0_combout\ = (\sc4|qp\(1) & (!\sc4|qp\(2) & !\sc4|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc4|qp\(1),
	datac => \sc4|qp\(2),
	datad => \sc4|qp\(0),
	combout => \sc4|Mux0~0_combout\);

-- Location: FF_X75_Y4_N27
\sc1|c0|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[0]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(0));

-- Location: FF_X75_Y4_N11
\sc0|sc3|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(0));

-- Location: LCCOMB_X75_Y4_N20
\sc0|sc4|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[0]~feeder_combout\ = \sc0|sc3|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(0),
	combout => \sc0|sc4|qp[0]~feeder_combout\);

-- Location: FF_X75_Y4_N21
\sc0|sc4|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(0));

-- Location: LCCOMB_X75_Y4_N14
\sc0|sc5|qp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc5|qp[0]~feeder_combout\ = \sc0|sc4|qp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc4|qp\(0),
	combout => \sc0|sc5|qp[0]~feeder_combout\);

-- Location: FF_X75_Y4_N15
\sc0|sc5|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc5|qp[0]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(0));

-- Location: FF_X75_Y4_N17
\sc0|sc6|qp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(0),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(0));

-- Location: LCCOMB_X75_Y4_N16
\sc0|sc0|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc5|qp\(0))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc6|qp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc5|qp\(0),
	datac => \sc0|sc6|qp\(0),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux9~0_combout\);

-- Location: LCCOMB_X75_Y4_N12
\sc0|sc0|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux9~0_combout\ & (\sc0|sc3|qp\(0))) # (!\sc0|sc0|Mux9~0_combout\ & ((\sc0|sc4|qp\(0)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc3|qp\(0),
	datab => \sc0|sc4|qp\(0),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc0|Mux9~0_combout\,
	combout => \sc0|sc0|Mux9~1_combout\);

-- Location: LCCOMB_X75_Y4_N28
\sc0|sc0|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux9~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux9~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|c0|qp\(0),
	datac => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datad => \sc0|sc0|Mux9~1_combout\,
	combout => \sc0|sc0|Mux9~2_combout\);

-- Location: IOIBUF_X60_Y0_N22
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X72_Y4_N28
\sc1|c0|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|c0|qp[1]~feeder_combout\ = \X[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X[1]~input_o\,
	combout => \sc1|c0|qp[1]~feeder_combout\);

-- Location: FF_X72_Y4_N29
\sc1|c0|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc1|c0|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(1));

-- Location: LCCOMB_X72_Y4_N12
\sc0|sc3|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|qp[1]~feeder_combout\ = \sc1|c0|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|c0|qp\(1),
	combout => \sc0|sc3|qp[1]~feeder_combout\);

-- Location: FF_X72_Y4_N13
\sc0|sc3|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc3|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(1));

-- Location: LCCOMB_X72_Y4_N22
\sc0|sc4|qp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[1]~feeder_combout\ = \sc0|sc3|qp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(1),
	combout => \sc0|sc4|qp[1]~feeder_combout\);

-- Location: FF_X72_Y4_N23
\sc0|sc4|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[1]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(1));

-- Location: FF_X72_Y4_N9
\sc0|sc5|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(1));

-- Location: FF_X72_Y4_N3
\sc0|sc6|qp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(1),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(1));

-- Location: LCCOMB_X72_Y4_N2
\sc0|sc0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~0_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc4|qp\(1))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc6|qp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc6|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux8~0_combout\);

-- Location: LCCOMB_X72_Y4_N8
\sc0|sc0|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~1_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux8~0_combout\ & (\sc0|sc3|qp\(1))) # (!\sc0|sc0|Mux8~0_combout\ & ((\sc0|sc5|qp\(1)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc3|qp\(1),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc5|qp\(1),
	datad => \sc0|sc0|Mux8~0_combout\,
	combout => \sc0|sc0|Mux8~1_combout\);

-- Location: LCCOMB_X72_Y4_N24
\sc0|sc0|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux8~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux8~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|c0|qp\(1),
	datac => \sc0|sc0|Mux8~1_combout\,
	datad => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	combout => \sc0|sc0|Mux8~2_combout\);

-- Location: IOIBUF_X109_Y0_N8
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: LCCOMB_X74_Y4_N6
\sc1|c0|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|c0|qp[2]~feeder_combout\ = \X[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X[2]~input_o\,
	combout => \sc1|c0|qp[2]~feeder_combout\);

-- Location: FF_X74_Y4_N7
\sc1|c0|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc1|c0|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(2));

-- Location: LCCOMB_X74_Y4_N26
\sc0|sc3|qp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|qp[2]~feeder_combout\ = \sc1|c0|qp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|c0|qp\(2),
	combout => \sc0|sc3|qp[2]~feeder_combout\);

-- Location: FF_X74_Y4_N27
\sc0|sc3|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc3|qp[2]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(2));

-- Location: FF_X74_Y4_N1
\sc0|sc4|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc3|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(2));

-- Location: FF_X74_Y4_N23
\sc0|sc5|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(2));

-- Location: FF_X74_Y4_N13
\sc0|sc6|qp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(2),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(2));

-- Location: LCCOMB_X74_Y4_N12
\sc0|sc0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc5|qp\(2))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc6|qp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc5|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc6|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux7~0_combout\);

-- Location: LCCOMB_X74_Y4_N0
\sc0|sc0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux7~0_combout\ & (\sc0|sc3|qp\(2))) # (!\sc0|sc0|Mux7~0_combout\ & ((\sc0|sc4|qp\(2)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc3|qp\(2),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc4|qp\(2),
	datad => \sc0|sc0|Mux7~0_combout\,
	combout => \sc0|sc0|Mux7~1_combout\);

-- Location: LCCOMB_X74_Y4_N2
\sc0|sc0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux7~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux7~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc1|c0|qp\(2),
	datac => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datad => \sc0|sc0|Mux7~1_combout\,
	combout => \sc0|sc0|Mux7~2_combout\);

-- Location: IOIBUF_X96_Y0_N22
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: FF_X74_Y4_N17
\sc1|c0|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[3]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(3));

-- Location: LCCOMB_X74_Y4_N28
\sc0|sc3|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|qp[3]~feeder_combout\ = \sc1|c0|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|c0|qp\(3),
	combout => \sc0|sc3|qp[3]~feeder_combout\);

-- Location: FF_X74_Y4_N29
\sc0|sc3|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc3|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(3));

-- Location: LCCOMB_X74_Y4_N30
\sc0|sc4|qp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[3]~feeder_combout\ = \sc0|sc3|qp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(3),
	combout => \sc0|sc4|qp[3]~feeder_combout\);

-- Location: FF_X74_Y4_N31
\sc0|sc4|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[3]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(3));

-- Location: FF_X74_Y4_N5
\sc0|sc5|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(3));

-- Location: FF_X74_Y4_N25
\sc0|sc6|qp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(3),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(3));

-- Location: LCCOMB_X74_Y4_N24
\sc0|sc0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~0_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc4|qp\(3))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc6|qp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc6|qp\(3),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y4_N4
\sc0|sc0|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~1_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux6~0_combout\ & (\sc0|sc3|qp\(3))) # (!\sc0|sc0|Mux6~0_combout\ & ((\sc0|sc5|qp\(3)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc3|qp\(3),
	datac => \sc0|sc5|qp\(3),
	datad => \sc0|sc0|Mux6~0_combout\,
	combout => \sc0|sc0|Mux6~1_combout\);

-- Location: LCCOMB_X74_Y4_N16
\sc0|sc0|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux6~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux6~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datac => \sc1|c0|qp\(3),
	datad => \sc0|sc0|Mux6~1_combout\,
	combout => \sc0|sc0|Mux6~2_combout\);

-- Location: IOIBUF_X102_Y0_N22
\X[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: LCCOMB_X68_Y4_N24
\sc1|c0|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|c0|qp[4]~feeder_combout\ = \X[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X[4]~input_o\,
	combout => \sc1|c0|qp[4]~feeder_combout\);

-- Location: FF_X68_Y4_N25
\sc1|c0|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc1|c0|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(4));

-- Location: LCCOMB_X68_Y4_N22
\sc0|sc3|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|qp[4]~feeder_combout\ = \sc1|c0|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|c0|qp\(4),
	combout => \sc0|sc3|qp[4]~feeder_combout\);

-- Location: FF_X68_Y4_N23
\sc0|sc3|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc3|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(4));

-- Location: FF_X68_Y4_N7
\sc0|sc4|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc3|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(4));

-- Location: LCCOMB_X68_Y4_N16
\sc0|sc5|qp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc5|qp[4]~feeder_combout\ = \sc0|sc4|qp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc4|qp\(4),
	combout => \sc0|sc5|qp[4]~feeder_combout\);

-- Location: FF_X68_Y4_N17
\sc0|sc5|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc5|qp[4]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(4));

-- Location: FF_X68_Y4_N9
\sc0|sc6|qp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(4),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(4));

-- Location: LCCOMB_X68_Y4_N8
\sc0|sc0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~0_combout\ = (\sc0|sc2|Bloque_5|qp\(0)) # ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc4|qp\(4))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc6|qp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc4|qp\(4),
	datac => \sc0|sc6|qp\(4),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux5~0_combout\);

-- Location: LCCOMB_X68_Y4_N2
\sc0|sc0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~1_combout\ = ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc3|qp\(4))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc5|qp\(4))))) # (!\sc0|sc2|Bloque_5|qp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc3|qp\(4),
	datab => \sc0|sc5|qp\(4),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux5~1_combout\);

-- Location: LCCOMB_X68_Y4_N28
\sc0|sc0|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux5~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & (((\sc0|sc0|Mux5~0_combout\ & \sc0|sc0|Mux5~1_combout\)))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datab => \sc1|c0|qp\(4),
	datac => \sc0|sc0|Mux5~0_combout\,
	datad => \sc0|sc0|Mux5~1_combout\,
	combout => \sc0|sc0|Mux5~2_combout\);

-- Location: IOIBUF_X96_Y0_N15
\X[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: FF_X74_Y4_N11
\sc1|c0|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[5]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(5));

-- Location: LCCOMB_X74_Y4_N18
\sc0|sc3|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|qp[5]~feeder_combout\ = \sc1|c0|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|c0|qp\(5),
	combout => \sc0|sc3|qp[5]~feeder_combout\);

-- Location: FF_X74_Y4_N19
\sc0|sc3|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc3|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(5));

-- Location: LCCOMB_X74_Y4_N14
\sc0|sc4|qp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[5]~feeder_combout\ = \sc0|sc3|qp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(5),
	combout => \sc0|sc4|qp[5]~feeder_combout\);

-- Location: FF_X74_Y4_N15
\sc0|sc4|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[5]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(5));

-- Location: FF_X74_Y4_N9
\sc0|sc5|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(5));

-- Location: FF_X74_Y4_N21
\sc0|sc6|qp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(5),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(5));

-- Location: LCCOMB_X74_Y4_N20
\sc0|sc0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~0_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc4|qp\(5))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc6|qp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(5),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc6|qp\(5),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y4_N8
\sc0|sc0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~1_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux4~0_combout\ & (\sc0|sc3|qp\(5))) # (!\sc0|sc0|Mux4~0_combout\ & ((\sc0|sc5|qp\(5)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc3|qp\(5),
	datac => \sc0|sc5|qp\(5),
	datad => \sc0|sc0|Mux4~0_combout\,
	combout => \sc0|sc0|Mux4~1_combout\);

-- Location: LCCOMB_X74_Y4_N10
\sc0|sc0|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux4~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux4~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datac => \sc1|c0|qp\(5),
	datad => \sc0|sc0|Mux4~1_combout\,
	combout => \sc0|sc0|Mux4~2_combout\);

-- Location: IOIBUF_X102_Y0_N15
\X[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: FF_X75_Y4_N9
\sc1|c0|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[6]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(6));

-- Location: FF_X75_Y4_N25
\sc0|sc3|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc1|c0|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(6));

-- Location: LCCOMB_X75_Y4_N22
\sc0|sc4|qp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[6]~feeder_combout\ = \sc0|sc3|qp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(6),
	combout => \sc0|sc4|qp[6]~feeder_combout\);

-- Location: FF_X75_Y4_N23
\sc0|sc4|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[6]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(6));

-- Location: FF_X75_Y4_N5
\sc0|sc5|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(6));

-- Location: FF_X75_Y4_N7
\sc0|sc6|qp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(6),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(6));

-- Location: LCCOMB_X75_Y4_N6
\sc0|sc0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc5|qp\(6))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc6|qp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc5|qp\(6),
	datac => \sc0|sc6|qp\(6),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y4_N18
\sc0|sc0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux3~0_combout\ & ((\sc0|sc3|qp\(6)))) # (!\sc0|sc0|Mux3~0_combout\ & (\sc0|sc4|qp\(6))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(6),
	datab => \sc0|sc3|qp\(6),
	datac => \sc0|sc2|Bloque_5|qp\(1),
	datad => \sc0|sc0|Mux3~0_combout\,
	combout => \sc0|sc0|Mux3~1_combout\);

-- Location: LCCOMB_X75_Y4_N30
\sc0|sc0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux3~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux3~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|c0|qp\(6),
	datac => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datad => \sc0|sc0|Mux3~1_combout\,
	combout => \sc0|sc0|Mux3~2_combout\);

-- Location: IOIBUF_X65_Y0_N22
\X[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: FF_X72_Y4_N19
\sc1|c0|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[7]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(7));

-- Location: LCCOMB_X72_Y4_N6
\sc0|sc3|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|qp[7]~feeder_combout\ = \sc1|c0|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|c0|qp\(7),
	combout => \sc0|sc3|qp[7]~feeder_combout\);

-- Location: FF_X72_Y4_N7
\sc0|sc3|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc3|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(7));

-- Location: LCCOMB_X72_Y4_N30
\sc0|sc4|qp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[7]~feeder_combout\ = \sc0|sc3|qp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(7),
	combout => \sc0|sc4|qp[7]~feeder_combout\);

-- Location: FF_X72_Y4_N31
\sc0|sc4|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[7]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(7));

-- Location: FF_X72_Y4_N5
\sc0|sc5|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(7));

-- Location: FF_X72_Y4_N17
\sc0|sc6|qp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(7),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(7));

-- Location: LCCOMB_X72_Y4_N16
\sc0|sc0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~0_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc4|qp\(7))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc6|qp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc6|qp\(7),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux2~0_combout\);

-- Location: LCCOMB_X72_Y4_N4
\sc0|sc0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~1_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux2~0_combout\ & (\sc0|sc3|qp\(7))) # (!\sc0|sc0|Mux2~0_combout\ & ((\sc0|sc5|qp\(7)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc3|qp\(7),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc5|qp\(7),
	datad => \sc0|sc0|Mux2~0_combout\,
	combout => \sc0|sc0|Mux2~1_combout\);

-- Location: LCCOMB_X72_Y4_N18
\sc0|sc0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux2~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux2~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datac => \sc1|c0|qp\(7),
	datad => \sc0|sc0|Mux2~1_combout\,
	combout => \sc0|sc0|Mux2~2_combout\);

-- Location: IOIBUF_X60_Y0_N15
\X[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(8),
	o => \X[8]~input_o\);

-- Location: LCCOMB_X68_Y4_N0
\sc1|c0|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc1|c0|qp[8]~feeder_combout\ = \X[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X[8]~input_o\,
	combout => \sc1|c0|qp[8]~feeder_combout\);

-- Location: FF_X68_Y4_N1
\sc1|c0|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc1|c0|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(8));

-- Location: LCCOMB_X68_Y4_N20
\sc0|sc3|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|qp[8]~feeder_combout\ = \sc1|c0|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|c0|qp\(8),
	combout => \sc0|sc3|qp[8]~feeder_combout\);

-- Location: FF_X68_Y4_N21
\sc0|sc3|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc3|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(8));

-- Location: LCCOMB_X68_Y4_N14
\sc0|sc4|qp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[8]~feeder_combout\ = \sc0|sc3|qp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(8),
	combout => \sc0|sc4|qp[8]~feeder_combout\);

-- Location: FF_X68_Y4_N15
\sc0|sc4|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[8]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(8));

-- Location: FF_X68_Y4_N5
\sc0|sc5|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(8));

-- Location: FF_X68_Y4_N11
\sc0|sc6|qp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(8),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(8));

-- Location: LCCOMB_X68_Y4_N10
\sc0|sc0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~0_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc2|Bloque_5|qp\(0))))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc2|Bloque_5|qp\(0) & (\sc0|sc5|qp\(8))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc6|qp\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc5|qp\(8),
	datac => \sc0|sc6|qp\(8),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc0|Mux1~0_combout\);

-- Location: LCCOMB_X68_Y4_N18
\sc0|sc0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~1_combout\ = (\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc0|Mux1~0_combout\ & (\sc0|sc3|qp\(8))) # (!\sc0|sc0|Mux1~0_combout\ & ((\sc0|sc4|qp\(8)))))) # (!\sc0|sc2|Bloque_5|qp\(1) & (((\sc0|sc0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(1),
	datab => \sc0|sc3|qp\(8),
	datac => \sc0|sc4|qp\(8),
	datad => \sc0|sc0|Mux1~0_combout\,
	combout => \sc0|sc0|Mux1~1_combout\);

-- Location: LCCOMB_X68_Y4_N30
\sc0|sc0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux1~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux1~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc1|c0|qp\(8),
	datac => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datad => \sc0|sc0|Mux1~1_combout\,
	combout => \sc0|sc0|Mux1~2_combout\);

-- Location: IOIBUF_X60_Y0_N8
\X[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(9),
	o => \X[9]~input_o\);

-- Location: FF_X72_Y4_N11
\sc1|c0|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \X[9]~input_o\,
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc1|c0|qp\(9));

-- Location: LCCOMB_X72_Y4_N0
\sc0|sc3|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc3|qp[9]~feeder_combout\ = \sc1|c0|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc1|c0|qp\(9),
	combout => \sc0|sc3|qp[9]~feeder_combout\);

-- Location: FF_X72_Y4_N1
\sc0|sc3|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc3|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc3|qp\(9));

-- Location: LCCOMB_X72_Y4_N26
\sc0|sc4|qp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc4|qp[9]~feeder_combout\ = \sc0|sc3|qp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc0|sc3|qp\(9),
	combout => \sc0|sc4|qp[9]~feeder_combout\);

-- Location: FF_X72_Y4_N27
\sc0|sc4|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc4|qp[9]~feeder_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc4|qp\(9));

-- Location: FF_X72_Y4_N15
\sc0|sc5|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc4|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc5|qp\(9));

-- Location: FF_X72_Y4_N21
\sc0|sc6|qp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sc0|sc5|qp\(9),
	clrn => \RST~input_o\,
	sload => VCC,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc6|qp\(9));

-- Location: LCCOMB_X72_Y4_N20
\sc0|sc0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~0_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc2|Bloque_5|qp\(1))))) # (!\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc2|Bloque_5|qp\(1) & (\sc0|sc4|qp\(9))) # (!\sc0|sc2|Bloque_5|qp\(1) & ((\sc0|sc6|qp\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc4|qp\(9),
	datab => \sc0|sc2|Bloque_5|qp\(0),
	datac => \sc0|sc6|qp\(9),
	datad => \sc0|sc2|Bloque_5|qp\(1),
	combout => \sc0|sc0|Mux0~0_combout\);

-- Location: LCCOMB_X72_Y4_N14
\sc0|sc0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~1_combout\ = (\sc0|sc2|Bloque_5|qp\(0) & ((\sc0|sc0|Mux0~0_combout\ & (\sc0|sc3|qp\(9))) # (!\sc0|sc0|Mux0~0_combout\ & ((\sc0|sc5|qp\(9)))))) # (!\sc0|sc2|Bloque_5|qp\(0) & (((\sc0|sc0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(0),
	datab => \sc0|sc3|qp\(9),
	datac => \sc0|sc5|qp\(9),
	datad => \sc0|sc0|Mux0~0_combout\,
	combout => \sc0|sc0|Mux0~1_combout\);

-- Location: LCCOMB_X72_Y4_N10
\sc0|sc0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc0|Mux0~2_combout\ = (\sc0|sc2|Bloque_5|Equal0~0_combout\ & ((\sc0|sc0|Mux0~1_combout\))) # (!\sc0|sc2|Bloque_5|Equal0~0_combout\ & (\sc1|c0|qp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_5|Equal0~0_combout\,
	datac => \sc1|c0|qp\(9),
	datad => \sc0|sc0|Mux0~1_combout\,
	combout => \sc0|sc0|Mux0~2_combout\);

-- Location: LCCOMB_X73_Y4_N6
\sc0|sc1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux0~0_combout\ = (\sc0|sc2|Bloque_5|qp\(3)) # ((\sc0|sc2|Bloque_5|qp\(2) & ((\sc0|sc2|Bloque_5|qp\(1)) # (\sc0|sc2|Bloque_5|qp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(3),
	datab => \sc0|sc2|Bloque_5|qp\(1),
	datac => \sc0|sc2|Bloque_5|qp\(2),
	datad => \sc0|sc2|Bloque_5|qp\(0),
	combout => \sc0|sc1|Mux0~0_combout\);

-- Location: LCCOMB_X73_Y4_N0
\sc0|sc1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc1|Mux0~1_combout\ = (!\sc0|sc2|Bloque_5|qp\(5) & (!\sc0|sc2|Bloque_5|qp\(4) & !\sc0|sc1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_5|qp\(5),
	datac => \sc0|sc2|Bloque_5|qp\(4),
	datad => \sc0|sc1|Mux0~0_combout\,
	combout => \sc0|sc1|Mux0~1_combout\);

-- Location: DSPMULT_X71_Y4_N0
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y4_N2
\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y4_N12
\sc0|sc2|Bloque_2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~0_combout\ = (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (\sc0|sc2|Bloque_3|qp\(11) $ (VCC))) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (\sc0|sc2|Bloque_3|qp\(11) & VCC))
-- \sc0|sc2|Bloque_2|Add0~1\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\ & \sc0|sc2|Bloque_3|qp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \sc0|sc2|Bloque_3|qp\(11),
	datad => VCC,
	combout => \sc0|sc2|Bloque_2|Add0~0_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~1\);

-- Location: LCCOMB_X69_Y4_N6
\sc0|sc2|Bloque_3|qn[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[11]~29_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (!\sc0|sc2|Bloque_6|qp\(1) & \sc0|sc2|Bloque_2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(0),
	datab => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_2|Add0~0_combout\,
	combout => \sc0|sc2|Bloque_3|qn[11]~29_combout\);

-- Location: FF_X69_Y4_N7
\sc0|sc2|Bloque_3|qp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[11]~29_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(11));

-- Location: LCCOMB_X70_Y4_N14
\sc0|sc2|Bloque_2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~2_combout\ = (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\sc0|sc2|Bloque_3|qp\(12) & (\sc0|sc2|Bloque_2|Add0~1\ & VCC)) # (!\sc0|sc2|Bloque_3|qp\(12) & (!\sc0|sc2|Bloque_2|Add0~1\)))) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\sc0|sc2|Bloque_3|qp\(12) & (!\sc0|sc2|Bloque_2|Add0~1\)) # (!\sc0|sc2|Bloque_3|qp\(12) & ((\sc0|sc2|Bloque_2|Add0~1\) # (GND)))))
-- \sc0|sc2|Bloque_2|Add0~3\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\sc0|sc2|Bloque_3|qp\(12) & !\sc0|sc2|Bloque_2|Add0~1\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((!\sc0|sc2|Bloque_2|Add0~1\) # 
-- (!\sc0|sc2|Bloque_3|qp\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \sc0|sc2|Bloque_3|qp\(12),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|Add0~1\,
	combout => \sc0|sc2|Bloque_2|Add0~2_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~3\);

-- Location: LCCOMB_X70_Y4_N2
\sc0|sc2|Bloque_3|qn[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[12]~28_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (\sc0|sc2|Bloque_2|Add0~2_combout\ & !\sc0|sc2|Bloque_6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_2|Add0~2_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_3|qn[12]~28_combout\);

-- Location: FF_X70_Y4_N3
\sc0|sc2|Bloque_3|qp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[12]~28_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(12));

-- Location: LCCOMB_X70_Y4_N16
\sc0|sc2|Bloque_2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~4_combout\ = ((\sc0|sc2|Bloque_3|qp\(13) $ (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (!\sc0|sc2|Bloque_2|Add0~3\)))) # (GND)
-- \sc0|sc2|Bloque_2|Add0~5\ = CARRY((\sc0|sc2|Bloque_3|qp\(13) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\) # (!\sc0|sc2|Bloque_2|Add0~3\))) # (!\sc0|sc2|Bloque_3|qp\(13) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- !\sc0|sc2|Bloque_2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(13),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|Add0~3\,
	combout => \sc0|sc2|Bloque_2|Add0~4_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~5\);

-- Location: LCCOMB_X69_Y4_N16
\sc0|sc2|Bloque_3|qn[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[13]~27_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_6|qp\(0) & \sc0|sc2|Bloque_2|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_2|Add0~4_combout\,
	combout => \sc0|sc2|Bloque_3|qn[13]~27_combout\);

-- Location: FF_X69_Y4_N17
\sc0|sc2|Bloque_3|qp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[13]~27_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(13));

-- Location: LCCOMB_X70_Y4_N18
\sc0|sc2|Bloque_2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~6_combout\ = (\sc0|sc2|Bloque_3|qp\(14) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\sc0|sc2|Bloque_2|Add0~5\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- (!\sc0|sc2|Bloque_2|Add0~5\)))) # (!\sc0|sc2|Bloque_3|qp\(14) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\sc0|sc2|Bloque_2|Add0~5\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\sc0|sc2|Bloque_2|Add0~5\) # 
-- (GND)))))
-- \sc0|sc2|Bloque_2|Add0~7\ = CARRY((\sc0|sc2|Bloque_3|qp\(14) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\sc0|sc2|Bloque_2|Add0~5\)) # (!\sc0|sc2|Bloque_3|qp\(14) & ((!\sc0|sc2|Bloque_2|Add0~5\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(14),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|Add0~5\,
	combout => \sc0|sc2|Bloque_2|Add0~6_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~7\);

-- Location: FF_X70_Y4_N19
\sc0|sc2|Bloque_4|qp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~6_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(14));

-- Location: LCCOMB_X76_Y4_N22
\sc2|sc0|txBuffer[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer[0]~24_combout\ = !\sc2|sc0|state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer[0]~24_combout\);

-- Location: LCCOMB_X76_Y5_N0
\sc2|sc0|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|process_0~3_combout\ = ((!\sc2|sc0|clk_toggles\(4) & \sc2|sc0|process_0~1_combout\)) # (!\sc2|sc0|clk_toggles\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|clk_toggles\(4),
	datac => \sc2|sc0|process_0~1_combout\,
	datad => \sc2|sc0|clk_toggles\(5),
	combout => \sc2|sc0|process_0~3_combout\);

-- Location: LCCOMB_X75_Y5_N6
\sc2|sc0|clk_toggles[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|clk_toggles[5]~18_combout\ = (\sc2|sc0|state~q\ & \RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|state~q\,
	datad => \RST~input_o\,
	combout => \sc2|sc0|clk_toggles[5]~18_combout\);

-- Location: LCCOMB_X76_Y5_N26
\sc2|sc0|txBuffer[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer[23]~1_combout\ = (\sc2|sc0|last_bit[0]~2_combout\) # ((\sc2|sc0|process_0~0_combout\ & (\sc2|sc0|process_0~3_combout\ & \sc2|sc0|clk_toggles[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|process_0~0_combout\,
	datab => \sc2|sc0|process_0~3_combout\,
	datac => \sc2|sc0|clk_toggles[5]~18_combout\,
	datad => \sc2|sc0|last_bit[0]~2_combout\,
	combout => \sc2|sc0|txBuffer[23]~1_combout\);

-- Location: FF_X76_Y4_N23
\sc2|sc0|txBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer[0]~24_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(0));

-- Location: LCCOMB_X76_Y4_N4
\sc2|sc0|txBuffer~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~23_combout\ = (\sc2|sc0|txBuffer\(0)) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|txBuffer\(0),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~23_combout\);

-- Location: FF_X76_Y4_N5
\sc2|sc0|txBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~23_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(1));

-- Location: LCCOMB_X76_Y4_N26
\sc2|sc0|txBuffer~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~22_combout\ = (\sc2|sc0|txBuffer\(1)) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|txBuffer\(1),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~22_combout\);

-- Location: FF_X76_Y4_N27
\sc2|sc0|txBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~22_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(2));

-- Location: LCCOMB_X76_Y4_N8
\sc2|sc0|txBuffer~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~21_combout\ = (\sc2|sc0|txBuffer\(2)) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|txBuffer\(2),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~21_combout\);

-- Location: FF_X76_Y4_N9
\sc2|sc0|txBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~21_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(3));

-- Location: LCCOMB_X76_Y4_N30
\sc2|sc0|txBuffer~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~20_combout\ = (\sc2|sc0|txBuffer\(3) & \sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|txBuffer\(3),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~20_combout\);

-- Location: FF_X76_Y4_N31
\sc2|sc0|txBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~20_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(4));

-- Location: LCCOMB_X76_Y4_N12
\sc2|sc0|txBuffer~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~19_combout\ = (\sc2|sc0|txBuffer\(4) & \sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc2|sc0|txBuffer\(4),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~19_combout\);

-- Location: FF_X76_Y4_N13
\sc2|sc0|txBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~19_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(5));

-- Location: FF_X70_Y4_N13
\sc0|sc2|Bloque_4|qp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~0_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(11));

-- Location: LCCOMB_X76_Y4_N10
\sc2|sc0|txBuffer~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~18_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(5))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(5),
	datac => \sc0|sc2|Bloque_4|qp\(11),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~18_combout\);

-- Location: FF_X76_Y4_N11
\sc2|sc0|txBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~18_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(6));

-- Location: FF_X70_Y4_N15
\sc0|sc2|Bloque_4|qp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~2_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(12));

-- Location: LCCOMB_X76_Y4_N16
\sc2|sc0|txBuffer~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~17_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(6))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(6),
	datac => \sc0|sc2|Bloque_4|qp\(12),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~17_combout\);

-- Location: FF_X76_Y4_N17
\sc2|sc0|txBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~17_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(7));

-- Location: FF_X70_Y4_N17
\sc0|sc2|Bloque_4|qp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~4_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(13));

-- Location: LCCOMB_X76_Y4_N14
\sc2|sc0|txBuffer~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~16_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(7))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(7),
	datac => \sc0|sc2|Bloque_4|qp\(13),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~16_combout\);

-- Location: FF_X76_Y4_N15
\sc2|sc0|txBuffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~16_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(8));

-- Location: LCCOMB_X76_Y4_N20
\sc2|sc0|txBuffer~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~15_combout\ = (\sc2|sc0|state~q\ & ((\sc2|sc0|txBuffer\(8)))) # (!\sc2|sc0|state~q\ & (\sc0|sc2|Bloque_4|qp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_4|qp\(14),
	datac => \sc2|sc0|txBuffer\(8),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~15_combout\);

-- Location: FF_X76_Y4_N21
\sc2|sc0|txBuffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~15_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(9));

-- Location: LCCOMB_X70_Y4_N0
\sc0|sc2|Bloque_3|qn[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[15]~25_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_6|qp\(0) & \sc0|sc2|Bloque_2|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_2|Add0~8_combout\,
	combout => \sc0|sc2|Bloque_3|qn[15]~25_combout\);

-- Location: FF_X70_Y4_N1
\sc0|sc2|Bloque_3|qp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[15]~25_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(15));

-- Location: LCCOMB_X70_Y4_N20
\sc0|sc2|Bloque_2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~8_combout\ = ((\sc0|sc2|Bloque_3|qp\(15) $ (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ $ (!\sc0|sc2|Bloque_2|Add0~7\)))) # (GND)
-- \sc0|sc2|Bloque_2|Add0~9\ = CARRY((\sc0|sc2|Bloque_3|qp\(15) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\) # (!\sc0|sc2|Bloque_2|Add0~7\))) # (!\sc0|sc2|Bloque_3|qp\(15) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- !\sc0|sc2|Bloque_2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(15),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|Add0~7\,
	combout => \sc0|sc2|Bloque_2|Add0~8_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~9\);

-- Location: FF_X70_Y4_N21
\sc0|sc2|Bloque_4|qp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~8_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(15));

-- Location: LCCOMB_X76_Y4_N6
\sc2|sc0|txBuffer~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~14_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(9))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(9),
	datac => \sc0|sc2|Bloque_4|qp\(15),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~14_combout\);

-- Location: FF_X76_Y4_N7
\sc2|sc0|txBuffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~14_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(10));

-- Location: LCCOMB_X70_Y4_N10
\sc0|sc2|Bloque_3|qn[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[16]~24_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (\sc0|sc2|Bloque_2|Add0~10_combout\ & !\sc0|sc2|Bloque_6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_2|Add0~10_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_3|qn[16]~24_combout\);

-- Location: FF_X70_Y4_N11
\sc0|sc2|Bloque_3|qp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[16]~24_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(16));

-- Location: LCCOMB_X70_Y4_N22
\sc0|sc2|Bloque_2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~10_combout\ = (\sc0|sc2|Bloque_3|qp\(16) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\sc0|sc2|Bloque_2|Add0~9\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ & 
-- (!\sc0|sc2|Bloque_2|Add0~9\)))) # (!\sc0|sc2|Bloque_3|qp\(16) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\sc0|sc2|Bloque_2|Add0~9\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\sc0|sc2|Bloque_2|Add0~9\) # 
-- (GND)))))
-- \sc0|sc2|Bloque_2|Add0~11\ = CARRY((\sc0|sc2|Bloque_3|qp\(16) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\sc0|sc2|Bloque_2|Add0~9\)) # (!\sc0|sc2|Bloque_3|qp\(16) & ((!\sc0|sc2|Bloque_2|Add0~9\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(16),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|Add0~9\,
	combout => \sc0|sc2|Bloque_2|Add0~10_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~11\);

-- Location: FF_X70_Y4_N23
\sc0|sc2|Bloque_4|qp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~10_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(16));

-- Location: LCCOMB_X76_Y4_N24
\sc2|sc0|txBuffer~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~13_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(10))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(10),
	datac => \sc0|sc2|Bloque_4|qp\(16),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~13_combout\);

-- Location: FF_X76_Y4_N25
\sc2|sc0|txBuffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~13_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(11));

-- Location: LCCOMB_X70_Y4_N8
\sc0|sc2|Bloque_3|qn[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[17]~23_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_6|qp\(0) & \sc0|sc2|Bloque_2|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_6|qp\(1),
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_2|Add0~12_combout\,
	combout => \sc0|sc2|Bloque_3|qn[17]~23_combout\);

-- Location: FF_X70_Y4_N9
\sc0|sc2|Bloque_3|qp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[17]~23_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(17));

-- Location: LCCOMB_X70_Y4_N24
\sc0|sc2|Bloque_2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~12_combout\ = ((\sc0|sc2|Bloque_3|qp\(17) $ (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (!\sc0|sc2|Bloque_2|Add0~11\)))) # (GND)
-- \sc0|sc2|Bloque_2|Add0~13\ = CARRY((\sc0|sc2|Bloque_3|qp\(17) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\) # (!\sc0|sc2|Bloque_2|Add0~11\))) # (!\sc0|sc2|Bloque_3|qp\(17) & (\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- !\sc0|sc2|Bloque_2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(17),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|Add0~11\,
	combout => \sc0|sc2|Bloque_2|Add0~12_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~13\);

-- Location: FF_X70_Y4_N25
\sc0|sc2|Bloque_4|qp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~12_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(17));

-- Location: LCCOMB_X76_Y4_N2
\sc2|sc0|txBuffer~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~12_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(11))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(11),
	datac => \sc0|sc2|Bloque_4|qp\(17),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~12_combout\);

-- Location: FF_X76_Y4_N3
\sc2|sc0|txBuffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~12_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(12));

-- Location: LCCOMB_X70_Y4_N6
\sc0|sc2|Bloque_3|qn[18]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[18]~22_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (\sc0|sc2|Bloque_2|Add0~14_combout\ & !\sc0|sc2|Bloque_6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_2|Add0~14_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_3|qn[18]~22_combout\);

-- Location: FF_X70_Y4_N7
\sc0|sc2|Bloque_3|qp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[18]~22_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(18));

-- Location: LCCOMB_X70_Y4_N26
\sc0|sc2|Bloque_2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~14_combout\ = (\sc0|sc2|Bloque_3|qp\(18) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\sc0|sc2|Bloque_2|Add0~13\ & VCC)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- (!\sc0|sc2|Bloque_2|Add0~13\)))) # (!\sc0|sc2|Bloque_3|qp\(18) & ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\sc0|sc2|Bloque_2|Add0~13\)) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\sc0|sc2|Bloque_2|Add0~13\) # 
-- (GND)))))
-- \sc0|sc2|Bloque_2|Add0~15\ = CARRY((\sc0|sc2|Bloque_3|qp\(18) & (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\sc0|sc2|Bloque_2|Add0~13\)) # (!\sc0|sc2|Bloque_3|qp\(18) & ((!\sc0|sc2|Bloque_2|Add0~13\) # 
-- (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_3|qp\(18),
	datab => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|Add0~13\,
	combout => \sc0|sc2|Bloque_2|Add0~14_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~15\);

-- Location: FF_X70_Y4_N27
\sc0|sc2|Bloque_4|qp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~14_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(18));

-- Location: LCCOMB_X76_Y4_N28
\sc2|sc0|txBuffer~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~11_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(12))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|state~q\,
	datab => \sc2|sc0|txBuffer\(12),
	datac => \sc0|sc2|Bloque_4|qp\(18),
	combout => \sc2|sc0|txBuffer~11_combout\);

-- Location: FF_X76_Y4_N29
\sc2|sc0|txBuffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~11_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(13));

-- Location: LCCOMB_X69_Y4_N4
\sc0|sc2|Bloque_3|qn[19]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[19]~21_combout\ = (!\sc0|sc2|Bloque_6|qp\(1) & (\sc0|sc2|Bloque_6|qp\(0) & \sc0|sc2|Bloque_2|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(1),
	datac => \sc0|sc2|Bloque_6|qp\(0),
	datad => \sc0|sc2|Bloque_2|Add0~16_combout\,
	combout => \sc0|sc2|Bloque_3|qn[19]~21_combout\);

-- Location: FF_X69_Y4_N5
\sc0|sc2|Bloque_3|qp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[19]~21_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(19));

-- Location: LCCOMB_X70_Y4_N28
\sc0|sc2|Bloque_2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~16_combout\ = ((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\sc0|sc2|Bloque_3|qp\(19) $ (!\sc0|sc2|Bloque_2|Add0~15\)))) # (GND)
-- \sc0|sc2|Bloque_2|Add0~17\ = CARRY((\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\sc0|sc2|Bloque_3|qp\(19)) # (!\sc0|sc2|Bloque_2|Add0~15\))) # (!\sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\sc0|sc2|Bloque_3|qp\(19) & 
-- !\sc0|sc2|Bloque_2|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \sc0|sc2|Bloque_3|qp\(19),
	datad => VCC,
	cin => \sc0|sc2|Bloque_2|Add0~15\,
	combout => \sc0|sc2|Bloque_2|Add0~16_combout\,
	cout => \sc0|sc2|Bloque_2|Add0~17\);

-- Location: FF_X70_Y4_N29
\sc0|sc2|Bloque_4|qp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~16_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(19));

-- Location: LCCOMB_X76_Y4_N18
\sc2|sc0|txBuffer~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~10_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(13))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(13),
	datac => \sc0|sc2|Bloque_4|qp\(19),
	datad => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~10_combout\);

-- Location: FF_X76_Y4_N19
\sc2|sc0|txBuffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~10_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(14));

-- Location: LCCOMB_X70_Y4_N4
\sc0|sc2|Bloque_3|qn[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_3|qn[20]~20_combout\ = (\sc0|sc2|Bloque_6|qp\(0) & (\sc0|sc2|Bloque_2|Add0~18_combout\ & !\sc0|sc2|Bloque_6|qp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc0|sc2|Bloque_6|qp\(0),
	datac => \sc0|sc2|Bloque_2|Add0~18_combout\,
	datad => \sc0|sc2|Bloque_6|qp\(1),
	combout => \sc0|sc2|Bloque_3|qn[20]~20_combout\);

-- Location: FF_X70_Y4_N5
\sc0|sc2|Bloque_3|qp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_3|qn[20]~20_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_3|qp\(20));

-- Location: LCCOMB_X70_Y4_N30
\sc0|sc2|Bloque_2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc0|sc2|Bloque_2|Add0~18_combout\ = \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (\sc0|sc2|Bloque_3|qp\(20) $ (\sc0|sc2|Bloque_2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc0|sc2|Bloque_1|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \sc0|sc2|Bloque_3|qp\(20),
	cin => \sc0|sc2|Bloque_2|Add0~17\,
	combout => \sc0|sc2|Bloque_2|Add0~18_combout\);

-- Location: FF_X70_Y4_N31
\sc0|sc2|Bloque_4|qp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc0|sc2|Bloque_2|Add0~18_combout\,
	clrn => \RST~input_o\,
	ena => \sc0|sc2|Bloque_6|qp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc0|sc2|Bloque_4|qp\(20));

-- Location: LCCOMB_X76_Y4_N0
\sc2|sc0|txBuffer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~9_combout\ = (\sc2|sc0|state~q\ & (\sc2|sc0|txBuffer\(14))) # (!\sc2|sc0|state~q\ & ((\sc0|sc2|Bloque_4|qp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(14),
	datac => \sc2|sc0|state~q\,
	datad => \sc0|sc2|Bloque_4|qp\(20),
	combout => \sc2|sc0|txBuffer~9_combout\);

-- Location: FF_X76_Y4_N1
\sc2|sc0|txBuffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~9_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(15));

-- Location: LCCOMB_X77_Y5_N22
\sc2|sc0|txBuffer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~8_combout\ = (\sc2|sc0|txBuffer\(15) & \sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(15),
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~8_combout\);

-- Location: FF_X77_Y5_N23
\sc2|sc0|txBuffer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~8_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(16));

-- Location: LCCOMB_X77_Y5_N8
\sc2|sc0|txBuffer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~7_combout\ = (\sc2|sc0|state~q\ & \sc2|sc0|txBuffer\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|state~q\,
	datac => \sc2|sc0|txBuffer\(16),
	combout => \sc2|sc0|txBuffer~7_combout\);

-- Location: FF_X77_Y5_N9
\sc2|sc0|txBuffer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~7_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(17));

-- Location: LCCOMB_X77_Y5_N6
\sc2|sc0|txBuffer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~6_combout\ = (\sc2|sc0|state~q\ & \sc2|sc0|txBuffer\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|state~q\,
	datac => \sc2|sc0|txBuffer\(17),
	combout => \sc2|sc0|txBuffer~6_combout\);

-- Location: FF_X77_Y5_N7
\sc2|sc0|txBuffer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~6_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(18));

-- Location: LCCOMB_X77_Y5_N24
\sc2|sc0|txBuffer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~5_combout\ = (\sc2|sc0|txBuffer\(18) & \sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|txBuffer\(18),
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~5_combout\);

-- Location: FF_X77_Y5_N25
\sc2|sc0|txBuffer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~5_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(19));

-- Location: LCCOMB_X77_Y5_N2
\sc2|sc0|txBuffer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~4_combout\ = (\sc2|sc0|txBuffer\(19)) # (!\sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(19),
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~4_combout\);

-- Location: FF_X77_Y5_N3
\sc2|sc0|txBuffer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~4_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(20));

-- Location: LCCOMB_X77_Y5_N16
\sc2|sc0|txBuffer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~3_combout\ = (\sc2|sc0|txBuffer\(20) & \sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(20),
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~3_combout\);

-- Location: FF_X77_Y5_N17
\sc2|sc0|txBuffer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~3_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(21));

-- Location: LCCOMB_X77_Y5_N26
\sc2|sc0|txBuffer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~2_combout\ = (\sc2|sc0|txBuffer\(21) & \sc2|sc0|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|txBuffer\(21),
	datac => \sc2|sc0|state~q\,
	combout => \sc2|sc0|txBuffer~2_combout\);

-- Location: FF_X77_Y5_N27
\sc2|sc0|txBuffer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~2_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(22));

-- Location: LCCOMB_X77_Y5_N10
\sc2|sc0|txBuffer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|txBuffer~0_combout\ = (\sc2|sc0|state~q\ & \sc2|sc0|txBuffer\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc2|sc0|state~q\,
	datac => \sc2|sc0|txBuffer\(22),
	combout => \sc2|sc0|txBuffer~0_combout\);

-- Location: FF_X77_Y5_N11
\sc2|sc0|txBuffer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|txBuffer~0_combout\,
	ena => \sc2|sc0|txBuffer[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|txBuffer\(23));

-- Location: LCCOMB_X77_Y5_N28
\sc2|sc0|mosi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2|sc0|mosi~0_combout\ = (\sc2|sc0|Equal0~1_combout\) # ((\sc2|sc0|process_0~2_combout\ & ((\sc2|sc0|txBuffer\(23)))) # (!\sc2|sc0|process_0~2_combout\ & (\sc2|sc0|mosi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc2|sc0|Equal0~1_combout\,
	datab => \sc2|sc0|process_0~2_combout\,
	datac => \sc2|sc0|mosi~q\,
	datad => \sc2|sc0|txBuffer\(23),
	combout => \sc2|sc0|mosi~0_combout\);

-- Location: FF_X77_Y5_N29
\sc2|sc0|mosi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sc5|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sc2|sc0|mosi~0_combout\,
	asdata => VCC,
	clrn => \RST~input_o\,
	sload => \sc2|sc0|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc2|sc0|mosi~q\);
END structure;


