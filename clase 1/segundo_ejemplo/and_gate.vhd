library ieee;
use ieee.std_logic_1164.all;

-- ENTIDAD

entity and_gate is
	port(A1: in std_logic; -- Definimos entradas y salidas
		  A2: in std_logic;
		  C: out std_logic);
end and_gate;

-- ARQUITECTURA

architecture func_gate of and_gate is
begin
	-- A1 & A2 = C
	--  0   0    0
	--  0   1    0
	--  1   0    0
	--  1   1    1
	C <= not(A1 and A2); -- negamos por el hardware de la placa
end func_gate;