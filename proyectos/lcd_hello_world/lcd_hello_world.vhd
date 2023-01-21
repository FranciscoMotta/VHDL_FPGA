-- Paquetes
library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Lógica

-- RELOJ(50MHZ) -> PRESCALER (FREQ/2^N) -> RELOG_OUT(1HZ)
-- ->RELO_OUT(1HZ) -> CONTADOR(5 BITS) -> DECODIFICADOR (5 a 10) -> LCD 

-- Entidad 

entity lcd_hello_world is
	port (entrada_reloj: in std_logic; -- Entrada de reloj
			datos_control: out std_logic_vector(9 downto 0) -- salida de datos y control
			);
end lcd_hello_World;

-- Arquiectura 

architecture func_lcd_hello of lcd_hello_world is
-- Tenemos una entrada de reloj de 50MHZ y lo reducimos a 50Mhz/2^18 => 190hz -> 5ms
	constant bits: integer := 18; -- Para el preescaler del contador de datos
-- Señal de conteo temporal
	signal contador: std_logic_vector (bits - 1 downto 0);
-- Salida del preescaler
	signal salida_prescaler: std_logic;
-- Contador de datos de envío y de control
	signal data_count, data_count_out: std_logic_vector (4 downto 0); -- 2^5 - 1 = 31 datos
	
begin
	
	
	--> DIVISOR DE FRECUENCIA
	
	prescaler: process (entrada_reloj)
	begin
	
		if rising_edge(entrada_reloj) then
			contador <= contador + 1;
		end if;
		
	end process;
	
	salida_prescaler <= contador(bits - 1); -- Tomamos el bit más significativo
	
	--> CONTADOR
	
	counter: process (salida_prescaler)
	begin
		if rising_edge(salida_prescaler) then
			data_count <= data_count + 1;
			
			if data_count > "11000" then
				data_count <= "00000";
			end if;
			
		end if;
	
	end process;
	
	data_count_out <= data_count; -- Asignamos el contador de 0 - 31
	
	--> DECODIFICADOR
	
	                                          --Rs En D0-D7
	
	with data_count_out select datos_control <= "0000000001" when "00000",
															  "0100000001" when "00001", -- Limpiamos el LCD
															  "0000000001" when "00010",
															  "0000111000" when "00011",
															  "0100111000" when "00100", -- Cursor off - right - 8bits
															  "0000111000" when "00101",
															  "0000000110" when "00110",
															  "0100000110" when "00111", -- Cursor mov
															  "0000000110" when "01000",
															  "0000001100" when "01001",
															  "0100001100" when "01010", -- display on
															  "0000001100" when "01011",
															  "1001001000" when "01100",
															  "1101001000" when "01101", -- H
															  "1001001000" when "01110",
															  "1001001111" when "01111",
															  "1101001111" when "10000", -- O
															  "1001001111" when "10001",
															  "1001001100" when "10010",
															  "1101001100" when "10011", -- L
															  "1001001100" when "10100",
															  "1001000001" when "10101",
															  "1101000001" when "10110", -- A
															  "1001000001" when others;
	
end func_lcd_hello;