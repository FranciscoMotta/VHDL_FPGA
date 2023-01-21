-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/08/2022 17:56:37"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	shift_register_4_b IS
    PORT (
	shift_register_clock : IN std_logic;
	shift_register_leds : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END shift_register_4_b;

ARCHITECTURE structure OF shift_register_4_b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_shift_register_clock : std_logic;
SIGNAL ww_shift_register_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift_register_leds[0]~output_o\ : std_logic;
SIGNAL \shift_register_leds[1]~output_o\ : std_logic;
SIGNAL \shift_register_leds[2]~output_o\ : std_logic;
SIGNAL \shift_register_leds[3]~output_o\ : std_logic;
SIGNAL \shift_register_clock~input_o\ : std_logic;
SIGNAL \registro_de_contador[0]~72_combout\ : std_logic;
SIGNAL \registro_de_contador[1]~24_combout\ : std_logic;
SIGNAL \registro_de_contador[1]~25\ : std_logic;
SIGNAL \registro_de_contador[2]~26_combout\ : std_logic;
SIGNAL \registro_de_contador[2]~27\ : std_logic;
SIGNAL \registro_de_contador[3]~28_combout\ : std_logic;
SIGNAL \registro_de_contador[3]~29\ : std_logic;
SIGNAL \registro_de_contador[4]~30_combout\ : std_logic;
SIGNAL \registro_de_contador[4]~31\ : std_logic;
SIGNAL \registro_de_contador[5]~32_combout\ : std_logic;
SIGNAL \registro_de_contador[5]~33\ : std_logic;
SIGNAL \registro_de_contador[6]~34_combout\ : std_logic;
SIGNAL \registro_de_contador[6]~35\ : std_logic;
SIGNAL \registro_de_contador[7]~36_combout\ : std_logic;
SIGNAL \registro_de_contador[7]~37\ : std_logic;
SIGNAL \registro_de_contador[8]~38_combout\ : std_logic;
SIGNAL \registro_de_contador[8]~39\ : std_logic;
SIGNAL \registro_de_contador[9]~40_combout\ : std_logic;
SIGNAL \registro_de_contador[9]~41\ : std_logic;
SIGNAL \registro_de_contador[10]~42_combout\ : std_logic;
SIGNAL \registro_de_contador[10]~43\ : std_logic;
SIGNAL \registro_de_contador[11]~44_combout\ : std_logic;
SIGNAL \registro_de_contador[11]~45\ : std_logic;
SIGNAL \registro_de_contador[12]~46_combout\ : std_logic;
SIGNAL \registro_de_contador[12]~47\ : std_logic;
SIGNAL \registro_de_contador[13]~48_combout\ : std_logic;
SIGNAL \registro_de_contador[13]~49\ : std_logic;
SIGNAL \registro_de_contador[14]~50_combout\ : std_logic;
SIGNAL \registro_de_contador[14]~51\ : std_logic;
SIGNAL \registro_de_contador[15]~52_combout\ : std_logic;
SIGNAL \registro_de_contador[15]~53\ : std_logic;
SIGNAL \registro_de_contador[16]~54_combout\ : std_logic;
SIGNAL \registro_de_contador[16]~55\ : std_logic;
SIGNAL \registro_de_contador[17]~56_combout\ : std_logic;
SIGNAL \registro_de_contador[17]~57\ : std_logic;
SIGNAL \registro_de_contador[18]~58_combout\ : std_logic;
SIGNAL \registro_de_contador[18]~59\ : std_logic;
SIGNAL \registro_de_contador[19]~60_combout\ : std_logic;
SIGNAL \registro_de_contador[19]~61\ : std_logic;
SIGNAL \registro_de_contador[20]~62_combout\ : std_logic;
SIGNAL \registro_de_contador[20]~63\ : std_logic;
SIGNAL \registro_de_contador[21]~64_combout\ : std_logic;
SIGNAL \registro_de_contador[21]~65\ : std_logic;
SIGNAL \registro_de_contador[22]~66_combout\ : std_logic;
SIGNAL \registro_de_contador[22]~67\ : std_logic;
SIGNAL \registro_de_contador[23]~68_combout\ : std_logic;
SIGNAL \registro_de_contador[23]~69\ : std_logic;
SIGNAL \registro_de_contador[24]~70_combout\ : std_logic;
SIGNAL \starter_out~q\ : std_logic;
SIGNAL \shift_register_leds~1_combout\ : std_logic;
SIGNAL \shift_register_leds[1]~reg0_q\ : std_logic;
SIGNAL \shift_register_leds~2_combout\ : std_logic;
SIGNAL \shift_register_leds[2]~reg0_q\ : std_logic;
SIGNAL \shift_register_leds~3_combout\ : std_logic;
SIGNAL \shift_register_leds[3]~reg0_q\ : std_logic;
SIGNAL \shift_register_leds~0_combout\ : std_logic;
SIGNAL \shift_register_leds[0]~reg0_q\ : std_logic;
SIGNAL registro_de_contador : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_shift_register_clock <= shift_register_clock;
shift_register_leds <= ww_shift_register_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\shift_register_leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift_register_leds[0]~reg0_q\,
	devoe => ww_devoe,
	o => \shift_register_leds[0]~output_o\);

\shift_register_leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift_register_leds[1]~reg0_q\,
	devoe => ww_devoe,
	o => \shift_register_leds[1]~output_o\);

\shift_register_leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift_register_leds[2]~reg0_q\,
	devoe => ww_devoe,
	o => \shift_register_leds[2]~output_o\);

\shift_register_leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift_register_leds[3]~reg0_q\,
	devoe => ww_devoe,
	o => \shift_register_leds[3]~output_o\);

\shift_register_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift_register_clock,
	o => \shift_register_clock~input_o\);

\registro_de_contador[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[0]~72_combout\ = !registro_de_contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(0),
	combout => \registro_de_contador[0]~72_combout\);

\registro_de_contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(0));

\registro_de_contador[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[1]~24_combout\ = (registro_de_contador(0) & (registro_de_contador(1) $ (VCC))) # (!registro_de_contador(0) & (registro_de_contador(1) & VCC))
-- \registro_de_contador[1]~25\ = CARRY((registro_de_contador(0) & registro_de_contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(0),
	datab => registro_de_contador(1),
	datad => VCC,
	combout => \registro_de_contador[1]~24_combout\,
	cout => \registro_de_contador[1]~25\);

\registro_de_contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(1));

\registro_de_contador[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[2]~26_combout\ = (registro_de_contador(2) & (!\registro_de_contador[1]~25\)) # (!registro_de_contador(2) & ((\registro_de_contador[1]~25\) # (GND)))
-- \registro_de_contador[2]~27\ = CARRY((!\registro_de_contador[1]~25\) # (!registro_de_contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(2),
	datad => VCC,
	cin => \registro_de_contador[1]~25\,
	combout => \registro_de_contador[2]~26_combout\,
	cout => \registro_de_contador[2]~27\);

\registro_de_contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(2));

\registro_de_contador[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[3]~28_combout\ = (registro_de_contador(3) & (\registro_de_contador[2]~27\ $ (GND))) # (!registro_de_contador(3) & (!\registro_de_contador[2]~27\ & VCC))
-- \registro_de_contador[3]~29\ = CARRY((registro_de_contador(3) & !\registro_de_contador[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(3),
	datad => VCC,
	cin => \registro_de_contador[2]~27\,
	combout => \registro_de_contador[3]~28_combout\,
	cout => \registro_de_contador[3]~29\);

\registro_de_contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(3));

\registro_de_contador[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[4]~30_combout\ = (registro_de_contador(4) & (!\registro_de_contador[3]~29\)) # (!registro_de_contador(4) & ((\registro_de_contador[3]~29\) # (GND)))
-- \registro_de_contador[4]~31\ = CARRY((!\registro_de_contador[3]~29\) # (!registro_de_contador(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(4),
	datad => VCC,
	cin => \registro_de_contador[3]~29\,
	combout => \registro_de_contador[4]~30_combout\,
	cout => \registro_de_contador[4]~31\);

\registro_de_contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(4));

\registro_de_contador[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[5]~32_combout\ = (registro_de_contador(5) & (\registro_de_contador[4]~31\ $ (GND))) # (!registro_de_contador(5) & (!\registro_de_contador[4]~31\ & VCC))
-- \registro_de_contador[5]~33\ = CARRY((registro_de_contador(5) & !\registro_de_contador[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(5),
	datad => VCC,
	cin => \registro_de_contador[4]~31\,
	combout => \registro_de_contador[5]~32_combout\,
	cout => \registro_de_contador[5]~33\);

\registro_de_contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(5));

\registro_de_contador[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[6]~34_combout\ = (registro_de_contador(6) & (!\registro_de_contador[5]~33\)) # (!registro_de_contador(6) & ((\registro_de_contador[5]~33\) # (GND)))
-- \registro_de_contador[6]~35\ = CARRY((!\registro_de_contador[5]~33\) # (!registro_de_contador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(6),
	datad => VCC,
	cin => \registro_de_contador[5]~33\,
	combout => \registro_de_contador[6]~34_combout\,
	cout => \registro_de_contador[6]~35\);

\registro_de_contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(6));

\registro_de_contador[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[7]~36_combout\ = (registro_de_contador(7) & (\registro_de_contador[6]~35\ $ (GND))) # (!registro_de_contador(7) & (!\registro_de_contador[6]~35\ & VCC))
-- \registro_de_contador[7]~37\ = CARRY((registro_de_contador(7) & !\registro_de_contador[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(7),
	datad => VCC,
	cin => \registro_de_contador[6]~35\,
	combout => \registro_de_contador[7]~36_combout\,
	cout => \registro_de_contador[7]~37\);

\registro_de_contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(7));

\registro_de_contador[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[8]~38_combout\ = (registro_de_contador(8) & (!\registro_de_contador[7]~37\)) # (!registro_de_contador(8) & ((\registro_de_contador[7]~37\) # (GND)))
-- \registro_de_contador[8]~39\ = CARRY((!\registro_de_contador[7]~37\) # (!registro_de_contador(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(8),
	datad => VCC,
	cin => \registro_de_contador[7]~37\,
	combout => \registro_de_contador[8]~38_combout\,
	cout => \registro_de_contador[8]~39\);

\registro_de_contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(8));

\registro_de_contador[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[9]~40_combout\ = (registro_de_contador(9) & (\registro_de_contador[8]~39\ $ (GND))) # (!registro_de_contador(9) & (!\registro_de_contador[8]~39\ & VCC))
-- \registro_de_contador[9]~41\ = CARRY((registro_de_contador(9) & !\registro_de_contador[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(9),
	datad => VCC,
	cin => \registro_de_contador[8]~39\,
	combout => \registro_de_contador[9]~40_combout\,
	cout => \registro_de_contador[9]~41\);

\registro_de_contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(9));

\registro_de_contador[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[10]~42_combout\ = (registro_de_contador(10) & (!\registro_de_contador[9]~41\)) # (!registro_de_contador(10) & ((\registro_de_contador[9]~41\) # (GND)))
-- \registro_de_contador[10]~43\ = CARRY((!\registro_de_contador[9]~41\) # (!registro_de_contador(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(10),
	datad => VCC,
	cin => \registro_de_contador[9]~41\,
	combout => \registro_de_contador[10]~42_combout\,
	cout => \registro_de_contador[10]~43\);

\registro_de_contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(10));

\registro_de_contador[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[11]~44_combout\ = (registro_de_contador(11) & (\registro_de_contador[10]~43\ $ (GND))) # (!registro_de_contador(11) & (!\registro_de_contador[10]~43\ & VCC))
-- \registro_de_contador[11]~45\ = CARRY((registro_de_contador(11) & !\registro_de_contador[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(11),
	datad => VCC,
	cin => \registro_de_contador[10]~43\,
	combout => \registro_de_contador[11]~44_combout\,
	cout => \registro_de_contador[11]~45\);

\registro_de_contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(11));

\registro_de_contador[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[12]~46_combout\ = (registro_de_contador(12) & (!\registro_de_contador[11]~45\)) # (!registro_de_contador(12) & ((\registro_de_contador[11]~45\) # (GND)))
-- \registro_de_contador[12]~47\ = CARRY((!\registro_de_contador[11]~45\) # (!registro_de_contador(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(12),
	datad => VCC,
	cin => \registro_de_contador[11]~45\,
	combout => \registro_de_contador[12]~46_combout\,
	cout => \registro_de_contador[12]~47\);

\registro_de_contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(12));

\registro_de_contador[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[13]~48_combout\ = (registro_de_contador(13) & (\registro_de_contador[12]~47\ $ (GND))) # (!registro_de_contador(13) & (!\registro_de_contador[12]~47\ & VCC))
-- \registro_de_contador[13]~49\ = CARRY((registro_de_contador(13) & !\registro_de_contador[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(13),
	datad => VCC,
	cin => \registro_de_contador[12]~47\,
	combout => \registro_de_contador[13]~48_combout\,
	cout => \registro_de_contador[13]~49\);

\registro_de_contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(13));

\registro_de_contador[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[14]~50_combout\ = (registro_de_contador(14) & (!\registro_de_contador[13]~49\)) # (!registro_de_contador(14) & ((\registro_de_contador[13]~49\) # (GND)))
-- \registro_de_contador[14]~51\ = CARRY((!\registro_de_contador[13]~49\) # (!registro_de_contador(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(14),
	datad => VCC,
	cin => \registro_de_contador[13]~49\,
	combout => \registro_de_contador[14]~50_combout\,
	cout => \registro_de_contador[14]~51\);

\registro_de_contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(14));

\registro_de_contador[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[15]~52_combout\ = (registro_de_contador(15) & (\registro_de_contador[14]~51\ $ (GND))) # (!registro_de_contador(15) & (!\registro_de_contador[14]~51\ & VCC))
-- \registro_de_contador[15]~53\ = CARRY((registro_de_contador(15) & !\registro_de_contador[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(15),
	datad => VCC,
	cin => \registro_de_contador[14]~51\,
	combout => \registro_de_contador[15]~52_combout\,
	cout => \registro_de_contador[15]~53\);

\registro_de_contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(15));

\registro_de_contador[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[16]~54_combout\ = (registro_de_contador(16) & (!\registro_de_contador[15]~53\)) # (!registro_de_contador(16) & ((\registro_de_contador[15]~53\) # (GND)))
-- \registro_de_contador[16]~55\ = CARRY((!\registro_de_contador[15]~53\) # (!registro_de_contador(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(16),
	datad => VCC,
	cin => \registro_de_contador[15]~53\,
	combout => \registro_de_contador[16]~54_combout\,
	cout => \registro_de_contador[16]~55\);

\registro_de_contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(16));

\registro_de_contador[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[17]~56_combout\ = (registro_de_contador(17) & (\registro_de_contador[16]~55\ $ (GND))) # (!registro_de_contador(17) & (!\registro_de_contador[16]~55\ & VCC))
-- \registro_de_contador[17]~57\ = CARRY((registro_de_contador(17) & !\registro_de_contador[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(17),
	datad => VCC,
	cin => \registro_de_contador[16]~55\,
	combout => \registro_de_contador[17]~56_combout\,
	cout => \registro_de_contador[17]~57\);

\registro_de_contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(17));

\registro_de_contador[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[18]~58_combout\ = (registro_de_contador(18) & (!\registro_de_contador[17]~57\)) # (!registro_de_contador(18) & ((\registro_de_contador[17]~57\) # (GND)))
-- \registro_de_contador[18]~59\ = CARRY((!\registro_de_contador[17]~57\) # (!registro_de_contador(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(18),
	datad => VCC,
	cin => \registro_de_contador[17]~57\,
	combout => \registro_de_contador[18]~58_combout\,
	cout => \registro_de_contador[18]~59\);

\registro_de_contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(18));

\registro_de_contador[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[19]~60_combout\ = (registro_de_contador(19) & (\registro_de_contador[18]~59\ $ (GND))) # (!registro_de_contador(19) & (!\registro_de_contador[18]~59\ & VCC))
-- \registro_de_contador[19]~61\ = CARRY((registro_de_contador(19) & !\registro_de_contador[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(19),
	datad => VCC,
	cin => \registro_de_contador[18]~59\,
	combout => \registro_de_contador[19]~60_combout\,
	cout => \registro_de_contador[19]~61\);

\registro_de_contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(19));

\registro_de_contador[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[20]~62_combout\ = (registro_de_contador(20) & (!\registro_de_contador[19]~61\)) # (!registro_de_contador(20) & ((\registro_de_contador[19]~61\) # (GND)))
-- \registro_de_contador[20]~63\ = CARRY((!\registro_de_contador[19]~61\) # (!registro_de_contador(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(20),
	datad => VCC,
	cin => \registro_de_contador[19]~61\,
	combout => \registro_de_contador[20]~62_combout\,
	cout => \registro_de_contador[20]~63\);

\registro_de_contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(20));

\registro_de_contador[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[21]~64_combout\ = (registro_de_contador(21) & (\registro_de_contador[20]~63\ $ (GND))) # (!registro_de_contador(21) & (!\registro_de_contador[20]~63\ & VCC))
-- \registro_de_contador[21]~65\ = CARRY((registro_de_contador(21) & !\registro_de_contador[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(21),
	datad => VCC,
	cin => \registro_de_contador[20]~63\,
	combout => \registro_de_contador[21]~64_combout\,
	cout => \registro_de_contador[21]~65\);

\registro_de_contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(21));

\registro_de_contador[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[22]~66_combout\ = (registro_de_contador(22) & (!\registro_de_contador[21]~65\)) # (!registro_de_contador(22) & ((\registro_de_contador[21]~65\) # (GND)))
-- \registro_de_contador[22]~67\ = CARRY((!\registro_de_contador[21]~65\) # (!registro_de_contador(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(22),
	datad => VCC,
	cin => \registro_de_contador[21]~65\,
	combout => \registro_de_contador[22]~66_combout\,
	cout => \registro_de_contador[22]~67\);

\registro_de_contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(22));

\registro_de_contador[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[23]~68_combout\ = (registro_de_contador(23) & (\registro_de_contador[22]~67\ $ (GND))) # (!registro_de_contador(23) & (!\registro_de_contador[22]~67\ & VCC))
-- \registro_de_contador[23]~69\ = CARRY((registro_de_contador(23) & !\registro_de_contador[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(23),
	datad => VCC,
	cin => \registro_de_contador[22]~67\,
	combout => \registro_de_contador[23]~68_combout\,
	cout => \registro_de_contador[23]~69\);

\registro_de_contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(23));

\registro_de_contador[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \registro_de_contador[24]~70_combout\ = registro_de_contador(24) $ (\registro_de_contador[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => registro_de_contador(24),
	cin => \registro_de_contador[23]~69\,
	combout => \registro_de_contador[24]~70_combout\);

\registro_de_contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \shift_register_clock~input_o\,
	d => \registro_de_contador[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registro_de_contador(24));

starter_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registro_de_contador(24),
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \starter_out~q\);

\shift_register_leds~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_register_leds~1_combout\ = (\shift_register_leds[0]~reg0_q\ & \starter_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift_register_leds[0]~reg0_q\,
	datab => \starter_out~q\,
	combout => \shift_register_leds~1_combout\);

\shift_register_leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registro_de_contador(24),
	d => \shift_register_leds~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_register_leds[1]~reg0_q\);

\shift_register_leds~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_register_leds~2_combout\ = (\shift_register_leds[1]~reg0_q\ & \starter_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift_register_leds[1]~reg0_q\,
	datab => \starter_out~q\,
	combout => \shift_register_leds~2_combout\);

\shift_register_leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registro_de_contador(24),
	d => \shift_register_leds~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_register_leds[2]~reg0_q\);

\shift_register_leds~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_register_leds~3_combout\ = (\shift_register_leds[2]~reg0_q\ & \starter_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift_register_leds[2]~reg0_q\,
	datab => \starter_out~q\,
	combout => \shift_register_leds~3_combout\);

\shift_register_leds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registro_de_contador(24),
	d => \shift_register_leds~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_register_leds[3]~reg0_q\);

\shift_register_leds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_register_leds~0_combout\ = (\shift_register_leds[3]~reg0_q\) # (!\starter_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift_register_leds[3]~reg0_q\,
	datad => \starter_out~q\,
	combout => \shift_register_leds~0_combout\);

\shift_register_leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registro_de_contador(24),
	d => \shift_register_leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_register_leds[0]~reg0_q\);

ww_shift_register_leds(0) <= \shift_register_leds[0]~output_o\;

ww_shift_register_leds(1) <= \shift_register_leds[1]~output_o\;

ww_shift_register_leds(2) <= \shift_register_leds[2]~output_o\;

ww_shift_register_leds(3) <= \shift_register_leds[3]~output_o\;
END structure;


