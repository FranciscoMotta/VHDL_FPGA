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
-- Generated on "01/05/2022 19:37:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decoder_fpga
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decoder_fpga_vhd_vec_tst IS
END decoder_fpga_vhd_vec_tst;
ARCHITECTURE decoder_fpga_arch OF decoder_fpga_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL I1 : STD_LOGIC;
SIGNAL I2 : STD_LOGIC;
SIGNAL I3 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
SIGNAL S4 : STD_LOGIC;
SIGNAL S5 : STD_LOGIC;
SIGNAL S6 : STD_LOGIC;
SIGNAL S7 : STD_LOGIC;
SIGNAL S8 : STD_LOGIC;
COMPONENT decoder_fpga
	PORT (
	I1 : IN STD_LOGIC;
	I2 : IN STD_LOGIC;
	I3 : IN STD_LOGIC;
	S1 : BUFFER STD_LOGIC;
	S2 : BUFFER STD_LOGIC;
	S3 : BUFFER STD_LOGIC;
	S4 : BUFFER STD_LOGIC;
	S5 : BUFFER STD_LOGIC;
	S6 : BUFFER STD_LOGIC;
	S7 : BUFFER STD_LOGIC;
	S8 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : decoder_fpga
	PORT MAP (
-- list connections between master ports and signals
	I1 => I1,
	I2 => I2,
	I3 => I3,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S4 => S4,
	S5 => S5,
	S6 => S6,
	S7 => S7,
	S8 => S8
	);

-- I1
t_prcs_I1: PROCESS
BEGIN
LOOP
	I1 <= '0';
	WAIT FOR 50000 ps;
	I1 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I1;

-- I2
t_prcs_I2: PROCESS
BEGIN
LOOP
	I2 <= '0';
	WAIT FOR 25000 ps;
	I2 <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I2;

-- I3
t_prcs_I3: PROCESS
BEGIN
LOOP
	I3 <= '0';
	WAIT FOR 12500 ps;
	I3 <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I3;
END decoder_fpga_arch;
