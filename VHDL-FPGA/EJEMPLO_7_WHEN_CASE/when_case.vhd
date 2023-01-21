-- librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Op. Aritméticas
use ieee.std_logic_unsigned.all; -- Op. Sin signo

-- entidad 

entity when_case is
	port(
		in1, in2, in3: in std_logic;
		out1: out std_logic
	);
end entity when_case;

-- Arquitecture

architecture func_when_case of when_case is
begin
	funcionamiento: process(in1, in2, in3)
	variable cat_in123: std_logic_vector(2 downto 0) := (others => '0');
	begin
		cat_in123 := in1 & in2 & in3; -- Concatenamos las entradas
		case (cat_in123) is
			when "000" => out1 <= '1';
			when "001" => out1 <= '0';
			when "010" => out1 <= '1';
			when "011" => out1 <= '0';
			when "100" => out1 <= '0';
			when "101" => out1 <= '0';
			when "110" => out1 <= '1';
			when others => out1 <= '0';
		end case;
	end process;
end architecture func_when_case;