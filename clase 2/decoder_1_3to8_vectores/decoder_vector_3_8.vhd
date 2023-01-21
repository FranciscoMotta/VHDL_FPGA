-- PAQUETES
library ieee;
use ieee.std_logic_1164.all;

-- ENTIDAD
entity decoder_vector_3_8 is
	port(ints: in std_logic_vector(2 downto 0); -- Entradas como vector
			outs: out std_logic_vector(7 downto 0)); -- Salidas como vector
end decoder_vector_3_8;

-- ARQUITECTURA - CONDICIONAL

architecture func_decoder of decoder_vector_3_8 is 
begin
	outs <= "00000001" when ints = "000" else
			  "00000010" when ints = "001" else
		     "00000100" when ints = "010" else
		     "00001000" when ints = "011" else
		     "00010000" when ints = "100" else
		     "00100000" when ints = "101" else
		     "01000000" when ints = "110" else
		     "10000000" when ints = "111";
end func_decoder;