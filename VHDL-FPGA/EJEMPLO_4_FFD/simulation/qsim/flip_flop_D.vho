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

-- DATE "08/05/2022 22:14:33"

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

ENTITY 	flip_flop_D IS
    PORT (
	int_D : IN std_logic;
	int_clk : IN std_logic;
	out_D : OUT std_logic;
	out_D_n : OUT std_logic
	);
END flip_flop_D;

ARCHITECTURE structure OF flip_flop_D IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_int_D : std_logic;
SIGNAL ww_int_clk : std_logic;
SIGNAL ww_out_D : std_logic;
SIGNAL ww_out_D_n : std_logic;
SIGNAL \out_D~output_o\ : std_logic;
SIGNAL \out_D_n~output_o\ : std_logic;
SIGNAL \int_clk~input_o\ : std_logic;
SIGNAL \int_D~input_o\ : std_logic;
SIGNAL \out_D~reg0_q\ : std_logic;
SIGNAL \out_D_n~0_combout\ : std_logic;
SIGNAL \out_D_n~reg0_q\ : std_logic;

BEGIN

ww_int_D <= int_D;
ww_int_clk <= int_clk;
out_D <= ww_out_D;
out_D_n <= ww_out_D_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_D~reg0_q\,
	devoe => ww_devoe,
	o => \out_D~output_o\);

\out_D_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_D_n~reg0_q\,
	devoe => ww_devoe,
	o => \out_D_n~output_o\);

\int_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_int_clk,
	o => \int_clk~input_o\);

\int_D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_int_D,
	o => \int_D~input_o\);

\out_D~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \int_clk~input_o\,
	d => \int_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_D~reg0_q\);

\out_D_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_D_n~0_combout\ = !\int_D~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_D~input_o\,
	combout => \out_D_n~0_combout\);

\out_D_n~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \int_clk~input_o\,
	d => \out_D_n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_D_n~reg0_q\);

ww_out_D <= \out_D~output_o\;

ww_out_D_n <= \out_D_n~output_o\;
END structure;


