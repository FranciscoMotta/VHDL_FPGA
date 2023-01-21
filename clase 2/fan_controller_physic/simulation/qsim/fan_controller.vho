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

-- DATE "01/07/2022 16:52:56"

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

ENTITY 	fan_controller IS
    PORT (
	p1 : IN std_logic;
	p2 : IN std_logic;
	selec : IN std_logic;
	fan1 : OUT std_logic;
	fan2 : OUT std_logic
	);
END fan_controller;

-- Design Ports Information
-- fan1	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fan2	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selec	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fan_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_p1 : std_logic;
SIGNAL ww_p2 : std_logic;
SIGNAL ww_selec : std_logic;
SIGNAL ww_fan1 : std_logic;
SIGNAL ww_fan2 : std_logic;
SIGNAL \fan1~output_o\ : std_logic;
SIGNAL \fan2~output_o\ : std_logic;
SIGNAL \p1~input_o\ : std_logic;
SIGNAL \p2~input_o\ : std_logic;
SIGNAL \selec~input_o\ : std_logic;
SIGNAL \fan1~0_combout\ : std_logic;
SIGNAL \fan2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_p1 <= p1;
ww_p2 <= p2;
ww_selec <= selec;
fan1 <= ww_fan1;
fan2 <= ww_fan2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\fan1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fan1~0_combout\,
	devoe => ww_devoe,
	o => \fan1~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\fan2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fan2~0_combout\,
	devoe => ww_devoe,
	o => \fan2~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\p1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p1,
	o => \p1~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\p2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p2,
	o => \p2~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\selec~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selec,
	o => \selec~input_o\);

-- Location: LCCOMB_X2_Y7_N0
\fan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fan1~0_combout\ = (\p1~input_o\ & ((\selec~input_o\) # (!\p2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1~input_o\,
	datac => \p2~input_o\,
	datad => \selec~input_o\,
	combout => \fan1~0_combout\);

-- Location: LCCOMB_X2_Y7_N2
\fan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fan2~0_combout\ = (\p2~input_o\ & ((!\selec~input_o\) # (!\p1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1~input_o\,
	datac => \p2~input_o\,
	datad => \selec~input_o\,
	combout => \fan2~0_combout\);

ww_fan1 <= \fan1~output_o\;

ww_fan2 <= \fan2~output_o\;
END structure;


