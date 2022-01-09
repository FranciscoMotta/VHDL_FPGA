-- PAQUETES
library ieee;
use ieee.std_logic_1164.all;

-- Entidad

entity ff_type_D is
	port(
	reloj, D: in std_logic;
	Q, Qn: out std_logic
	);
end ff_type_D;

-- Arquitectura

architecture func_ff_D of ff_type_D is
begin
	ff_D: process(reloj)
	begin
		if rising_edge(reloj) then
			Q <= D;
			Qn <= not(D);
		end if;
	end process;
end func_ff_D;