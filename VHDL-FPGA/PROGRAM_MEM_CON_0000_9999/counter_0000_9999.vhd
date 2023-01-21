-- Librerias 

library ieee;

-- paquetes 

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad

entity counter_0000_9999 is 
	port(
		in_clock_counter: in std_logic;
		enables_displ_7_s: out std_logic_vector (3 downto 0);
		display_7_seg: out std_logic_vector ( 7 downto 0)
		);
end entity counter_0000_9999;

-- Arquitectura 

architecture fun_counter of counter_0000_9999 is 
-- Constantes

-- Divisor de frecuencia a 5hz
-- Factor_escala:
-- Fact_5hz = Fosc/Fdes = 50_000_000 / 5 = 10_000_000
-- Numero de bits del contador:
-- N_bits_5hz = log2(10_000_000) = 23

constant fact_5hz: integer := 10_000_000;
constant n_bits_5hz: integer := 23;

-- Divisor de frecuencia a 1khz
-- Factor_escala:
-- Fact_1khz = Fosc/Fdes = 50_000_000 / 1_000 = 50_000
-- Numero de bits del contador:
-- N_bits_1khz = log2(10_000_000) = 15

constant fact_1khz : integer := 50_000;
constant n_bits_1khz : integer := 15;

-- Señales

signal out_clock_5hz: std_logic;
signal out_clock_1khz: std_logic;
signal contador_1khz: std_logic_vector (n_bits_1khz - 1 downto 0);
signal contador_5hz: std_logic_vector (n_bits_5hz - 1 downto 0);


signal unidades: std_logic_vector (3 downto 0);
signal decenas: std_logic_vector (3 downto 0);
signal centenas: std_logic_vector (3 downto 0);
signal millares: std_logic_vector (3 downto 0);

signal clock_decena: std_logic;
signal clock_centena: std_logic;
signal clock_millar: std_logic;
signal count_mod_2: std_logic_vector (1 downto 0);
signal salida_multiplex: std_logic_vector (3 downto 0);
signal salida_multiplex_neg: std_logic_vector (7 downto 0);

begin

---------- DIVISOR DE FRECUENCIA A 5HZ -------------------

div_5hz: process (in_clock_counter)
begin
	if rising_edge(in_clock_counter) then
		if (fact_5hz - 1  = contador_5hz) then
			contador_5hz <= (others => '0'); -- Ponemos a todos 0
		else 
			contador_5hz <= contador_5hz + 1;
		end if;
	end if;
end process div_5hz;

out_clock_5hz <= contador_5hz(n_bits_5hz - 1); -- Salida a 5hz

--------- DIVISOR DE FRECUENCIA A 1KHZ -------------------

div_1khz: process (in_clock_counter)
begin
	if rising_edge(in_clock_counter) then
		if (fact_1khz - 1 = contador_1khz) then
			contador_1khz <= (others => '0');
		else 
			contador_1khz <= contador_1khz + 1;
		end if;
	end if;
end process div_1khz;

out_clock_1khz <= contador_1khz(n_bits_1khz - 1); -- Salida a 1khz

--------------------- CONTADORES --------------------------

-- CONTADOR DE UNIDADES

contador_unidades: process (out_clock_5hz)
begin
	if rising_edge(out_clock_5hz) then
		if unidades = "1001" then
			unidades <= (others => '0');
			clock_decena <= '1';
		else 
			unidades <= unidades + 1;
			clock_decena <= '0';
		end if;
	end if;
end process contador_unidades;

-- CONTADOR DE DECENAS

contador_decenas: process (clock_decena)
begin
	if rising_edge(clock_decena) then
		if decenas = "1001" then
			decenas <= (others => '0');
			clock_centena <= '1';
		else
			decenas <= decenas + 1;
			clock_centena <= '0';
		end if;
	end if;
end process contador_decenas;

-- CONTADOR DE CENTENAS 

contador_centenas: process (clock_centena)
begin
	if rising_edge (clock_centena) then
		if centenas = "1001" then
			centenas <= (others => '0');
			clock_millar <= '1';
		else 	
			centenas <= centenas + 1;
			clock_millar <= '0';
		end if;
	end if;
end process contador_centenas;

-- CONTADORES MILLARES 

contador_millares: process (clock_millar)
begin
	if rising_edge (clock_millar) then
		if millares = "1001" then
			millares <= (others => '0');
		else 
			millares <= millares + 1;
		end if;
	end if;
end process contador_millares;

------------- CONTADOR DE MODULO 2 --------------------

contador_mod_2: process (out_clock_1khz)
begin
	if rising_edge(out_clock_1khz) then
		count_mod_2 <= count_mod_2 + 1;
	end if;
end process contador_mod_2;

--------------- DECODIFICACIONES ----------------------

-- Decodificador salidas

control_salida: process (unidades, decenas, centenas, millares)
begin
	case (count_mod_2) is
		when "00" => salida_multiplex <= unidades;
		when "01" => salida_multiplex <= decenas;
		when "10" => salida_multiplex <= centenas;
		when others => salida_multiplex <= millares;
	end case;
end process control_salida;

-- Decodificador habilitadores

with count_mod_2 select enables_displ_7_s <= "1110" when "00",
															"1101" when "01",
															"1011" when "10",
															"0111" when others;

-- Decodificador binarios a decimal

with salida_multiplex select salida_multiplex_neg <=   "01111110" when "0000",
														             "00110000" when "0001",
																		 "01101101" when "0010",
																		 "01111001" when "0011",
																		 "00110011" when "0100",
																		 "01011011" when "0101",
																		 "01011111" when "0110",
																		 "01110000" when "0111",
																		 "01111111" when "1000",
																		 "01111011" when others;
																		
display_7_seg <= not(salida_multiplex_neg);

end architecture fun_counter;