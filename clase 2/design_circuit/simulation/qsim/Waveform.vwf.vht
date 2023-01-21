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
-- Generated on "01/07/2022 15:50:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          circuit_gates
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY circuit_gates_vhd_vec_tst IS
END circuit_gates_vhd_vec_tst;
ARCHITECTURE circuit_gates_arch OF circuit_gates_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL W : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT circuit_gates
	PORT (
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	W : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC;
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : circuit_gates
	PORT MAP (
-- list connections between master ports and signals
	S1 => S1,
	S2 => S2,
	W => W,
	X => X,
	Y => Y,
	Z => Z
	);

-- W
t_prcs_W: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		W <= '0';
		WAIT FOR 80000 ps;
		W <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	W <= '0';
WAIT;
END PROCESS t_prcs_W;

-- X
t_prcs_X: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		X <= '0';
		WAIT FOR 40000 ps;
		X <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
LOOP
	Y <= '0';
	WAIT FOR 20000 ps;
	Y <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Y;

-- Z
t_prcs_Z: PROCESS
BEGIN
LOOP
	Z <= '0';
	WAIT FOR 10000 ps;
	Z <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Z;
END circuit_gates_arch;
