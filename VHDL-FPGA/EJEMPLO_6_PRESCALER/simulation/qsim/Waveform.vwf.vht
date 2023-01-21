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
-- Generated on "08/06/2022 16:52:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          prescaler_n_bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY prescaler_n_bits_vhd_vec_tst IS
END prescaler_n_bits_vhd_vec_tst;
ARCHITECTURE prescaler_n_bits_arch OF prescaler_n_bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in_clock_presc : STD_LOGIC;
SIGNAL out_clock_presc : STD_LOGIC;
COMPONENT prescaler_n_bits
	PORT (
	in_clock_presc : IN STD_LOGIC;
	out_clock_presc : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : prescaler_n_bits
	PORT MAP (
-- list connections between master ports and signals
	in_clock_presc => in_clock_presc,
	out_clock_presc => out_clock_presc
	);

-- in_clock_presc
t_prcs_in_clock_presc: PROCESS
BEGIN
LOOP
	in_clock_presc <= '0';
	WAIT FOR 10000 ps;
	in_clock_presc <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_clock_presc;
END prescaler_n_bits_arch;
