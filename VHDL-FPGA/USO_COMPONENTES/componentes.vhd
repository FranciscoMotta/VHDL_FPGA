-- librerias 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all;

-- Entidad 

entity componentes is 
port
(
	in1_sc: in std_logic;
	in2_sc: in std_logic; -- Entradas
	car_in: in std_logic; -- Acarreo de entrada
	sum_ou: out std_logic; -- Salida de suma
	car_ou: out std_logic -- Salida del acarreo
);
end entity componentes;

-- Arquitectura

architecture func_componentes of componentes is 

-- Cables

signal cable1, cable2, cable3: std_logic;

begin

-- Primera unidad de diseño

	udd1: entity work.half_sum(func_half_sum)
			port map (
				in1_hs => in1_sc,
				in2_hs => in2_sc,
				out_hs => cable1,
				car_ou => cable2
			);

-- Segunda unidad de diseño
	
	udd2: entity work.half_sum(func_half_sum)
			port map (
				in1_hs => cable1,
				in2_hs => car_in,
				out_hs => sum_ou,
				car_ou => cable3
			);

-- Tercera unidad de diseño

	udd3: entity work.comp_or(func_comp_or)
			port map (
				in1_or => cable2,
				in2_or => cable3,
				out_or => car_ou
			);
			
end architecture func_componentes;












