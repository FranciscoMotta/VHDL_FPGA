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

-- DATE "08/06/2022 11:14:40"

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

ENTITY 	counter_4_bits IS
    PORT (
	int_clock_counter : IN std_logic;
	out_counter : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter_4_bits;

ARCHITECTURE structure OF counter_4_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_int_clock_counter : std_logic;
SIGNAL ww_out_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_counter[0]~output_o\ : std_logic;
SIGNAL \out_counter[1]~output_o\ : std_logic;
SIGNAL \out_counter[2]~output_o\ : std_logic;
SIGNAL \out_counter[3]~output_o\ : std_logic;
SIGNAL \int_clock_counter~input_o\ : std_logic;
SIGNAL \counter_signal[0]~3_combout\ : std_logic;
SIGNAL \counter_signal[1]~0_combout\ : std_logic;
SIGNAL \counter_signal[2]~1_combout\ : std_logic;
SIGNAL \counter_signal[3]~2_combout\ : std_logic;
SIGNAL counter_signal : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_int_clock_counter <= int_clock_counter;
out_counter <= ww_out_counter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_counter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_signal(0),
	devoe => ww_devoe,
	o => \out_counter[0]~output_o\);

\out_counter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_signal(1),
	devoe => ww_devoe,
	o => \out_counter[1]~output_o\);

\out_counter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_signal(2),
	devoe => ww_devoe,
	o => \out_counter[2]~output_o\);

\out_counter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter_signal(3),
	devoe => ww_devoe,
	o => \out_counter[3]~output_o\);

\int_clock_counter~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_int_clock_counter,
	o => \int_clock_counter~input_o\);

\counter_signal[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_signal[0]~3_combout\ = !counter_signal(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_signal(0),
	combout => \counter_signal[0]~3_combout\);

\counter_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \int_clock_counter~input_o\,
	d => \counter_signal[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_signal(0));

\counter_signal[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_signal[1]~0_combout\ = counter_signal(0) $ (counter_signal(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_signal(0),
	datad => counter_signal(1),
	combout => \counter_signal[1]~0_combout\);

\counter_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \int_clock_counter~input_o\,
	d => \counter_signal[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_signal(1));

\counter_signal[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_signal[2]~1_combout\ = counter_signal(2) $ (((counter_signal(0) & counter_signal(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_signal(2),
	datac => counter_signal(0),
	datad => counter_signal(1),
	combout => \counter_signal[2]~1_combout\);

\counter_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \int_clock_counter~input_o\,
	d => \counter_signal[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_signal(2));

\counter_signal[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_signal[3]~2_combout\ = counter_signal(3) $ (((counter_signal(0) & (counter_signal(1) & counter_signal(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_signal(3),
	datab => counter_signal(0),
	datac => counter_signal(1),
	datad => counter_signal(2),
	combout => \counter_signal[3]~2_combout\);

\counter_signal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \int_clock_counter~input_o\,
	d => \counter_signal[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_signal(3));

ww_out_counter(0) <= \out_counter[0]~output_o\;

ww_out_counter(1) <= \out_counter[1]~output_o\;

ww_out_counter(2) <= \out_counter[2]~output_o\;

ww_out_counter(3) <= \out_counter[3]~output_o\;
END structure;


