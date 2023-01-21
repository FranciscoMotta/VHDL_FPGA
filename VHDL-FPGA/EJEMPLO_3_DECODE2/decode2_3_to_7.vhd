-- Librerías 

library ieee;

-- Paquetes

use ieee.std_logic_1164.all;

-- Entidad 

entity decode2_3_to_7 is 
	port(
		ints: in std_logic_vector (2 downto 0); -- Vector de entrdas
		outs: out std_logic_vector (7 downto 0) -- Vector de salidas 
	);
end entity decode2_3_to_7;

-- Arquitectura

architecture func_decode2_3_to_7 of decode2_3_to_7 is 
begin
	with ints select outs <= "00000001" when "000",
									 "00000010" when "001",
									 "00000100" when "010",
								    "00001000" when "011",
							       "00010000" when "100",
									 "00100000" when "101",
									 "01000000" when "110",
									 "10000000" when others;
end func_decode2_3_to_7;