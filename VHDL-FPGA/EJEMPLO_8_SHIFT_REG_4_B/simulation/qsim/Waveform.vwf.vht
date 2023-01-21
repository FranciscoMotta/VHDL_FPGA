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
-- Generated on "08/08/2022 17:56:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          shift_register_4_b
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shift_register_4_b_vhd_vec_tst IS
END shift_register_4_b_vhd_vec_tst;
ARCHITECTURE shift_register_4_b_arch OF shift_register_4_b_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL shift_register_clock : STD_LOGIC;
SIGNAL shift_register_leds : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT shift_register_4_b
	PORT (
	shift_register_clock : IN STD_LOGIC;
	shift_register_leds : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : shift_register_4_b
	PORT MAP (
-- list connections between master ports and signals
	shift_register_clock => shift_register_clock,
	shift_register_leds => shift_register_leds
	);

-- shift_register_clock
t_prcs_shift_register_clock: PROCESS
BEGIN
LOOP
	shift_register_clock <= '0';
	WAIT FOR 20000 ps;
	shift_register_clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_shift_register_clock;
END shift_register_4_b_arch;
