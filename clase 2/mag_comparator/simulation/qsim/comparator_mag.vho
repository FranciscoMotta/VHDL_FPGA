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

-- DATE "01/07/2022 14:47:06"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comparator_mag IS
    PORT (
	inputs1 : IN std_logic_vector(3 DOWNTO 0);
	inputs2 : IN std_logic_vector(3 DOWNTO 0);
	mayor_igual_menor : OUT std_logic_vector(2 DOWNTO 0)
	);
END comparator_mag;

ARCHITECTURE structure OF comparator_mag IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputs1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inputs2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mayor_igual_menor : std_logic_vector(2 DOWNTO 0);
SIGNAL \mayor_igual_menor[0]~output_o\ : std_logic;
SIGNAL \mayor_igual_menor[1]~output_o\ : std_logic;
SIGNAL \mayor_igual_menor[2]~output_o\ : std_logic;
SIGNAL \inputs1[3]~input_o\ : std_logic;
SIGNAL \inputs1[2]~input_o\ : std_logic;
SIGNAL \inputs2[2]~input_o\ : std_logic;
SIGNAL \inputs2[3]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \inputs1[1]~input_o\ : std_logic;
SIGNAL \inputs1[0]~input_o\ : std_logic;
SIGNAL \inputs2[0]~input_o\ : std_logic;
SIGNAL \inputs2[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;

BEGIN

ww_inputs1 <= inputs1;
ww_inputs2 <= inputs2;
mayor_igual_menor <= ww_mayor_igual_menor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mayor_igual_menor[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \mayor_igual_menor[0]~output_o\);

\mayor_igual_menor[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \mayor_igual_menor[1]~output_o\);

\mayor_igual_menor[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~2_combout\,
	devoe => ww_devoe,
	o => \mayor_igual_menor[2]~output_o\);

\inputs1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs1(3),
	o => \inputs1[3]~input_o\);

\inputs1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs1(2),
	o => \inputs1[2]~input_o\);

\inputs2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs2(2),
	o => \inputs2[2]~input_o\);

\inputs2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs2(3),
	o => \inputs2[3]~input_o\);

\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\inputs1[3]~input_o\ & (((\inputs1[2]~input_o\ & !\inputs2[2]~input_o\)) # (!\inputs2[3]~input_o\))) # (!\inputs1[3]~input_o\ & (\inputs1[2]~input_o\ & (!\inputs2[2]~input_o\ & !\inputs2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs1[3]~input_o\,
	datab => \inputs1[2]~input_o\,
	datac => \inputs2[2]~input_o\,
	datad => \inputs2[3]~input_o\,
	combout => \LessThan0~0_combout\);

\inputs1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs1(1),
	o => \inputs1[1]~input_o\);

\inputs1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs1(0),
	o => \inputs1[0]~input_o\);

\inputs2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs2(0),
	o => \inputs2[0]~input_o\);

\inputs2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs2(1),
	o => \inputs2[1]~input_o\);

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\inputs1[1]~input_o\ & (((\inputs1[0]~input_o\ & !\inputs2[0]~input_o\)) # (!\inputs2[1]~input_o\))) # (!\inputs1[1]~input_o\ & (\inputs1[0]~input_o\ & (!\inputs2[0]~input_o\ & !\inputs2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs1[1]~input_o\,
	datab => \inputs1[0]~input_o\,
	datac => \inputs2[0]~input_o\,
	datad => \inputs2[1]~input_o\,
	combout => \LessThan0~1_combout\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\inputs1[2]~input_o\ & (\inputs2[2]~input_o\ & (\inputs1[3]~input_o\ $ (!\inputs2[3]~input_o\)))) # (!\inputs1[2]~input_o\ & (!\inputs2[2]~input_o\ & (\inputs1[3]~input_o\ $ (!\inputs2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs1[2]~input_o\,
	datab => \inputs1[3]~input_o\,
	datac => \inputs2[3]~input_o\,
	datad => \inputs2[2]~input_o\,
	combout => \Equal0~0_combout\);

\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \Equal0~0_combout\,
	combout => \LessThan0~2_combout\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\inputs1[1]~input_o\ & (\inputs2[1]~input_o\ & (\inputs1[0]~input_o\ $ (!\inputs2[0]~input_o\)))) # (!\inputs1[1]~input_o\ & (!\inputs2[1]~input_o\ & (\inputs1[0]~input_o\ $ (!\inputs2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs1[1]~input_o\,
	datab => \inputs1[0]~input_o\,
	datac => \inputs2[0]~input_o\,
	datad => \inputs2[1]~input_o\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\inputs2[3]~input_o\ & (((\inputs2[2]~input_o\ & !\inputs1[2]~input_o\)) # (!\inputs1[3]~input_o\))) # (!\inputs2[3]~input_o\ & (\inputs2[2]~input_o\ & (!\inputs1[2]~input_o\ & !\inputs1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs2[3]~input_o\,
	datab => \inputs2[2]~input_o\,
	datac => \inputs1[2]~input_o\,
	datad => \inputs1[3]~input_o\,
	combout => \LessThan1~0_combout\);

\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\inputs2[1]~input_o\ & (((\inputs2[0]~input_o\ & !\inputs1[0]~input_o\)) # (!\inputs1[1]~input_o\))) # (!\inputs2[1]~input_o\ & (\inputs2[0]~input_o\ & (!\inputs1[0]~input_o\ & !\inputs1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs2[1]~input_o\,
	datab => \inputs2[0]~input_o\,
	datac => \inputs1[0]~input_o\,
	datad => \inputs1[1]~input_o\,
	combout => \LessThan1~1_combout\);

\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~0_combout\) # ((\Equal0~0_combout\ & \LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

ww_mayor_igual_menor(0) <= \mayor_igual_menor[0]~output_o\;

ww_mayor_igual_menor(1) <= \mayor_igual_menor[1]~output_o\;

ww_mayor_igual_menor(2) <= \mayor_igual_menor[2]~output_o\;
END structure;


