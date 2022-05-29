-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/28/2022 22:23:58"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pruebamem IS
    PORT (
	pin_name1 : OUT std_logic;
	pin_name2 : OUT std_logic;
	pin_name3 : OUT std_logic;
	pin_name4 : OUT std_logic;
	pin_name5 : OUT std_logic;
	pin_name6 : OUT std_logic;
	pin_name7 : OUT std_logic;
	pin_name9 : OUT std_logic;
	CLK : IN std_logic;
	pin_name10 : OUT std_logic;
	pin_name11 : OUT std_logic;
	pin_name12 : OUT std_logic;
	memout : OUT std_logic_vector(7 DOWNTO 0);
	address : IN std_logic_vector(1 DOWNTO 0)
	);
END pruebamem;

-- Design Ports Information
-- pin_name1	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name2	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name3	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name4	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name5	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name6	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name7	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name9	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name10	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name11	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pin_name12	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[7]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[6]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[5]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- memout[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pruebamem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL ww_pin_name7 : std_logic;
SIGNAL ww_pin_name9 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_pin_name10 : std_logic;
SIGNAL ww_pin_name11 : std_logic;
SIGNAL ww_pin_name12 : std_logic;
SIGNAL ww_memout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|safe_q[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|safe_q[25]~clkctrl_outclk\ : std_logic;
SIGNAL \address~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst20|srom|rom_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(25 DOWNTO 0);

BEGIN

pin_name1 <= ww_pin_name1;
pin_name2 <= ww_pin_name2;
pin_name3 <= ww_pin_name3;
pin_name4 <= ww_pin_name4;
pin_name5 <= ww_pin_name5;
pin_name6 <= ww_pin_name6;
pin_name7 <= ww_pin_name7;
pin_name9 <= ww_pin_name9;
ww_CLK <= CLK;
pin_name10 <= ww_pin_name10;
pin_name11 <= ww_pin_name11;
pin_name12 <= ww_pin_name12;
memout <= ww_memout;
ww_address <= address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst20|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address~combout\(1) & \address~combout\(0));

\inst20|srom|rom_block|auto_generated|q_a\(0) <= \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst20|srom|rom_block|auto_generated|q_a\(1) <= \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst20|srom|rom_block|auto_generated|q_a\(2) <= \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst20|srom|rom_block|auto_generated|q_a\(3) <= \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst20|srom|rom_block|auto_generated|q_a\(4) <= \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst20|srom|rom_block|auto_generated|q_a\(5) <= \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst20|srom|rom_block|auto_generated|q_a\(6) <= \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst20|srom|rom_block|auto_generated|q_a\(7) <= \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst1|LPM_COUNTER_component|auto_generated|safe_q[25]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|LPM_COUNTER_component|auto_generated|safe_q\(25));

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

-- Location: LCFF_X23_Y25_N21
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(23));

-- Location: LCFF_X23_Y25_N17
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(21));

-- Location: LCFF_X23_Y25_N13
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(19));

-- Location: LCFF_X23_Y25_N11
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(18));

-- Location: LCFF_X23_Y26_N21
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCFF_X23_Y26_N17
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X23_Y26_N16
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X23_Y26_N20
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X23_Y25_N10
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(18) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(18) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(18) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X23_Y25_N12
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(19) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(19) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCCOMB_X23_Y25_N16
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(21) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(21) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X23_Y25_N20
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(23) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(23) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCCOMB_X24_Y25_N24
\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(20) & (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(21) & 
-- (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(19) & \inst1|LPM_COUNTER_component|auto_generated|safe_q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(18),
	combout => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y26_N6
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst1|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X22_Y26_N8
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X23_Y26_N8
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X23_Y26_N9
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X23_Y26_N10
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X23_Y26_N11
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X23_Y26_N12
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X23_Y26_N14
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X23_Y26_N15
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCFF_X23_Y26_N13
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X23_Y26_N2
\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(5) & (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(4) 
-- & \inst1|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X23_Y26_N18
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X23_Y26_N19
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X23_Y26_N22
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X23_Y26_N23
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X23_Y26_N24
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X23_Y26_N25
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X23_Y26_N0
\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ = (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(8) & 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(9) & !\inst1|LPM_COUNTER_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X23_Y26_N4
\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ & 
-- (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(0) & \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\,
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\);

-- Location: LCCOMB_X23_Y26_N26
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X23_Y26_N27
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X23_Y26_N28
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X23_Y26_N29
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X23_Y26_N30
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X23_Y26_N31
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X23_Y25_N0
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X23_Y25_N1
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X23_Y25_N2
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X23_Y25_N3
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X23_Y25_N4
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X23_Y25_N5
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X23_Y25_N6
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X23_Y25_N7
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X24_Y25_N2
\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ = (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(17) & (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(16) & 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(15) & \inst1|LPM_COUNTER_component|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X24_Y25_N20
\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(10) & 
-- (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(12) & \inst1|LPM_COUNTER_component|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(11),
	combout => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X23_Y25_N8
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCFF_X23_Y25_N9
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCCOMB_X23_Y25_N14
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(20) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(20) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(20) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCFF_X23_Y25_N15
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(20));

-- Location: LCCOMB_X23_Y25_N18
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(22) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(22) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(22) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCFF_X23_Y25_N19
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(22));

-- Location: LCCOMB_X23_Y25_N22
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(24) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(24) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(24) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(24),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\);

-- Location: LCFF_X23_Y25_N23
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(24));

-- Location: LCCOMB_X23_Y25_N24
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(25) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(25) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(25),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\);

-- Location: LCFF_X23_Y25_N25
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(25));

-- Location: LCCOMB_X23_Y25_N28
\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(23) & (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(24) & 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(25) & \inst1|LPM_COUNTER_component|auto_generated|safe_q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(24),
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(25),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(22),
	combout => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X24_Y25_N14
\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ & (\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ & 
-- (\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ & \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	datab => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datac => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\,
	datad => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X23_Y25_N26
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\ = !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\);

-- Location: LCCOMB_X23_Y25_N30
\inst1|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\) # ((\inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ & 
-- \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\,
	datac => \inst1|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCFF_X23_Y26_N7
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst1|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: CLKCTRL_G10
\inst1|LPM_COUNTER_component|auto_generated|safe_q[25]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|LPM_COUNTER_component|auto_generated|safe_q[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|LPM_COUNTER_component|auto_generated|safe_q[25]~clkctrl_outclk\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_address(0),
	combout => \address~combout\(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_address(1),
	combout => \address~combout\(1));

-- Location: M4K_X17_Y26
\inst20|srom|rom_block|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"08010101",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/gualg/OneDrive - PUJ Cali/ING SISTEMAS/SEMESTRE 3/LAB/Proyectofinalfinal/galponMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:inst20|altrom:srom|altsyncram:rom_block|altsyncram_b881:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 4,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 2,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst1|LPM_COUNTER_component|auto_generated|safe_q[25]~clkctrl_outclk\,
	portaaddr => \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst20|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name1);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name2);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name3);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name4);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name5);

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name6);

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name7);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name9~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name9);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name10~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name10);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name11~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name11);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pin_name12~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_name12);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20|srom|rom_block|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(7));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20|srom|rom_block|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(6));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20|srom|rom_block|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20|srom|rom_block|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(4));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20|srom|rom_block|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20|srom|rom_block|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(2));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20|srom|rom_block|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\memout[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst20|srom|rom_block|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_memout(0));
END structure;


