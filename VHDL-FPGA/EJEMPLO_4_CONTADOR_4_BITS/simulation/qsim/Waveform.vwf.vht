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
-- Generated on "08/06/2022 11:14:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counter_4_bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_4_bits_vhd_vec_tst IS
END counter_4_bits_vhd_vec_tst;
ARCHITECTURE counter_4_bits_arch OF counter_4_bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL int_clock_counter : STD_LOGIC;
SIGNAL out_counter : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT counter_4_bits
	PORT (
	int_clock_counter : IN STD_LOGIC;
	out_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : counter_4_bits
	PORT MAP (
-- list connections between master ports and signals
	int_clock_counter => int_clock_counter,
	out_counter => out_counter
	);

-- int_clock_counter
t_prcs_int_clock_counter: PROCESS
BEGIN
LOOP
	int_clock_counter <= '0';
	WAIT FOR 10000 ps;
	int_clock_counter <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_int_clock_counter;
END counter_4_bits_arch;
