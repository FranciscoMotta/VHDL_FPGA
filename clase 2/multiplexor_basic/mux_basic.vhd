-- PAQUETES
library ieee;
use ieee.std_logic_1164.all;


-- ENTIDAD

entity mux_basic is

	port( ints: in std_logic_vector (1 downto 0);
			selec: in std_logic;
			outs: out std_logic
		 );

end mux_basic;

-- ARQUITECTURA


architecture func_mux_basic of mux_basic is
	begin
		-- Multiplexor funcionamiento
		-- IN1 IN2 SELECTOR OUT
		--  0   0      0     0
		--  0   1      0     0
		--  1   0      0     1
		--  1   1      0     1
		--  0   0      1     0
		--  0   1      1     1
		--  1   0      1     0
		--  1   1      1     1
		
		-- Expresión: SELECTOR'&IN1 | SELECTOR&IN2
		
		outs <= '1' when (selec = '0'  and ints(0) = '1') else
				  '1' when (selec = '1' and ints(1) = '1') else
				  '0';
	
end func_mux_basic;