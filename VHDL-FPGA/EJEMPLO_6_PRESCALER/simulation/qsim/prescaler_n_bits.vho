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

-- DATE "08/06/2022 16:52:39"

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

ENTITY 	prescaler_n_bits IS
    PORT (
	in_clock_presc : IN std_logic;
	out_clock_presc : OUT std_logic
	);
END prescaler_n_bits;

ARCHITECTURE structure OF prescaler_n_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_clock_presc : std_logic;
SIGNAL ww_out_clock_presc : std_logic;
SIGNAL \out_clock_presc~output_o\ : std_logic;
SIGNAL \in_clock_presc~input_o\ : std_logic;
SIGNAL \counter_prescaler[0]~1_combout\ : std_logic;
SIGNAL \counter_prescaler[1]~0_combout\ : std_logic;
SIGNAL counter_prescaler : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_in_clock_presc <= in_clock_presc;
out_clock_presc <= ww_out_clock_presc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_clock_presc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_prescaler(1),
	devoe => ww_devoe,
	o => \out_clock_presc~output_o\);

\in_clock_presc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_clock_presc,
	o => \in_clock_presc~input_o\);

\counter_prescaler[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_prescaler[0]~1_combout\ = !counter_prescaler(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_prescaler(0),
	combout => \counter_prescaler[0]~1_combout\);

\counter_prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clock_presc~input_o\,
	d => \counter_prescaler[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_prescaler(0));

\counter_prescaler[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_prescaler[1]~0_combout\ = counter_prescaler(1) $ (counter_prescaler(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_prescaler(1),
	datad => counter_prescaler(0),
	combout => \counter_prescaler[1]~0_combout\);

\counter_prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \in_clock_presc~input_o\,
	d => \counter_prescaler[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_prescaler(1));

ww_out_clock_presc <= \out_clock_presc~output_o\;
END structure;


