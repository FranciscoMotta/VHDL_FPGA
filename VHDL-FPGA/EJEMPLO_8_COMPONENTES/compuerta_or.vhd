-- Librerías 

library ieee;

-- Paquetes

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad

entity compuerta_or is 
	port(
		in1_or1, in2_or1: in std_logic;
		out1_or1: out std_logic
	);
end entity compuerta_or;

-- Arquitectura

architecture func_compuerta_or of compuerta_or is
begin
		out1_or1 <= in1_or1 or in2_or1;
end architecture func_compuerta_or;