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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/07/2022 16:52:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fan_controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fan_controller_vhd_vec_tst IS
END fan_controller_vhd_vec_tst;
ARCHITECTURE fan_controller_arch OF fan_controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fan1 : STD_LOGIC;
SIGNAL fan2 : STD_LOGIC;
SIGNAL p1 : STD_LOGIC;
SIGNAL p2 : STD_LOGIC;
SIGNAL selec : STD_LOGIC;
COMPONENT fan_controller
	PORT (
	fan1 : OUT STD_LOGIC;
	fan2 : OUT STD_LOGIC;
	p1 : IN STD_LOGIC;
	p2 : IN STD_LOGIC;
	selec : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fan_controller
	PORT MAP (
-- list connections between master ports and signals
	fan1 => fan1,
	fan2 => fan2,
	p1 => p1,
	p2 => p2,
	selec => selec
	);

-- p1
t_prcs_p1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		p1 <= '0';
		WAIT FOR 40000 ps;
		p1 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	p1 <= '0';
WAIT;
END PROCESS t_prcs_p1;

-- p2
t_prcs_p2: PROCESS
BEGIN
LOOP
	p2 <= '0';
	WAIT FOR 20000 ps;
	p2 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_p2;

-- selec
t_prcs_selec: PROCESS
BEGIN
LOOP
	selec <= '0';
	WAIT FOR 10000 ps;
	selec <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_selec;
END fan_controller_arch;
