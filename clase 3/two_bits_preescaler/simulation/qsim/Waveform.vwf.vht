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
-- Generated on "01/08/2022 22:47:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          two_preescaler
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY two_preescaler_vhd_vec_tst IS
END two_preescaler_vhd_vec_tst;
ARCHITECTURE two_preescaler_arch OF two_preescaler_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL reloj_int : STD_LOGIC;
SIGNAL reloj_out : STD_LOGIC;
COMPONENT two_preescaler
	PORT (
	reloj_int : IN STD_LOGIC;
	reloj_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : two_preescaler
	PORT MAP (
-- list connections between master ports and signals
	reloj_int => reloj_int,
	reloj_out => reloj_out
	);

-- reloj_int
t_prcs_reloj_int: PROCESS
BEGIN
LOOP
	reloj_int <= '0';
	WAIT FOR 5000 ps;
	reloj_int <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_reloj_int;
END two_preescaler_arch;
