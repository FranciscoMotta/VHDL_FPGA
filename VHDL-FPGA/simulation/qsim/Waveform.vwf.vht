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
-- Generated on "12/22/2022 17:50:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          repaso_vhdl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY repaso_vhdl_vhd_vec_tst IS
END repaso_vhdl_vhd_vec_tst;
ARCHITECTURE repaso_vhdl_arch OF repaso_vhdl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entradas : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL salidas : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT repaso_vhdl
	PORT (
	entradas : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	salidas : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : repaso_vhdl
	PORT MAP (
-- list connections between master ports and signals
	entradas => entradas,
	salidas => salidas
	);
-- entradas[1]
t_prcs_entradas_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		entradas(1) <= '0';
		WAIT FOR 200000 ps;
		entradas(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	entradas(1) <= '0';
WAIT;
END PROCESS t_prcs_entradas_1;
-- entradas[0]
t_prcs_entradas_0: PROCESS
BEGIN
LOOP
	entradas(0) <= '0';
	WAIT FOR 100000 ps;
	entradas(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entradas_0;
END repaso_vhdl_arch;
