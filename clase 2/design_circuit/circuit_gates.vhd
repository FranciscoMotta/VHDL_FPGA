-- PAQUETES 

library ieee;
use ieee.std_logic_1164.all;

-- Entidad 

entity circuit_gates is
	port( W,X,Y,Z: in std_logic;
			S1,S2: out std_logic);
end circuit_gates;

-- Arquitectura 


architecture func_circuit of circuit_gates is
	begin
			S1 <= (not(W) nand (not(W) and Z)) and (not(W) or (X and Y));
			S2 <= (not(W) or (X and Y)) and (not(W) nand Z);
end func_circuit;