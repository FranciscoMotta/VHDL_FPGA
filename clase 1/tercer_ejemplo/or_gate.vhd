-- LIBRERIAS DE USO - PAQUETES 
library ieee;
use ieee.std_logic_1164.all;

-- ENTIDAD

entity or_gate is
	port(A1: in std_logic; -- A1 -> Entrada
		  A2: in std_logic; -- A2 -> Entrada
		  B: out std_logic); -- B -> Salida
end or_gate;

-- ARQUITECTURA

architecture func_or_gate of or_gate is 
begin 
	-- A1 | A2 = B
	-- 0     0   0
	-- 0     1   1
	-- 1     0   1
	-- 1     1   1
	
	B <= not(not(A1) or not(A2));
end func_or_gate; -- Cerramos la arquitectura