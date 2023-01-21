-- Paquetes 
library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad 

entity register_D is
	port(
		entrada_reloj: in std_logic;
		datos_entrada: in std_logic_vector(3 downto 0);
		datos_salida: out std_logic_vector(3 downto 0)
	);
end register_D;

-- Arquitectura 

architecture func_register of register_D is
begin
	registro: process(entrada_reloj)
	begin
		if rising_edge(entrada_reloj) then
			datos_salida <= datos_entrada;
		end if;
	end process;
end func_register;