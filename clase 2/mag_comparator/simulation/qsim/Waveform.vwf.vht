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
-- Generated on "01/07/2022 14:47:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          comparator_mag
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comparator_mag_vhd_vec_tst IS
END comparator_mag_vhd_vec_tst;
ARCHITECTURE comparator_mag_arch OF comparator_mag_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inputs1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL inputs2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL mayor_igual_menor : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT comparator_mag
	PORT (
	inputs1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	inputs2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	mayor_igual_menor : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : comparator_mag
	PORT MAP (
-- list connections between master ports and signals
	inputs1 => inputs1,
	inputs2 => inputs2,
	mayor_igual_menor => mayor_igual_menor
	);
-- inputs1[3]
t_prcs_inputs1_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		inputs1(3) <= '0';
		WAIT FOR 80000 ps;
		inputs1(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	inputs1(3) <= '0';
WAIT;
END PROCESS t_prcs_inputs1_3;
-- inputs1[2]
t_prcs_inputs1_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		inputs1(2) <= '0';
		WAIT FOR 40000 ps;
		inputs1(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	inputs1(2) <= '0';
WAIT;
END PROCESS t_prcs_inputs1_2;
-- inputs1[1]
t_prcs_inputs1_1: PROCESS
BEGIN
LOOP
	inputs1(1) <= '0';
	WAIT FOR 20000 ps;
	inputs1(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_inputs1_1;
-- inputs1[0]
t_prcs_inputs1_0: PROCESS
BEGIN
LOOP
	inputs1(0) <= '0';
	WAIT FOR 10000 ps;
	inputs1(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_inputs1_0;
-- inputs2[3]
t_prcs_inputs2_3: PROCESS
BEGIN
	inputs2(3) <= '0';
	WAIT FOR 10000 ps;
	inputs2(3) <= '1';
	WAIT FOR 50000 ps;
	inputs2(3) <= '0';
	WAIT FOR 50000 ps;
	inputs2(3) <= '1';
	WAIT FOR 40000 ps;
	inputs2(3) <= '0';
	WAIT FOR 20000 ps;
	inputs2(3) <= '1';
	WAIT FOR 20000 ps;
	inputs2(3) <= '0';
	WAIT FOR 10000 ps;
	inputs2(3) <= '1';
	WAIT FOR 30000 ps;
	inputs2(3) <= '0';
	WAIT FOR 20000 ps;
	inputs2(3) <= '1';
	WAIT FOR 10000 ps;
	inputs2(3) <= '0';
	WAIT FOR 40000 ps;
	inputs2(3) <= '1';
	WAIT FOR 50000 ps;
	inputs2(3) <= '0';
	WAIT FOR 10000 ps;
	inputs2(3) <= '1';
	WAIT FOR 30000 ps;
	inputs2(3) <= '0';
	WAIT FOR 20000 ps;
	inputs2(3) <= '1';
	WAIT FOR 10000 ps;
	inputs2(3) <= '0';
	WAIT FOR 20000 ps;
	inputs2(3) <= '1';
	WAIT FOR 30000 ps;
	inputs2(3) <= '0';
	WAIT FOR 20000 ps;
	inputs2(3) <= '1';
	WAIT FOR 40000 ps;
	inputs2(3) <= '0';
	WAIT FOR 40000 ps;
	inputs2(3) <= '1';
	WAIT FOR 10000 ps;
	inputs2(3) <= '0';
	WAIT FOR 10000 ps;
	inputs2(3) <= '1';
	WAIT FOR 10000 ps;
	inputs2(3) <= '0';
	WAIT FOR 30000 ps;
	inputs2(3) <= '1';
	WAIT FOR 20000 ps;
	inputs2(3) <= '0';
	WAIT FOR 30000 ps;
	inputs2(3) <= '1';
	WAIT FOR 30000 ps;
	inputs2(3) <= '0';
	WAIT FOR 50000 ps;
	inputs2(3) <= '1';
	WAIT FOR 10000 ps;
	inputs2(3) <= '0';
	WAIT FOR 40000 ps;
	inputs2(3) <= '1';
	WAIT FOR 20000 ps;
	inputs2(3) <= '0';
	WAIT FOR 20000 ps;
	inputs2(3) <= '1';
	WAIT FOR 70000 ps;
	inputs2(3) <= '0';
	WAIT FOR 10000 ps;
	inputs2(3) <= '1';
	WAIT FOR 20000 ps;
	inputs2(3) <= '0';
	WAIT FOR 10000 ps;
	inputs2(3) <= '1';
	WAIT FOR 20000 ps;
	inputs2(3) <= '0';
	WAIT FOR 10000 ps;
	inputs2(3) <= '1';
WAIT;
END PROCESS t_prcs_inputs2_3;
-- inputs2[2]
t_prcs_inputs2_2: PROCESS
BEGIN
	inputs2(2) <= '1';
	WAIT FOR 20000 ps;
	inputs2(2) <= '0';
	WAIT FOR 20000 ps;
	inputs2(2) <= '1';
	WAIT FOR 60000 ps;
	inputs2(2) <= '0';
	WAIT FOR 40000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 50000 ps;
	inputs2(2) <= '0';
	WAIT FOR 20000 ps;
	inputs2(2) <= '1';
	WAIT FOR 20000 ps;
	inputs2(2) <= '0';
	WAIT FOR 70000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 50000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 50000 ps;
	inputs2(2) <= '0';
	WAIT FOR 20000 ps;
	inputs2(2) <= '1';
	WAIT FOR 50000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 40000 ps;
	inputs2(2) <= '0';
	WAIT FOR 40000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 20000 ps;
	inputs2(2) <= '1';
	WAIT FOR 20000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 40000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 20000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 100000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 10000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
	WAIT FOR 20000 ps;
	inputs2(2) <= '0';
	WAIT FOR 10000 ps;
	inputs2(2) <= '1';
WAIT;
END PROCESS t_prcs_inputs2_2;
-- inputs2[1]
t_prcs_inputs2_1: PROCESS
BEGIN
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 30000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 30000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 30000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 30000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 60000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 50000 ps;
	inputs2(1) <= '0';
	WAIT FOR 100000 ps;
	inputs2(1) <= '1';
	WAIT FOR 10000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 20000 ps;
	inputs2(1) <= '1';
	WAIT FOR 20000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
	WAIT FOR 70000 ps;
	inputs2(1) <= '0';
	WAIT FOR 10000 ps;
	inputs2(1) <= '1';
WAIT;
END PROCESS t_prcs_inputs2_1;
-- inputs2[0]
t_prcs_inputs2_0: PROCESS
BEGIN
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 20000 ps;
	inputs2(0) <= '1';
	WAIT FOR 20000 ps;
	inputs2(0) <= '0';
	WAIT FOR 20000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 30000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 100000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 20000 ps;
	inputs2(0) <= '1';
	WAIT FOR 50000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 20000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 30000 ps;
	inputs2(0) <= '0';
	WAIT FOR 30000 ps;
	inputs2(0) <= '1';
	WAIT FOR 20000 ps;
	inputs2(0) <= '0';
	WAIT FOR 20000 ps;
	inputs2(0) <= '1';
	WAIT FOR 20000 ps;
	inputs2(0) <= '0';
	WAIT FOR 30000 ps;
	inputs2(0) <= '1';
	WAIT FOR 40000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 40000 ps;
	inputs2(0) <= '0';
	WAIT FOR 40000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 50000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 40000 ps;
	inputs2(0) <= '1';
	WAIT FOR 20000 ps;
	inputs2(0) <= '0';
	WAIT FOR 30000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 20000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
	WAIT FOR 10000 ps;
	inputs2(0) <= '1';
	WAIT FOR 10000 ps;
	inputs2(0) <= '0';
WAIT;
END PROCESS t_prcs_inputs2_0;
END comparator_mag_arch;
