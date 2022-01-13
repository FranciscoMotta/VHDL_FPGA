-- paquetes

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-- Entidad 

entity preescaler is
	port( entrada_freq: in std_logic;
			selector: in std_logic_vector (1 downto 0);
			salida_freq: out std_logic
		 );
end preescaler;

-- Arquitectura

architecture func_preescaler of preescaler is

constant bits: integer := 26; -- hallado para freq min de 1hz
constant factor: integer := 50_000_000; -- Factor de escala

signal contador: std_logic_vector(bits - 1 downto 0); -- vector de cuenta

begin
	
-- DIVISOR DE FREQ
	
	division: process (entrada_freq)
	begin
		
		if rising_edge(entrada_freq) then
			if contador = (factor - 1) then
				contador <= (others => '0');
			else
				contador <= contador + 1;
			end if;
		end if;
	end process;

-- SELECTOR

	with selector select salida_freq <= contador(bits - 1) when "00",
													contador(bits - 2) when "01",
													contador(bits - 3) when "10",
													contador(bits - 4) when others;
	
end func_preescaler;