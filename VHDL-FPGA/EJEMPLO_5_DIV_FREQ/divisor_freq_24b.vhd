-- librerias 

library ieee;

-- paquetes 

use ieee.std_logic_1164.all; -- valores multinivel
use ieee.std_logic_arith.all; -- operaciones aritmeticas
use ieee.std_logic_unsigned.all; -- operaciones con los std_logic_vector

-- entidad

entity divisor_freq_24b is 
	port(
		int_clock_div: in std_logic;
		out_freq_div: out std_logic
	);
end entity divisor_freq_24b;

-- arquitectura

architecture func_div_freq_24b of divisor_freq_24b is
signal counter: std_logic_vector(0 to 23);
begin
	contador: process (int_clock_div)
	begin
		if rising_edge(int_clock_div) then
			counter <= counter + 1;
		end if;
	end process;
	out_freq_div <= counter(0);
end architecture func_div_freq_24b;

