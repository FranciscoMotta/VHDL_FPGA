-- Librerias 

library ieee;

-- Paquetes

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Operaciones maths
use ieee.std_logic_unsigned.all; -- Operaciones sin signo

-- entidad 

entity repaso_vhdl is
	port(
		in_clock_div_freq: in std_logic;
		enable_7_seg: out std_logic;
		out_7_seg_out: out std_logic_vector (7 downto 0)
	);
end entity repaso_vhdl;

-- Arquitectura 

architecture func_div of repaso_vhdl is 

constant num_bits: integer := 26;
constant nbits_counter: integer := 4;

signal div_counter: std_logic_vector(num_bits - 1 downto 0);
signal out_counter_div: std_logic;
signal counter_4_bits: std_logic_vector (nbits_counter - 1 downto 0);
signal out_7_seg_out_prev: std_logic_vector (7 downto 0);

-- Divisor de frencuencia de entrada de 50Mhz

begin
	div_50Mhz_2Hz: process (in_clock_div_freq)
	begin
		if rising_edge(in_clock_div_freq) then
			div_counter <= div_counter + 1; 
		end if;
	end process div_50Mhz_2Hz;

-- Salida del divisor de frecuencia a 1/2seg

out_counter_div <= div_counter(num_bits - 1);

-- Contador de 4 bits
	
	cont_4b: process (out_counter_div, counter_4_bits)
	begin
		if rising_edge(out_counter_div) then
			counter_4_bits <= counter_4_bits + 1;
			if counter_4_bits = "1001" then
				counter_4_bits  <= "0000";
			end if;
		end if;
	end process cont_4b;
	
-- Decodificación de binario a decimal 0 - 9
	
	with counter_4_bits select out_7_seg_out_prev <=         "01111110" when "0000",
																				"00110000" when "0001",
																				"01101101" when "0010",
																				"01111001" when "0011",
																				"00110011" when "0100",
																				"01011011" when "0101",
																				"01011111" when "0110",
																				"01110000" when "0111",
																				"01111111" when "1000",
																				"01111011" when others;

	
-- Asignamos las salidas negadas 

	out_7_seg_out <= not(out_7_seg_out_prev);

-- Habilitación del enable del display de 7 segmentos

	enable_7_seg <= '0';

end architecture func_div;