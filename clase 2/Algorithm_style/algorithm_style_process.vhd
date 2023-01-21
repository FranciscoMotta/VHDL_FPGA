-- Paquetes
library ieee;
use ieee.std_logic_1164.all;

-- Entidad

entity algorithm_style_process is
	port (
		A: in std_logic;
		F: out std_logic
	);
end algorithm_style_process;

-- Arquitectura

architecture func_process of algorithm_style_process is
	signal B: std_logic;
	begin
		Proceso_x: process(A)
		begin
			B <= A;
			F <= not(B);
		end process;
end func_process;