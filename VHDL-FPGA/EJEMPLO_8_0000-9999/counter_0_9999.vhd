-- Librerías 

library ieee;

-- Paquetes

use ieee.std_logic_1164.all; -- Multinivel
use ieee.std_logic_arith.all; -- Op. Arith
use ieee.std_logic_unsigned.all; -- Sin signo

-- Entidad 

entity counter_0_9999 is 
	port(
			counter_clock_in: in std_logic; -- Entrada reloj
			counter_ena_disp: out std_logic_vector(3 downto 0); -- Enables
			counter_out_disp: out std_logic_vector(6 downto 0) -- sin el punto
		);
end entity counter_0_9999;

-- Arquitectura

architecture func_counter_0_9999 of counter_0_9999 is 

-- Constantes
constant factor_escala_50mhz_1hz: integer := 50_000_000;
constant factor_escala_50mhz_1khz: integer := 50_000;
constant n_bits_cont_1hz: integer:= 25; -- bits = log2(factor_escala_50mhz_1hz)
constant n_bits_cont_1khz: integer := 16; -- bits = log2(factor_escala_50mhz_1khz)
constant tope_a_9: std_logic_vector(3 downto 0) := "1001"; -- Tope en 9

-- Señales 
signal clock_div_out_1hz: std_logic;-- Señal de 1hz
signal clock_div_out_1khz: std_logic;-- Señal de 1khz
signal contador_1hz: std_logic_vector(n_bits_cont_1hz - 1 downto 0);
signal contador_1khz: std_logic_vector(n_bits_cont_1khz - 1 downto 0);

signal contador_unidades: std_logic_vector(3 downto 0);
signal contador_decenas: std_logic_vector(3 downto 0);
signal contador_centenas: std_logic_vector(3 downto 0);
signal contador_millares: std_logic_vector(3 downto 0);

signal clock_decenas: std_logic;
signal clock_centenas: std_logic;
signal clock_millares: std_logic;

signal contador_mod_2: std_logic_vector(1 downto 0);

signal salida_multiplex: std_logic_vector(3 downto 0);

signal salida_enables: std_logic_vector(3 downto 0);
begin

---------------- PREESCALER DE 50MHZ A 1HZ -----------------

preescaler_50mhz_to_1_hz: process(counter_clock_in)
begin
	if rising_edge(counter_clock_in) then
		if (factor_escala_50mhz_1hz - 1 = contador_1hz) then
			contador_1hz <= (others => '0'); -- Se reinicia el contador_1hz
		else 
			contador_1hz <= contador_1hz + 1; -- aumentamos la cuenta
		end if;
	end if;
end process preescaler_50mhz_to_1_hz; 

----------------------------------------------------------------

clock_div_out_1hz <= contador_1hz(n_bits_cont_1hz - 1); -- Asignamos salida 1hz

----------------------------------------------------------------

--------------PREESCALER DE 50MHZ A 1kHZ-------------------------
preescaler_50mhz_to_1_khz: process(counter_clock_in)
begin
	if rising_edge(counter_clock_in) then
		if (factor_escala_50mhz_1khz - 1 = contador_1khz) then
			contador_1khz <= (others => '0'); -- Se reinicia el contador_1hz
		else 
			contador_1khz <= contador_1khz + 1; -- aumentamos la cuenta
		end if;
	end if;
end process preescaler_50mhz_to_1_khz; 

------------------------------------------------------------------

clock_div_out_1khz <= contador_1khz(n_bits_cont_1khz - 1); -- Asignamos salida 1khz

-----------------------------------------------------------------

------------------------CONTADOR 0000 - 9999---------------------

cuenta_unidades: process (clock_div_out_1hz)
begin
	if rising_edge(clock_div_out_1hz) then
		if (contador_unidades = tope_a_9) then
			contador_unidades <= (others => '0'); -- Resetea unidades
			clock_decenas <= '1';
		else 
			clock_decenas <= '0';
			contador_unidades <= contador_unidades + 1; -- Aumentamos unidades
		end if;
	end if;
end process cuenta_unidades;

------------------------------------------------------------------

cuenta_decenas: process (clock_decenas)
begin
	if rising_edge(clock_decenas) then
		if (contador_decenas = tope_a_9) then
			contador_decenas <= (others => '0'); -- Resetea decenas
			clock_centenas <= '1';
		else 
			clock_centenas <= '0';
			contador_decenas <= contador_decenas + 1; -- Aumentamos decenas
		end if;
	end if;
end process cuenta_decenas;

-------------------------------------------------------------------

cuenta_centenas: process (clock_centenas)
begin
	if rising_edge(clock_centenas) then
		if (contador_centenas = tope_a_9) then
			contador_centenas <= (others => '0'); -- Resetea decenas
			clock_millares <= '1';
		else 
			clock_millares <= '0';
			contador_centenas <= contador_centenas + 1; -- Aumentamos decenas
		end if;
	end if;	
end process cuenta_centenas;

-------------------------------------------------------------------

cuenta_millares: process (clock_millares)
begin
	if rising_edge(clock_millares) then
		if (contador_millares = tope_a_9) then
			contador_millares <= (others => '0'); -- Resetea decenas
		else 
			contador_millares <= contador_millares + 1; -- Aumentamos decenas
		end if;
	end if;
end process cuenta_millares;

------------------- CONTADOR DE MÓDULO 2 --------------------------

contador_mod2: process (clock_div_out_1khz)
begin
	if rising_edge(clock_div_out_1khz) then
		contador_mod_2 <= contador_mod_2 + 1;
	end if;
end process contador_mod2;

-----------------------MULTIPLEXOR-------------------------------

multiplex_func: process (contador_mod_2,contador_unidades,contador_decenas,contador_centenas,contador_millares)
begin
	case (contador_mod_2) is
			when "00" => salida_multiplex <= contador_unidades;
			when "01" => salida_multiplex <= contador_decenas;
			when "10" => salida_multiplex <= contador_centenas;
			when others => salida_multiplex <= contador_millares;
	end case;
end process multiplex_func;

-------------------- DECODIFICADOR 2- 4 ------------------------------

with contador_mod_2 select salida_enables <=   "1110" when "00",
															  "1101" when "01",
															  "1011" when "10",
															  "0111" when others;
															  
														  
counter_ena_disp <= salida_enables; -- sacamos a los enables de la FPGA

---------------------- DECODIFICADOR 7 SEG -----------------------------

with salida_multiplex select counter_out_disp <="0000001" when "0000", -- 0
																"1001111" when "0001", -- 1
																"0010010" when "0010", -- 2
																"0000110" when "0011", -- 3
																"1001100" when "0100", -- 4
																"0100100" when "0101", -- 5
																"0100000" when "0110", -- 6
																"0001111" when "0111", -- 7
																"0000000" when "1000", -- 8
																"0000100" when others; -- 9
								

end architecture func_counter_0_9999;