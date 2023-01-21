-- Librerías 

library ieee;

-- Paquetes

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad

entity componentes is 
	port(
		A,	B,	Cin: in std_logic;
		S, Co: out std_logic
	);
end entity componentes;

-- Arquitectura

architecture func_componentes of componentes is
signal cable1, cable2, cable3: std_logic;
begin
-- etiqueta: entity work.nombre_entity(nombre arquitectura)
	unidad_1: entity work.medio_sumador(func_medio_sumador)
--           mod  top
	port map (
					in1_medio1 => A,
					in2_medio1 => B, 
					out1_medio1 => cable1,
					carry1_medio1 => cable2
				);
				
	unidad_2: entity work.medio_sumador(func_medio_sumador)
--           mod  top
	port map (
					in1_medio1 => cable1,
					in2_medio1 => Cin, 
					out1_medio1 => S,
					carry1_medio1 => cable3
				);
	unidad_3: entity work.compuerta_or(func_compuerta_or)
--           mod  top
	port map (
					in1_or1 => cable2,
					in2_or1 => cable3,
					out1_or1 => Co
				);
end architecture func_componentes;