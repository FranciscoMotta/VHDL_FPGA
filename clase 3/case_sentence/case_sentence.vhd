-- Paquetes

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-- Entidad

entity case_sentence is
	port( A,B,C: in std_logic;
			Salida: out std_logic_vector (7 downto 0)
	);
end case_sentence;


-- Arquitectura

architecture func_case of case_sentence is
begin
	cas: process (A, B, C)
	variable entradas: std_logic_vector(2 downto 0) := "000";
	begin 
		entradas := A & B & C; -- Concatenamos los bits de entrada
		case (entradas) is
			when "000" => Salida <= "00000001";
			when "001" => Salida <= "00000010";
			when "010" => Salida <= "00000100";
			when "011" => Salida <= "00001000";
			when "100" => Salida <= "00010000";
			when "101" => Salida <= "00100000";
			when "110" => Salida <= "01000000";
			when others => Salida <= "10000000";
		end case;
	end process;
end func_case;