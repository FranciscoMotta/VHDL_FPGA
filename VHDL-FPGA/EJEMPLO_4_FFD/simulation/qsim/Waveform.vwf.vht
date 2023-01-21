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
-- Generated on "08/05/2022 22:14:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flip_flop_D
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flip_flop_D_vhd_vec_tst IS
END flip_flop_D_vhd_vec_tst;
ARCHITECTURE flip_flop_D_arch OF flip_flop_D_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL int_clk : STD_LOGIC;
SIGNAL int_D : STD_LOGIC;
SIGNAL out_D : STD_LOGIC;
SIGNAL out_D_n : STD_LOGIC;
COMPONENT flip_flop_D
	PORT (
	int_clk : IN STD_LOGIC;
	int_D : IN STD_LOGIC;
	out_D : OUT STD_LOGIC;
	out_D_n : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flip_flop_D
	PORT MAP (
-- list connections between master ports and signals
	int_clk => int_clk,
	int_D => int_D,
	out_D => out_D,
	out_D_n => out_D_n
	);

-- int_clk
t_prcs_int_clk: PROCESS
BEGIN
LOOP
	int_clk <= '0';
	WAIT FOR 20000 ps;
	int_clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_int_clk;

-- int_D
t_prcs_int_D: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		int_D <= '0';
		WAIT FOR 70000 ps;
		int_D <= '1';
		WAIT FOR 70000 ps;
	END LOOP;
	int_D <= '0';
WAIT;
END PROCESS t_prcs_int_D;
END flip_flop_D_arch;
