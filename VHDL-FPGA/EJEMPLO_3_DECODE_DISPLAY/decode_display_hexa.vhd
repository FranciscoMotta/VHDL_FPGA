-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all;

-- entitidad

entity decode_display_hexa is
	port(
		en_displ: out std_logic;
		entradas: in std_logic_vector (3 downto 0);
		display7: out std_logic_vector (7 downto 0)
	);
end entity decode_display_hexa;

-- arquitectura

architecture func_decode_display of decode_display_hexa is
begin
	
	-- hablitamos el display a usar

	en_displ <= '0';
	
	-- El bit msb será el punto
	--                        			pabcdefg
	with entradas select display7 <= "10000001" when "0000", -- 0
											  "11001111" when "0001", -- 1
									        "10010010" when "0010", -- 2
									        "10000110" when "0011", -- 3
									        "11001100" when "0100", -- 4
									        "10100100" when "0101", -- 5
									        "10100000" when "0110", -- 6
								           "10001111" when "0111", -- 7
									        "10000000" when "1000", -- 8
									        "10000100" when "1001", -- 9
									        "01111111" when others; -- x
end architecture func_decode_display;