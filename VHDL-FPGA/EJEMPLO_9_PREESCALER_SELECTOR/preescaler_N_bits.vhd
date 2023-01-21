-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- Multiniveles
use ieee.std_logic_arith.all; -- Op. Arith
use ieee.std_logic_unsigned.all;

-- Entidad 

entity preescaler_N_bits is
-- Genericos
	generic(
		N_bits: integer := 2 -- Este valor puede cambiar
	);
-- Puertos	
	port(
		preescaler_n_clock_in: in std_logic;
		preescaler_n_clock_out: out std_logic
	);
end entity preescaler_N_bits;

-- Architecture

architecture func_preescaler_n_bits of preescaler_N_bits is
signal counter: std_logic_vector(N_bits - 1 downto 0); -- registro de cuenta
begin
	funcionamiento: process (preescaler_n_clock_in)
	begin
		if rising_edge(preescaler_n_clock_in) then
			counter <= counter + 1; -- aumentamos el registro
		end if;
	end process funcionamiento;
end architecture func_preescaler_n_bits;