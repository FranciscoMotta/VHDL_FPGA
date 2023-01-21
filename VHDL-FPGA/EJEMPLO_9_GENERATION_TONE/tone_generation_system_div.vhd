-- Librería

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Op. Aritméticas
use ieee.std_logic_unsigned.all; -- Sin signo

-- Entidad 

entity tone_generation_system_div is
-- Genericos
	generic (
		factor_escala_M_div: integer := 50_000_000;
		numero_de_bits_div: integer := 26
	);
-- Puertos
	port(
		div_gen_clock_in: in std_logic; -- Entrada de reloj
		div_gen_clock_out: out std_logic
		);
end entity tone_generation_system_div;

-- Architecture

architecture func_tone_generation_system_div of tone_generation_system_div is

signal counter: std_logic_vector(numero_de_bits_div - 1 downto 0);

begin
	contador: process (div_gen_clock_in)
	begin
		if rising_edge(div_gen_clock_in) then
			if (counter = factor_escala_M_div - 1) then
				counter <= (others => '0'); -- Reiniciamos
			else 
				counter <= counter + 1; -- Aumentamos la cuenta
			end if;
		end if;
	end process contador;

-- Asignación de salida

div_gen_clock_out <= counter(numero_de_bits_div - 1);
	
end architecture func_tone_generation_system_div;