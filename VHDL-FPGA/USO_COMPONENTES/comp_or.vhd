-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- Multinivel

-- Entidad 

entity comp_or is 
port
( 
  in1_or: in std_logic;
  in2_or: in std_logic;
  out_or: out std_logic
);
end entity comp_or;

-- Arquitectura 

architecture func_comp_or of comp_or is 
begin
	out_or <= in1_or or in2_or; -- Salida de la compuerta or
end architecture func_comp_or;

