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
-- Generated on "08/05/2022 16:44:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decode_3_to_7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decode_3_to_7_vhd_vec_tst IS
END decode_3_to_7_vhd_vec_tst;
ARCHITECTURE decode_3_to_7_arch OF decode_3_to_7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ints : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL outs : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT decode_3_to_7
	PORT (
	ints : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	outs : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : decode_3_to_7
	PORT MAP (
-- list connections between master ports and signals
	ints => ints,
	outs => outs
	);
-- ints[2]
t_prcs_ints_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		ints(2) <= '0';
		WAIT FOR 200000 ps;
		ints(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	ints(2) <= '0';
WAIT;
END PROCESS t_prcs_ints_2;
-- ints[1]
t_prcs_ints_1: PROCESS
BEGIN
LOOP
	ints(1) <= '0';
	WAIT FOR 100000 ps;
	ints(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ints_1;
-- ints[0]
t_prcs_ints_0: PROCESS
BEGIN
LOOP
	ints(0) <= '0';
	WAIT FOR 50000 ps;
	ints(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ints_0;
END decode_3_to_7_arch;
