-- Paquetes 

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad

entity two_preescaler is
	port (
		reloj_int: in std_logic;
		reloj_out: out std_logic
	);
end two_preescaler;

-- Arquitectura

architecture func_preescaler of two_preescaler is
	constant Bits: integer:= 2;
	signal contador: std_logic_vector(Bits-1 downto 0);
	begin
		contador_bits: process(reloj_int)
		begin
			if rising_edge(reloj_int) then
				contador <= contador + 1;
			end if;
			reloj_out <= contador(Bits-1);
		end process;
end func_preescaler;
