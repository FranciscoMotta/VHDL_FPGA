-- Librería

library ieee;

-- Paquetes

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Op. Aritméticas
use ieee.std_logic_unsigned.all; -- Sin signo

-- Entidad

entity type_D_ff is
	port(
			D_int_ff, cLock_int_ff: in std_logic;
			Q_out_ff: out std_logic
	);
end entity type_D_ff;

-- Arquitectura

architecture func_type_D_ff of type_D_ff is 
begin 
funcion_type_D: process(clock_int_ff)
begin
	if rising_edge(clock_int_ff) then
		Q_out_ff <= D_int_ff; -- Obtenemos la salida del FFD
	end if;
end process funcion_type_D;
end architecture func_type_D_ff;