-- Librerías

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all;

-- entidad 

entity proceso_secuencial is 
	port (
		A: in std_logic;
		Z: out std_logic
	);
end entity proceso_secuencial;

-- Arquitectura

architecture func_proceso_secuencial of proceso_secuencial is
signal B: std_logic;
begin
	secuencia: process (A)
	begin
			B <= A;
			Z <= not(B);
	end process;
end architecture func_proceso_secuencial;