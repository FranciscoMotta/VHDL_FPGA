-- Paquetes

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad 

entity starter_circuit is
port( entrada_reloj: in std_logic;
		starter_bit: out std_logic
	 );
end starter_circuit;

-- Arquitectura

architecture func_starter of starter_circuit is
signal register_int: std_logic;
signal register_out: std_logic := '0';
begin 
	
	inicializer: process (entrada_reloj)
	begin
		if rising_edge(entrada_reloj) then
			register_out <= register_int;
		end if;
	end process;
	register_int <= '1';
	starter_bit <= register_out;
end func_starter;