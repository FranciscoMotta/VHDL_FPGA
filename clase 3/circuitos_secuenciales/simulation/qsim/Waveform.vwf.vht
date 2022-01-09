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
-- Generated on "01/08/2022 10:25:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ff_type_D
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ff_type_D_vhd_vec_tst IS
END ff_type_D_vhd_vec_tst;
ARCHITECTURE ff_type_D_arch OF ff_type_D_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Qn : STD_LOGIC;
SIGNAL reloj : STD_LOGIC;
COMPONENT ff_type_D
	PORT (
	D : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC;
	Qn : BUFFER STD_LOGIC;
	reloj : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ff_type_D
	PORT MAP (
-- list connections between master ports and signals
	D => D,
	Q => Q,
	Qn => Qn,
	reloj => reloj
	);

-- D
t_prcs_D: PROCESS
BEGIN
LOOP
	D <= '0';
	WAIT FOR 20000 ps;
	D <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D;

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
END ff_type_D_arch;
