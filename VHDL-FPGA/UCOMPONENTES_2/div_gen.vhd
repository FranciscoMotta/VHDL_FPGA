-- Divisor de frecuencia genérico
-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Operaciones aritméticas
use ieee.std_logic_unsigned.all; -- Operaciones sin signo

-- Entidad

entity div_gen is 

-- Genericos

	generic(
		factor_escala_div: integer := 50_000_000; -- Factor de escala: F_esc = Fosc / Fnec
		numero_de_bits_div: integer := 26 -- Nbits = log2(F_esc)
	);
	
-- Puertos

	port (
		int_clock_div: in std_logic;
		out_clock_div: out std_logic
	);
	
end entity div_gen;


-- Arquitectura 

architecture func_div_gen of div_gen is 

-- Señales 

signal contador: std_logic_vector (numero_de_bits_div - 1 downto 0);

begin
	conta: process (int_clock_div)
	begin
		if rising_edge(int_clock_div) then
			if (contador = factor_escala_div - 1) then
				contador <= (others => '0'); -- Reseteamos las cuentas
			else 
				contador <= contador + 1; -- Aumentamos la cuenta
			end if;
		end if;
	end process conta;
	
-- Concurrencia 

out_clock_div <= contador( numero_de_bits_div - 1); -- Sacamos el MSB
	
end architecture func_div_gen;