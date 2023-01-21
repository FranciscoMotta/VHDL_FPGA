-- Librerías

library ieee;

-- Paquetes

use ieee.std_logic_1164.all;

-- Entidad

entity compuerta_and is 
	port(
		-- ENTRADAS Y SALIDAS
		in1_and: in std_logic;
		in2_and: in std_logic;
		out1_and: out std_logic
	);
end entity compuerta_and;

-- Arquitectura

architecture func_comp_and of compuerta_and is
begin
--    señañ <= expresión when condición   sino  condición 2
		out1_and <= in1_and when in2_and = '1' else '0';
end func_comp_and;


-- Hay la asignación de señal única cuando la salida depende de una solución del álgebra de boolean
-- y la asignación de señal condicional cuando se usan las condiciones del WHEN
-- También hay la adquisición de señal selectiva cuando se usa el WITH - SELECT y el OTHERS