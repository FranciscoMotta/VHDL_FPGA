--PAQUETES

library ieee;
use ieee.std_logic_1164.all;

-- ENTIDAD

entity display_deco is
	port( ints : in std_logic_vector(3 downto 0);
			display: out std_logic_vector (7 downto 0);
			enable: out std_logic);
end display_deco;


-- ARQUITECTURA

architecture func_display of display_deco is
begin

	with ints select display <= "11000000" when "1111", -- 0
										 "11111001" when "1110", -- 1
										 "10100100" when "1101", -- 2
										 "10110000" when "1100", -- 3
										 "10011001" when "1011", -- 4
										 "10010010" when "1010", -- 5
										 "10000010" when "1001", -- 6
										 "11111000" when "1000", -- 7
										 "10000000" when "0111", -- 8
										 "10010000" when others; -- 9
	enable <= '0';
	
end func_display;