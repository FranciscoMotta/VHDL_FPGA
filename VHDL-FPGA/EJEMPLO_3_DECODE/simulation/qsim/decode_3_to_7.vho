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

-- DATE "08/05/2022 16:44:26"

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

ENTITY 	decode_3_to_7 IS
    PORT (
	ints : IN std_logic_vector(2 DOWNTO 0);
	outs : OUT std_logic_vector(7 DOWNTO 0)
	);
END decode_3_to_7;

ARCHITECTURE structure OF decode_3_to_7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ints : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_outs : std_logic_vector(7 DOWNTO 0);
SIGNAL \outs[0]~output_o\ : std_logic;
SIGNAL \outs[1]~output_o\ : std_logic;
SIGNAL \outs[2]~output_o\ : std_logic;
SIGNAL \outs[3]~output_o\ : std_logic;
SIGNAL \outs[4]~output_o\ : std_logic;
SIGNAL \outs[5]~output_o\ : std_logic;
SIGNAL \outs[6]~output_o\ : std_logic;
SIGNAL \outs[7]~output_o\ : std_logic;
SIGNAL \ints[2]~input_o\ : std_logic;
SIGNAL \ints[0]~input_o\ : std_logic;
SIGNAL \ints[1]~input_o\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \outs[5]~0_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \outs[7]~1_combout\ : std_logic;
SIGNAL \ALT_INV_outs[7]~1_combout\ : std_logic;

BEGIN

ww_ints <= ints;
outs <= ww_outs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_outs[7]~1_combout\ <= NOT \outs[7]~1_combout\;

\outs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~0_combout\,
	devoe => ww_devoe,
	o => \outs[0]~output_o\);

\outs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~1_combout\,
	devoe => ww_devoe,
	o => \outs[1]~output_o\);

\outs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~2_combout\,
	devoe => ww_devoe,
	o => \outs[2]~output_o\);

\outs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~3_combout\,
	devoe => ww_devoe,
	o => \outs[3]~output_o\);

\outs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~4_combout\,
	devoe => ww_devoe,
	o => \outs[4]~output_o\);

\outs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outs[5]~0_combout\,
	devoe => ww_devoe,
	o => \outs[5]~output_o\);

\outs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~5_combout\,
	devoe => ww_devoe,
	o => \outs[6]~output_o\);

\outs[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outs[7]~1_combout\,
	devoe => ww_devoe,
	o => \outs[7]~output_o\);

\ints[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ints(2),
	o => \ints[2]~input_o\);

\ints[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ints(0),
	o => \ints[0]~input_o\);

\ints[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ints(1),
	o => \ints[1]~input_o\);

\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\ints[2]~input_o\ & (!\ints[0]~input_o\ & !\ints[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[0]~input_o\,
	datad => \ints[1]~input_o\,
	combout => \Equal7~0_combout\);

\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\ints[0]~input_o\ & (!\ints[2]~input_o\ & !\ints[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ints[0]~input_o\,
	datac => \ints[2]~input_o\,
	datad => \ints[1]~input_o\,
	combout => \Equal7~1_combout\);

\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\ints[1]~input_o\ & (!\ints[2]~input_o\ & !\ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ints[1]~input_o\,
	datac => \ints[2]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \Equal7~2_combout\);

\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (\ints[0]~input_o\ & (\ints[1]~input_o\ & !\ints[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ints[0]~input_o\,
	datab => \ints[1]~input_o\,
	datad => \ints[2]~input_o\,
	combout => \Equal7~3_combout\);

\Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\ints[2]~input_o\ & (!\ints[0]~input_o\ & !\ints[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ints[2]~input_o\,
	datac => \ints[0]~input_o\,
	datad => \ints[1]~input_o\,
	combout => \Equal7~4_combout\);

\outs[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outs[5]~0_combout\ = (\ints[2]~input_o\ & (\ints[0]~input_o\ & !\ints[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ints[2]~input_o\,
	datab => \ints[0]~input_o\,
	datad => \ints[1]~input_o\,
	combout => \outs[5]~0_combout\);

\Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (\ints[2]~input_o\ & (\ints[1]~input_o\ & !\ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ints[2]~input_o\,
	datab => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \Equal7~5_combout\);

\outs[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outs[7]~1_combout\ = ((!\ints[1]~input_o\) # (!\ints[0]~input_o\)) # (!\ints[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[0]~input_o\,
	datad => \ints[1]~input_o\,
	combout => \outs[7]~1_combout\);

ww_outs(0) <= \outs[0]~output_o\;

ww_outs(1) <= \outs[1]~output_o\;

ww_outs(2) <= \outs[2]~output_o\;

ww_outs(3) <= \outs[3]~output_o\;

ww_outs(4) <= \outs[4]~output_o\;

ww_outs(5) <= \outs[5]~output_o\;

ww_outs(6) <= \outs[6]~output_o\;

ww_outs(7) <= \outs[7]~output_o\;
END structure;


