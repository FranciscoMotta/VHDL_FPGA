-- DIVISORES DE FRECUECIAS
-- 						RELOJ DE ENTRADA           RELOJ DE SALIDA

-- FRECUENCIA					Fin						 Fout = Fin/Factor
	
-- PERIODO                 Tin                   Tout = Tin*M

-- De donde el número de bits a usar es BITS = LOG2(Factor) y tomamos el bit MSB

-- Paquetes 

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad 

entity divider_freq is
	port( entrada_reloj: in std_logic;
			salida_reloj: out std_logic
		 );
end divider_freq;

-- Arquitectura 

architecture func_divider of divider_freq is

--Parámetros, frecuencia del oscilador interno de la FPGA: 50mhz
constant Factor: integer := 50_000_000;
-- Resultado del número de Bits: Bits = Log2(50000000)
constant Bits: integer := 26;
-- Vector de cuenta
signal vector_cuenta: std_logic_vector (Bits - 1 downto 0);

begin

	divider: process(entrada_reloj)
	begin
		if rising_edge(entrada_reloj) then
			if (vector_cuenta = (Factor - 1)) then
				vector_cuenta <= (others => '0');
			else
				vector_cuenta <= vector_cuenta + 1;
			end if;
		end if;
	end process;
	salida_reloj <= vector_cuenta(Bits - 1);
end func_divider;