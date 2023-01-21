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
-- Generated on "01/10/2022 15:37:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          register_D
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY register_D_vhd_vec_tst IS
END register_D_vhd_vec_tst;
ARCHITECTURE register_D_arch OF register_D_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL datos_entrada : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL datos_salida : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL entrada_reloj : STD_LOGIC;
COMPONENT register_D
	PORT (
	datos_entrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	datos_salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	entrada_reloj : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : register_D
	PORT MAP (
-- list connections between master ports and signals
	datos_entrada => datos_entrada,
	datos_salida => datos_salida,
	entrada_reloj => entrada_reloj
	);
-- datos_entrada[3]
t_prcs_datos_entrada_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		datos_entrada(3) <= '0';
		WAIT FOR 80000 ps;
		datos_entrada(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	datos_entrada(3) <= '0';
WAIT;
END PROCESS t_prcs_datos_entrada_3;
-- datos_entrada[2]
t_prcs_datos_entrada_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		datos_entrada(2) <= '0';
		WAIT FOR 40000 ps;
		datos_entrada(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	datos_entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_datos_entrada_2;
-- datos_entrada[1]
t_prcs_datos_entrada_1: PROCESS
BEGIN
LOOP
	datos_entrada(1) <= '0';
	WAIT FOR 20000 ps;
	datos_entrada(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_datos_entrada_1;
-- datos_entrada[0]
t_prcs_datos_entrada_0: PROCESS
BEGIN
LOOP
	datos_entrada(0) <= '0';
	WAIT FOR 10000 ps;
	datos_entrada(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_datos_entrada_0;

-- entrada_reloj
t_prcs_entrada_reloj: PROCESS
BEGIN
LOOP
	entrada_reloj <= '0';
	WAIT FOR 5000 ps;
	entrada_reloj <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entrada_reloj;
END register_D_arch;
