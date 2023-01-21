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

-- DATE "01/08/2022 10:52:34"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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

ENTITY 	flip_flop_jk IS
    PORT (
	J : IN std_logic;
	K : IN std_logic;
	reloj : IN std_logic;
	Q : INOUT std_logic;
	Qn : INOUT std_logic
	);
END flip_flop_jk;

ARCHITECTURE structure OF flip_flop_jk IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_J : std_logic;
SIGNAL ww_K : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL \Q~input_o\ : std_logic;
SIGNAL \Qn~input_o\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Qn~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \J~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \Q~2_combout\ : std_logic;
SIGNAL \Q~reg0_q\ : std_logic;
SIGNAL \Ret~0_combout\ : std_logic;
SIGNAL \Ret~q\ : std_logic;
SIGNAL \Qn~2_combout\ : std_logic;
SIGNAL \Qn~reg0_q\ : std_logic;

BEGIN

ww_J <= J;
ww_K <= K;
ww_reloj <= reloj;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q~output_o\);

\Qn~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Qn~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Qn~output_o\);

\reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

\J~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_J,
	o => \J~input_o\);

\K~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

\Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~2_combout\ = (\Q~reg0_q\ & ((\J~input_o\) # (!\K~input_o\))) # (!\Q~reg0_q\ & (\J~input_o\ & !\K~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~reg0_q\,
	datab => \J~input_o\,
	datad => \K~input_o\,
	combout => \Q~2_combout\);

\Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \Q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q~reg0_q\);

\Ret~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ret~0_combout\ = (\Ret~q\ & ((\Q~reg0_q\) # (\J~input_o\ $ (!\K~input_o\)))) # (!\Ret~q\ & (\Q~reg0_q\ & (\J~input_o\ $ (\K~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ret~q\,
	datab => \Q~reg0_q\,
	datac => \J~input_o\,
	datad => \K~input_o\,
	combout => \Ret~0_combout\);

Ret : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \Ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ret~q\);

\Qn~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Qn~2_combout\ = (\Qn~reg0_q\ & ((\J~input_o\ $ (!\K~input_o\)) # (!\Ret~q\))) # (!\Qn~reg0_q\ & (!\Ret~q\ & (\J~input_o\ $ (\K~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Qn~reg0_q\,
	datab => \J~input_o\,
	datac => \K~input_o\,
	datad => \Ret~q\,
	combout => \Qn~2_combout\);

\Qn~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~input_o\,
	d => \Qn~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Qn~reg0_q\);

\Q~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q,
	o => \Q~input_o\);

\Qn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Qn,
	o => \Qn~input_o\);

Q <= \Q~output_o\;

Qn <= \Qn~output_o\;
END structure;


