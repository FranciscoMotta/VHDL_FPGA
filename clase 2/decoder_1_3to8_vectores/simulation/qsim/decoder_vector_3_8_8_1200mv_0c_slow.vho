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

-- DATE "01/06/2022 14:31:35"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder_vector_3_8 IS
    PORT (
	ints : IN std_logic_vector(2 DOWNTO 0);
	outs : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END decoder_vector_3_8;

-- Design Ports Information
-- outs[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outs[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outs[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outs[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outs[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outs[5]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outs[6]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outs[7]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ints[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ints[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ints[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder_vector_3_8 IS
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
SIGNAL \ints[1]~input_o\ : std_logic;
SIGNAL \ints[0]~input_o\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \outs[5]~0_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \outs[7]~1_combout\ : std_logic;
SIGNAL \ALT_INV_outs[7]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ints <= ints;
outs <= ww_outs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_outs[7]~1_combout\ <= NOT \outs[7]~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X0_Y6_N23
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X3_Y24_N23
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOIBUF_X1_Y0_N22
\ints[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ints(2),
	o => \ints[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\ints[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ints(1),
	o => \ints[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\ints[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ints(0),
	o => \ints[0]~input_o\);

-- Location: LCCOMB_X5_Y2_N8
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\ints[2]~input_o\ & (!\ints[1]~input_o\ & !\ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X5_Y2_N2
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!\ints[2]~input_o\ & (!\ints[1]~input_o\ & \ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X5_Y2_N28
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (!\ints[2]~input_o\ & (\ints[1]~input_o\ & !\ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X5_Y2_N6
\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!\ints[2]~input_o\ & (\ints[1]~input_o\ & \ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X5_Y2_N24
\Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\ints[2]~input_o\ & (!\ints[1]~input_o\ & !\ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X5_Y2_N18
\outs[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outs[5]~0_combout\ = (\ints[2]~input_o\ & (!\ints[1]~input_o\ & \ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \outs[5]~0_combout\);

-- Location: LCCOMB_X5_Y2_N12
\Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (\ints[2]~input_o\ & (\ints[1]~input_o\ & !\ints[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X5_Y2_N14
\outs[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outs[7]~1_combout\ = ((!\ints[0]~input_o\) # (!\ints[1]~input_o\)) # (!\ints[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ints[2]~input_o\,
	datac => \ints[1]~input_o\,
	datad => \ints[0]~input_o\,
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


