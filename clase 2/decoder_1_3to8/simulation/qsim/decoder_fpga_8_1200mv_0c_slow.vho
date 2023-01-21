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

-- DATE "01/06/2022 13:53:55"

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

ENTITY 	decoder_fpga IS
    PORT (
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic
	);
END decoder_fpga;

-- Design Ports Information
-- S1	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S8	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder_fpga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_S6 : std_logic;
SIGNAL ww_S7 : std_logic;
SIGNAL ww_S8 : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \S6~output_o\ : std_logic;
SIGNAL \S7~output_o\ : std_logic;
SIGNAL \S8~output_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \S3~0_combout\ : std_logic;
SIGNAL \S4~0_combout\ : std_logic;
SIGNAL \S5~0_combout\ : std_logic;
SIGNAL \S6~0_combout\ : std_logic;
SIGNAL \S7~0_combout\ : std_logic;
SIGNAL \S8~0_combout\ : std_logic;
SIGNAL \ALT_INV_S1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
S5 <= ww_S5;
S6 <= ww_S6;
S7 <= ww_S7;
S8 <= ww_S8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_S1~0_combout\ <= NOT \S1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\S1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_S1~0_combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S2~0_combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S3~0_combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\S4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S4~0_combout\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\S5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S5~0_combout\,
	devoe => ww_devoe,
	o => \S5~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\S6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S6~0_combout\,
	devoe => ww_devoe,
	o => \S6~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\S7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S7~0_combout\,
	devoe => ww_devoe,
	o => \S7~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\S8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S8~0_combout\,
	devoe => ww_devoe,
	o => \S8~output_o\);

-- Location: IOIBUF_X1_Y0_N22
\A3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\A2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X5_Y2_N8
\S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S1~0_combout\ = (\A3~input_o\) # ((\A2~input_o\) # (\A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~input_o\,
	datac => \A2~input_o\,
	datad => \A1~input_o\,
	combout => \S1~0_combout\);

-- Location: LCCOMB_X5_Y2_N2
\S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S2~0_combout\ = (\A3~input_o\ & (!\A2~input_o\ & !\A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~input_o\,
	datac => \A2~input_o\,
	datad => \A1~input_o\,
	combout => \S2~0_combout\);

-- Location: LCCOMB_X5_Y2_N28
\S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S3~0_combout\ = (!\A3~input_o\ & (\A2~input_o\ & !\A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~input_o\,
	datac => \A2~input_o\,
	datad => \A1~input_o\,
	combout => \S3~0_combout\);

-- Location: LCCOMB_X5_Y2_N6
\S4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S4~0_combout\ = (\A3~input_o\ & (\A2~input_o\ & !\A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~input_o\,
	datac => \A2~input_o\,
	datad => \A1~input_o\,
	combout => \S4~0_combout\);

-- Location: LCCOMB_X5_Y2_N24
\S5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S5~0_combout\ = (!\A3~input_o\ & (!\A2~input_o\ & \A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~input_o\,
	datac => \A2~input_o\,
	datad => \A1~input_o\,
	combout => \S5~0_combout\);

-- Location: LCCOMB_X5_Y2_N18
\S6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S6~0_combout\ = (\A3~input_o\ & (!\A2~input_o\ & \A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~input_o\,
	datac => \A2~input_o\,
	datad => \A1~input_o\,
	combout => \S6~0_combout\);

-- Location: LCCOMB_X5_Y2_N12
\S7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S7~0_combout\ = (!\A3~input_o\ & (\A2~input_o\ & \A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~input_o\,
	datac => \A2~input_o\,
	datad => \A1~input_o\,
	combout => \S7~0_combout\);

-- Location: LCCOMB_X5_Y2_N14
\S8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S8~0_combout\ = (\A3~input_o\ & (\A2~input_o\ & \A1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~input_o\,
	datac => \A2~input_o\,
	datad => \A1~input_o\,
	combout => \S8~0_combout\);

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;

ww_S5 <= \S5~output_o\;

ww_S6 <= \S6~output_o\;

ww_S7 <= \S7~output_o\;

ww_S8 <= \S8~output_o\;
END structure;


