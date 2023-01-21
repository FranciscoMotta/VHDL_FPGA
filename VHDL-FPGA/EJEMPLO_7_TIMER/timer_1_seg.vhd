-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Operaciones matemáticas
use ieee.std_logic_unsigned.all; -- Operaciones con vectores sin signo

-- Entidad

entity timer_1_seg is
	port(
		timer_in_clock: in std_logic;
		timer_out_clck: out std_logic
		);
end entity timer_1_seg;

-- Arquitectura

architecture func_timer_1_seg of timer_1_seg is
-- Factor de escala del tiempo de salida
-- F_out = F_osc/Fac_esc -> Fac_esc = F_osc / F_out -> F_osc = F_fpga = 50Mhz
--															 	    -> F_out = 1hz
-- Fac_esc = 50Mhz/1hz => Fac_esc = 50_000_000
constant Fac_esc: integer := 50_000_000; -- Factor de escala
-- Numero de bits => N_bits = log2(Fac_esc)
constant N_bits: integer := 26; -- Numero de bits
-- Señal del contador 
signal counter_signal: std_logic_vector (N_bits - 1 downto 0); -- contador de N_bits

begin 
	timer: process (timer_in_clock)
	begin	
		if rising_edge(timer_in_clock) then
			if (counter_signal = Fac_esc - 1) then
				counter_signal <= (others => '0'); -- Reiniciamos el valor del contador
			else
				counter_signal <= counter_signal + 1; -- Aumentamos en 1
			end if;
		end if;
	end process timer; -- terminamos la parte secuecial
	
	-- Salida de 1seg
	timer_out_clck <= counter_signal(N_bits - 1); -- Asignamos el bit más significativo
end architecture func_timer_1_seg;
