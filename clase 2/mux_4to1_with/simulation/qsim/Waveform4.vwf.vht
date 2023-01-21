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
-- Generated on "01/07/2022 14:21:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_4to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_4to1_vhd_vec_tst IS
END mux_4to1_vhd_vec_tst;
ARCHITECTURE mux_4to1_arch OF mux_4to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL e1 : STD_LOGIC;
SIGNAL e2 : STD_LOGIC;
SIGNAL e3 : STD_LOGIC;
SIGNAL e4 : STD_LOGIC;
SIGNAL outs : STD_LOGIC;
SIGNAL selec : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mux_4to1
	PORT (
	e1 : IN STD_LOGIC;
	e2 : IN STD_LOGIC;
	e3 : IN STD_LOGIC;
	e4 : IN STD_LOGIC;
	outs : BUFFER STD_LOGIC;
	selec : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_4to1
	PORT MAP (
-- list connections between master ports and signals
	e1 => e1,
	e2 => e2,
	e3 => e3,
	e4 => e4,
	outs => outs,
	selec => selec
	);

-- e1
t_prcs_e1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		e1 <= '0';
		WAIT FOR 80000 ps;
		e1 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	e1 <= '0';
WAIT;
END PROCESS t_prcs_e1;

-- e2
t_prcs_e2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		e2 <= '0';
		WAIT FOR 40000 ps;
		e2 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	e2 <= '0';
WAIT;
END PROCESS t_prcs_e2;

-- e3
t_prcs_e3: PROCESS
BEGIN
LOOP
	e3 <= '0';
	WAIT FOR 20000 ps;
	e3 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_e3;

-- e4
t_prcs_e4: PROCESS
BEGIN
LOOP
	e4 <= '0';
	WAIT FOR 10000 ps;
	e4 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_e4;
-- selec[1]
t_prcs_selec_1: PROCESS
BEGIN
	selec(1) <= '0';
	WAIT FOR 400000 ps;
	selec(1) <= '1';
	WAIT FOR 400000 ps;
	selec(1) <= '0';
WAIT;
END PROCESS t_prcs_selec_1;
-- selec[0]
t_prcs_selec_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		selec(0) <= '0';
		WAIT FOR 200000 ps;
		selec(0) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	selec(0) <= '0';
WAIT;
END PROCESS t_prcs_selec_0;
END mux_4to1_arch;
