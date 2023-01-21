-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Operaciones aritmeticas
use ieee.std_logic_unsigned.all; -- operaciones con vectores

-- entidad 

entity prescaler_n_bits is 
port (
	in_clock_presc: in std_logic;
	out_clock_presc: out std_logic
);
end entity prescaler_n_bits;

-- arquitecture 

architecture func_prescaler_nb of prescaler_n_bits is
constant n_bits: integer := 2; -- numero de bits
signal counter_prescaler: std_logic_vector(n_bits - 1 downto 0); -- registro
begin
	prescalador: process (in_clock_presc) -- proceso
	begin
		if rising_edge(in_clock_presc) then -- secuencialidad
			counter_prescaler <= counter_prescaler + 1;
		end if;
	end process;
out_clock_presc <= counter_prescaler(n_bits - 1); -- concurrencia
end architecture func_prescaler_nb;