-- Librerías 

library ieee;

-- Paquetes

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad

entity medio_sumador is 
	port(
		in1_medio1, in2_medio1: in std_logic;
		out1_medio1, carry1_medio1: out std_logic
	);
end entity medio_sumador;

-- Arquitectura

architecture func_medio_sumador of medio_sumador is
begin
		out1_medio1 <= in1_medio1 xor in2_medio1;
		carry1_medio1 <= in1_medio1 and in2_medio1;
end architecture func_medio_sumador;