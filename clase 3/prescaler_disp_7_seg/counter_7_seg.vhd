-- Paquetes

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- LOGICA:

-- RELOJ(50MHZ) -> PRESCALER (FREQ/2^N) -> RELOG_OUT(1HZ)
-- ->RELO_OUT(1HZ) -> CONTADOR(4BITS) -> DECODIFICADOR(BCD -> 7 SEG) -> DISPLAY


-- Entidad 

entity counter_7_seg is
	port(
		reloj_int: in std_logic; -- Definición del PREESCALER
		seg_7: out std_logic_vector (7 downto 0);
		enable: out std_logic
	);
end counter_7_seg;

-- Arquitectura

architecture func_counter_decoder of counter_7_Seg is
constant bits: integer := 25;
signal contador: std_logic_vector (bits - 1 downto 0); -- contador temporal

signal reloj_out: std_logic; -- salida del preescaler de 25 bits

signal contador_temporal: std_logic_vector (3 downto 0); -- cuenta

signal salida_contador: std_logic_vector (3 downto 0); -- salida del contador

begin
-------------------REDUCCIÓN FREQ-----------------------
	contad: process(reloj_int)
	begin
		if rising_edge(reloj_int) then
			contador <= contador + 1;
		end if;
	end process; 
	reloj_out <= contador (bits - 1);
--------------------------------------------------------

----------------------CONTADOR--------------------------
	contador_2: process(reloj_out, contador_temporal)
	begin
		if rising_edge(reloj_out) then
			contador_temporal <= contador_temporal + 1;
			-- analisis: 10 -> 1010 -> contador(3) and contador(1)
			if contador_temporal= "1001" then
				contador_temporal <= "0000";
			end if;
		end if;
	end process;
	salida_contador <= (contador_temporal);
---------------------------------------------------------

------------------DECODIFICADOR-------------------------
	with salida_contador select seg_7 <=   "11000000" when "0000", -- 0
														"11111001" when "0001", -- 1
														"10100100" when "0010", -- 2
														"10110000" when "0011", -- 3
														"10011001" when "0100", -- 4
														"10010010" when "0101", -- 5
														"10000010" when "0110", -- 6
														"11111000" when "0111", -- 7
														"10000000" when "1000", -- 8
														"10010000" when others; -- 9
	enable <= '0';
---------------------------------------------------------

end func_counter_decoder;