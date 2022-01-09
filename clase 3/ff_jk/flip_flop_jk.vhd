-- PAQUETE
library ieee;
use ieee.std_logic_1164.all;

-- Entidad 

entity flip_flop_jk is
	port(
		J, K, reloj: in std_logic;
		Q, Qn: inout std_logic
	);
end flip_flop_jk;

-- Arquitectura

architecture func_jk of flip_flop_jk is

signal Ret: std_logic;

begin
	JK_FUNC: process (reloj) -- creamos el proceso
	begin
		if rising_edge(reloj) then
			if (J = '1') and (K = '0') then
				Q <= '1';
				Ret <= Q;
				Qn <= not(Ret);
			elsif (J = '0') and (K = '1') then
				Q <= '0';
				Ret <= Q;
				Qn <= not(Ret);
			end if;
		end if;
	end process;
end func_jk;