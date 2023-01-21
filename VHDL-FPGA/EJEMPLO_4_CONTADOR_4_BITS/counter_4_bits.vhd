-- librerías 

library ieee;

-- paquetes 

use ieee.std_logic_1164.all; -- valores admitidos
use ieee.std_logic_arith.all; -- operaciones maths
use ieee.std_logic_unsigned.all; -- tipos de datos

-- entity

entity counter_4_bits is 
	port(
			int_clock_counter: in std_logic;
			out_counter: out std_logic_vector(3 downto 0)
	);
end entity counter_4_bits;

-- arquitectura 

architecture func_counter_4_bits of counter_4_bits is
signal counter_signal: std_logic_vector(3 downto 0);
begin -- algoritmia
	contador_4_bits: process (int_clock_counter)
	begin
		if rising_edge(int_clock_counter) then
			counter_signal <= counter_signal + "0001";
		end if;
	end process;
	-- Concurrencia
	out_counter <= counter_signal; -- pasamos la señal a la salida 
end architecture func_counter_4_bits;