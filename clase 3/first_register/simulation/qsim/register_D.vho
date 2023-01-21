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

-- DATE "01/10/2022 15:37:35"

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

ENTITY 	register_D IS
    PORT (
	entrada_reloj : IN std_logic;
	datos_entrada : IN std_logic_vector(3 DOWNTO 0);
	datos_salida : OUT std_logic_vector(3 DOWNTO 0)
	);
END register_D;

ARCHITECTURE structure OF register_D IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada_reloj : std_logic;
SIGNAL ww_datos_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_datos_salida : std_logic_vector(3 DOWNTO 0);
SIGNAL \datos_salida[0]~output_o\ : std_logic;
SIGNAL \datos_salida[1]~output_o\ : std_logic;
SIGNAL \datos_salida[2]~output_o\ : std_logic;
SIGNAL \datos_salida[3]~output_o\ : std_logic;
SIGNAL \entrada_reloj~input_o\ : std_logic;
SIGNAL \datos_entrada[0]~input_o\ : std_logic;
SIGNAL \datos_salida[0]~reg0_q\ : std_logic;
SIGNAL \datos_entrada[1]~input_o\ : std_logic;
SIGNAL \datos_salida[1]~reg0_q\ : std_logic;
SIGNAL \datos_entrada[2]~input_o\ : std_logic;
SIGNAL \datos_salida[2]~reg0_q\ : std_logic;
SIGNAL \datos_entrada[3]~input_o\ : std_logic;
SIGNAL \datos_salida[3]~reg0_q\ : std_logic;

BEGIN

ww_entrada_reloj <= entrada_reloj;
ww_datos_entrada <= datos_entrada;
datos_salida <= ww_datos_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\datos_salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_salida[0]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_salida[0]~output_o\);

\datos_salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_salida[1]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_salida[1]~output_o\);

\datos_salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_salida[2]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_salida[2]~output_o\);

\datos_salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datos_salida[3]~reg0_q\,
	devoe => ww_devoe,
	o => \datos_salida[3]~output_o\);

\entrada_reloj~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_reloj,
	o => \entrada_reloj~input_o\);

\datos_entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_entrada(0),
	o => \datos_entrada[0]~input_o\);

\datos_salida[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \entrada_reloj~input_o\,
	d => \datos_entrada[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_salida[0]~reg0_q\);

\datos_entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_entrada(1),
	o => \datos_entrada[1]~input_o\);

\datos_salida[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \entrada_reloj~input_o\,
	d => \datos_entrada[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_salida[1]~reg0_q\);

\datos_entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_entrada(2),
	o => \datos_entrada[2]~input_o\);

\datos_salida[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \entrada_reloj~input_o\,
	d => \datos_entrada[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_salida[2]~reg0_q\);

\datos_entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_entrada(3),
	o => \datos_entrada[3]~input_o\);

\datos_salida[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \entrada_reloj~input_o\,
	d => \datos_entrada[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datos_salida[3]~reg0_q\);

ww_datos_salida(0) <= \datos_salida[0]~output_o\;

ww_datos_salida(1) <= \datos_salida[1]~output_o\;

ww_datos_salida(2) <= \datos_salida[2]~output_o\;

ww_datos_salida(3) <= \datos_salida[3]~output_o\;
END structure;


