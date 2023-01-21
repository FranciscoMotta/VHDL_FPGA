-- paquetes 
library ieee;
use ieee.std_logic_1164.all;

-- Entidad

entity mux_4to1 is

port(
		e1, e2, e3, e4: in std_logic;
		selec: in std_logic_vector(1 downto 0);
		outs: out std_logic
	 );
end mux_4to1;

-- Arquitectura

architecture func_mux of mux_4to1 is
begin 
	with selec select 
	outs <= e1 when "00",
			  e2 when "01",
			  e3 when "10",
			  e4 when others;
end func_mux;