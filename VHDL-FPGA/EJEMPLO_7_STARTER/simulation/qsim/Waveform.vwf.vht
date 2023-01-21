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
-- Generated on "08/08/2022 17:03:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          starter_circuit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY starter_circuit_vhd_vec_tst IS
END starter_circuit_vhd_vec_tst;
ARCHITECTURE starter_circuit_arch OF starter_circuit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL starter_clock : STD_LOGIC;
SIGNAL starter_init : STD_LOGIC;
COMPONENT starter_circuit
	PORT (
	starter_clock : IN STD_LOGIC;
	starter_init : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : starter_circuit
	PORT MAP (
-- list connections between master ports and signals
	starter_clock => starter_clock,
	starter_init => starter_init
	);

-- starter_clock
t_prcs_starter_clock: PROCESS
BEGIN
	starter_clock <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 9
	LOOP
		starter_clock <= '0';
		WAIT FOR 50000 ps;
		starter_clock <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	starter_clock <= '0';
WAIT;
END PROCESS t_prcs_starter_clock;
END starter_circuit_arch;
