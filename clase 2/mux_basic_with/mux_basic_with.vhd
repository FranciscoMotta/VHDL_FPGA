-- PAQUETES
library ieee;
use ieee.std_logic_1164.all;

-- ENTIDAD 

entity mux_basic_with is

port( ints: in std_logic_vector(1 downto 0);
		selec: in std_logic;
		outs: out std_logic
	 );

end mux_basic_with;

-- ARQUITECTURA

architecture func_mux of mux_basic_with is
begin
	
	with selec select outs <= ints(0) when '0',
									  ints(1) when others;
-- Con el Selector elegimos las salidas, la cual es igual a IN1 cuando selector
-- es igual a 0 y es 1 en el resto de los casos
end func_mux;