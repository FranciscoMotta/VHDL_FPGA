-- PAQUETES
library ieee; 
use ieee.std_logic_1164.all;

-- ENTIDAD

entity decorder_3to8_with is

	port( ints: in std_logic_vector(2 downto 0);
			outs: out std_logic_vector(7 downto 0));

end decorder_3to8_with;

-- ARQUITECTURA

architecture func_decode_with of decorder_3to8_with is
begin
	with ints select outs <= "00000001" when "000",
									 "00000010" when "001",
			                   "00000100" when "010",
			                   "00001000" when "011",
			                   "00010000" when "100",
			                   "00100000" when "101",
	                         "01000000" when "110",
			                   "10000000" when others;
end func_decode_with;