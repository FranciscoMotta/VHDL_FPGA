-- Librerías

library ieee;

-- Paquetes

use ieee.std_logic_1164.all; -- Datos multinivel
use ieee.std_logic_arith.all; -- Operaciones maths
use ieee.std_logic_unsigned.all; -- trabajar con std_logic_vector sin signo

-- Entidad 

entity counter_display_7_seg is
	port(
		in_clock_counter: in std_logic; -- Entrada del reloj de la FPGA
		en_disp_counter: out std_logic; -- salida enable del display
		out_disp_counter: out std_logic_vector(7 downto 0) -- salida al display de 7 seg
	);
end entity counter_display_7_seg;

-- Arquitecture

architecture func_counter_display_7_seg of counter_display_7_seg is

constant n_bits: integer := 24; -- numero de bits
constant n_cuenta: integer := 4;

signal counter: std_logic_vector(n_bits - 1 downto 0); -- salida contador
signal counter_bits: std_logic_vector(n_cuenta - 1 downto 0); -- contador de n bits

signal prescaler_out: std_logic; -- salida del div de freq
begin
-- DIVISOR DE FRECUENCIA

	div_freq: process (in_clock_counter)
	begin
		if rising_edge(in_clock_counter) then
			counter <= counter + 1;
		end if;
	end process;

-- ASIGNACIÓN SALIDA DIV PRES	
	
	prescaler_out <= counter(n_bits - 1);
	
-- CONTADOR DE 4 BITS
	
	contador: process (prescaler_out, counter_bits)
	begin
		if rising_edge(prescaler_out) then
			counter_bits <= counter_bits + 1;
			if counter_bits = "1001" then
				counter_bits <= "0000";
			end if;
		end if;
	end process;

-- DECODIFICADOR A DISPLAY DE 7 SEG

	en_disp_counter <= '0';
	
	with counter_bits select out_disp_counter <= "10000001" when "0000", -- 0
																"11001111" when "0001", -- 1
																"10010010" when "0010", -- 2
																"10000110" when "0011", -- 3
																"11001100" when "0100", -- 4
																"10100100" when "0101", -- 5
																"10100000" when "0110", -- 6
																"10001111" when "0111", -- 7
																"10000000" when "1000", -- 8
																"10000100" when "1001", -- 9
																"01111111" when others; -- x
end architecture func_counter_display_7_seg;








