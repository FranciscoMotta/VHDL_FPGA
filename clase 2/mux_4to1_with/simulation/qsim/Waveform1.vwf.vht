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
-- Generated on "01/06/2022 23:44:12"
                                                             
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
SIGNAL i1 : STD_LOGIC;
SIGNAL i2 : STD_LOGIC;
SIGNAL i3 : STD_LOGIC;
SIGNAL i4 : STD_LOGIC;
SIGNAL outs : STD_LOGIC;
SIGNAL selec : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mux_4to1
	PORT (
	i1 : IN STD_LOGIC;
	i2 : IN STD_LOGIC;
	i3 : IN STD_LOGIC;
	i4 : IN STD_LOGIC;
	outs : BUFFER STD_LOGIC;
	selec : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_4to1
	PORT MAP (
-- list connections between master ports and signals
	i1 => i1,
	i2 => i2,
	i3 => i3,
	i4 => i4,
	outs => outs,
	selec => selec
	);
-- selec[1]
t_prcs_selec_1: PROCESS
BEGIN
LOOP
	selec(1) <= '0';
	WAIT FOR 20000 ps;
	selec(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_selec_1;
-- selec[0]
t_prcs_selec_0: PROCESS
BEGIN
LOOP
	selec(0) <= '0';
	WAIT FOR 10000 ps;
	selec(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_selec_0;
END mux_4to1_arch;
