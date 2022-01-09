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
-- Generated on "01/08/2022 10:52:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flip_flop_jk
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flip_flop_jk_vhd_vec_tst IS
END flip_flop_jk_vhd_vec_tst;
ARCHITECTURE flip_flop_jk_arch OF flip_flop_jk_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Qn : STD_LOGIC;
SIGNAL reloj : STD_LOGIC;
COMPONENT flip_flop_jk
	PORT (
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Q : INOUT STD_LOGIC;
	Qn : INOUT STD_LOGIC;
	reloj : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flip_flop_jk
	PORT MAP (
-- list connections between master ports and signals
	J => J,
	K => K,
	Q => Q,
	Qn => Qn,
	reloj => reloj
	);

-- J
t_prcs_J: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		J <= '0';
		WAIT FOR 40000 ps;
		J <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	J <= '0';
WAIT;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
LOOP
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_K;

-- reloj
t_prcs_reloj: PROCESS
BEGIN
LOOP
	reloj <= '0';
	WAIT FOR 10000 ps;
	reloj <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_reloj;
END flip_flop_jk_arch;
