-- Paquetes

library ieee;
use ieee.std_logic_1164.all;

-- Entidad

entity adder_bin is
	port(
			A, B: in std_logic; -- Entradas 
			S, C: out std_logic -- Salidas
	);
end adder_bin;

-- Arquitectura

architecture func_adder of adder_bin is
	begin
		S <= A xor B; -- Suma
		C <= A and B; -- Carry
end func_adder;