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
-- Generated on "08/05/2022 15:54:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          compuerta_and
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY compuerta_and_vhd_vec_tst IS
END compuerta_and_vhd_vec_tst;
ARCHITECTURE compuerta_and_arch OF compuerta_and_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in1_and : STD_LOGIC;
SIGNAL in2_and : STD_LOGIC;
SIGNAL out1_and : STD_LOGIC;
COMPONENT compuerta_and
	PORT (
	in1_and : IN STD_LOGIC;
	in2_and : IN STD_LOGIC;
	out1_and : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : compuerta_and
	PORT MAP (
-- list connections between master ports and signals
	in1_and => in1_and,
	in2_and => in2_and,
	out1_and => out1_and
	);

-- in1_and
t_prcs_in1_and: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		in1_and <= '0';
		WAIT FOR 200000 ps;
		in1_and <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	in1_and <= '0';
WAIT;
END PROCESS t_prcs_in1_and;

-- in2_and
t_prcs_in2_and: PROCESS
BEGIN
LOOP
	in2_and <= '0';
	WAIT FOR 100000 ps;
	in2_and <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in2_and;
END compuerta_and_arch;
