-- paquetes

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; -- operaciones matemáticas
use ieee.std_logic_unsigned.all; -- datos sin signo

-- entidad

entity counter_bits is
	port( reloj: in std_logic;
	       Q: out std_logic_vector(26 downto 0)
	);
end counter_bits;

-- arquitectura

architecture func_counter of counter_bits is
	signal cont_tempo: std_logic_vector (26 downto 0); -- Registro temporal
	begin
		contador: process(reloj) -- creamos el proceso
			begin
				if rising_edge(reloj) then
					cont_tempo <= cont_tempo + 1;
				end if;
		end process;
		Q <= not(cont_tempo); -- asignamos la salida
end func_counter;