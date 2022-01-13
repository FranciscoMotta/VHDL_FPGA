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
-- Generated on "01/13/2022 11:53:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lcd_hi
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lcd_hi_vhd_vec_tst IS
END lcd_hi_vhd_vec_tst;
ARCHITECTURE lcd_hi_arch OF lcd_hi_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL entrada_reloj : STD_LOGIC;
SIGNAL rs : STD_LOGIC;
SIGNAL salida_reloj : STD_LOGIC;
COMPONENT lcd_hi
	PORT (
	data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en : OUT STD_LOGIC;
	entrada_reloj : IN STD_LOGIC;
	rs : OUT STD_LOGIC;
	salida_reloj : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lcd_hi
	PORT MAP (
-- list connections between master ports and signals
	data => data,
	en => en,
	entrada_reloj => entrada_reloj,
	rs => rs,
	salida_reloj => salida_reloj
	);

-- entrada_reloj
t_prcs_entrada_reloj: PROCESS
BEGIN
LOOP
	entrada_reloj <= '0';
	WAIT FOR 100 ps;
	entrada_reloj <= '1';
	WAIT FOR 100 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_entrada_reloj;
END lcd_hi_arch;
