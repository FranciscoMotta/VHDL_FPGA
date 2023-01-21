-- paquetes

library ieee;
use ieee.std_logic_1164.all;

-- Entidad

entity led_and is
	port (A, B: in std_logic;
			C: out std_logic
		  );
end led_and;

-- Arquitectura

architecture func_led of led_and is
	begin
		 C <= not(A) and not(B);
end func_led;