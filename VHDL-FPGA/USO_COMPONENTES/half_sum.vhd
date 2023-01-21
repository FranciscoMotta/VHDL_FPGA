-- Librerías

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all;

-- Entidad

entity half_sum is
port
(
	in1_hs: in std_logic;
	in2_hs: in std_logic; -- Entradas
	out_hs: out std_logic; -- Salida de suma
	car_ou: out std_logic -- Acarreo
);
end entity half_sum;

-- Arquitectura

architecture func_half_sum of half_sum is 
begin
	out_hs <= in1_hs xor in2_hs; -- Salida de suma 
	car_ou <= in1_hs and in2_hs; -- Salida de acarreo
end architecture func_half_sum;