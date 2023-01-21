-- Librerías

library ieee;

-- Paquetes

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Op. Arith
use ieee.std_logic_unsigned.all; -- Sin signo

-- Entidad

entity starter_circuit is
	port(
		starter_clock: in std_logic; -- Entrada de reloj
		starter_init: out std_logic -- Salida del starter
	);
end entity starter_circuit;

-- Arquitecture

architecture func_starter_circuit of starter_circuit is
signal starter_din: std_logic; -- cable de entrada del registro
signal starter_dout: std_logic := '0';
begin
	starter_proc: process(starter_clock)
	begin
		if rising_edge(starter_clock) then
			starter_dout <= starter_din;
		end if;
	end process starter_proc;
	
	starter_din <= '1'; -- La entrada a 1
	starter_init <= starter_dout; -- salida del registro  
end architecture func_starter_circuit;