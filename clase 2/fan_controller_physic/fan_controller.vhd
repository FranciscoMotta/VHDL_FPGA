-- Paquetes

library ieee;
use ieee.std_logic_1164.all;

-- Entidad

entity fan_controller is
	port (p1, p2, selec: in std_logic;
			fan1, fan2: out std_logic);
end fan_controller;

-- Arquitectura

architecture func_fans of fan_controller is
	begin
			fan1 <= not(p1) and ((p2) or not(selec));
			fan2 <= not(p2) and ((p1) or (selec));
end func_fans;