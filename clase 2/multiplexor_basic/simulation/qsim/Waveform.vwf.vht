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
-- Generated on "01/06/2022 21:23:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_basic
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_basic_vhd_vec_tst IS
END mux_basic_vhd_vec_tst;
ARCHITECTURE mux_basic_arch OF mux_basic_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ints : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL outs : STD_LOGIC;
SIGNAL selec : STD_LOGIC;
COMPONENT mux_basic
	PORT (
	ints : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	outs : OUT STD_LOGIC;
	selec : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux_basic
	PORT MAP (
-- list connections between master ports and signals
	ints => ints,
	outs => outs,
	selec => selec
	);
-- ints[1]
t_prcs_ints_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ints(1) <= '0';
		WAIT FOR 40000 ps;
		ints(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ints(1) <= '0';
WAIT;
END PROCESS t_prcs_ints_1;
-- ints[0]
t_prcs_ints_0: PROCESS
BEGIN
LOOP
	ints(0) <= '0';
	WAIT FOR 20000 ps;
	ints(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ints_0;

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
END mux_basic_arch;
