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

-- DATE "12/22/2022 17:50:06"

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

ENTITY 	repaso_vhdl IS
    PORT (
	entradas : IN std_logic_vector(1 DOWNTO 0);
	salidas : OUT std_logic_vector(3 DOWNTO 0)
	);
END repaso_vhdl;

ARCHITECTURE structure OF repaso_vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradas : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(3 DOWNTO 0);
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \salidas[2]~output_o\ : std_logic;
SIGNAL \salidas[3]~output_o\ : std_logic;
SIGNAL \entradas[0]~input_o\ : std_logic;
SIGNAL \entradas[1]~input_o\ : std_logic;
SIGNAL \salidas[3]~0_combout\ : std_logic;
SIGNAL \salidas[3]~1_combout\ : std_logic;
SIGNAL \salidas[3]~2_combout\ : std_logic;
SIGNAL \salidas[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_salidas[3]~0_combout\ : std_logic;

BEGIN

ww_entradas <= entradas;
salidas <= ww_salidas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_salidas[3]~0_combout\ <= NOT \salidas[3]~0_combout\;

\salidas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_salidas[3]~0_combout\,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

\salidas[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salidas[3]~1_combout\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

\salidas[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salidas[3]~2_combout\,
	devoe => ww_devoe,
	o => \salidas[2]~output_o\);

\salidas[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \salidas[3]~3_combout\,
	devoe => ww_devoe,
	o => \salidas[3]~output_o\);

\entradas[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(0),
	o => \entradas[0]~input_o\);

\entradas[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(1),
	o => \entradas[1]~input_o\);

\salidas[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \salidas[3]~0_combout\ = (\entradas[0]~input_o\) # (\entradas[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[0]~input_o\,
	datab => \entradas[1]~input_o\,
	combout => \salidas[3]~0_combout\);

\salidas[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \salidas[3]~1_combout\ = (\entradas[0]~input_o\ & !\entradas[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[0]~input_o\,
	datad => \entradas[1]~input_o\,
	combout => \salidas[3]~1_combout\);

\salidas[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \salidas[3]~2_combout\ = (\entradas[1]~input_o\ & !\entradas[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[1]~input_o\,
	datad => \entradas[0]~input_o\,
	combout => \salidas[3]~2_combout\);

\salidas[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \salidas[3]~3_combout\ = (\entradas[0]~input_o\ & \entradas[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradas[0]~input_o\,
	datab => \entradas[1]~input_o\,
	combout => \salidas[3]~3_combout\);

ww_salidas(0) <= \salidas[0]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_salidas(2) <= \salidas[2]~output_o\;

ww_salidas(3) <= \salidas[3]~output_o\;
END structure;


