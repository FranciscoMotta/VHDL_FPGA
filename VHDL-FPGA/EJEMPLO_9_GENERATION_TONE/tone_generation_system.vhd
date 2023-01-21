-- Tonos audibles: 0 - 20khz (300hz - 17Khz)
-- Reloj de entrada: 50Mhz
-- Tono 1: 1khz ---> Factor de escala: 50_000 -> Numero de bits: 16
-- Tono 2: 2khz ---> Factor de escala: 25_000 -> Numero de bits: 15
-- Tono 3: 4khz ---> Factor de escala: 12_500 -> Numero de bits: 14
-- Tono 4: 8khz ---> Factor de escala: 6_250 ->  Numero de bits: 13

-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad 

entity tone_generation_system is
	port(
		clock_in_tone_gen: in std_logic;
		tone_generation_out: out std_logic
	);
end entity tone_generation_system;

-- Arquitecture

architecture func_tone_generation_system of tone_generation_system is

signal tone_1_signal: std_logic;
signal tone_2_signal: std_logic;
signal tone_3_signal: std_logic;
signal tone_4_signal: std_logic;

-- Señal del reloj de 1 seg

signal tone_control_1_seg: std_logic;

-- Contador del sistema automático

signal select_tone_gen: std_logic_vector(1 downto 0);

begin

unidad_dis_1: work.tone_generation_system_div(func_tone_generation_system_div)
		generic map (factor_escala_M_div  => 50_000,
						 numero_de_bits_div => 16)		
		port map( div_gen_clock_in => clock_in_tone_gen,
				    div_gen_clock_out =>  tone_1_signal);
					 
unidad_dis_2: work.tone_generation_system_div(func_tone_generation_system_div)
		generic map (factor_escala_M_div  => 25_000,
						 numero_de_bits_div => 15)
		port map( div_gen_clock_in => clock_in_tone_gen,
				    div_gen_clock_out =>  tone_2_signal);

unidad_dis_3: work.tone_generation_system_div(func_tone_generation_system_div)
		generic map (factor_escala_M_div  => 12_500,
						 numero_de_bits_div => 14)
		port map( div_gen_clock_in => clock_in_tone_gen,
				    div_gen_clock_out =>  tone_3_signal);

unidad_dis_4: work.tone_generation_system_div(func_tone_generation_system_div)
		generic map (factor_escala_M_div  => 6_250,
						 numero_de_bits_div => 13)
		port map( div_gen_clock_in => clock_in_tone_gen,
				    div_gen_clock_out =>  tone_4_signal);

----------------- SISTEMA DE CUENTA AUTOMÁTICA ----------------

unidad_dis_5: work.tone_generation_system_div(func_tone_generation_system_div)
		generic map (factor_escala_M_div  => 50_000_000,
						 numero_de_bits_div => 25)
		port map( div_gen_clock_in => clock_in_tone_gen,
				    div_gen_clock_out =>  tone_control_1_seg);	

autocontador: process (tone_control_1_seg)
begin
	if rising_edge(tone_control_1_seg) then
		select_tone_gen <= select_tone_gen + 1;
	end if;
end process autocontador;				 
					 
----------------- MULTIPLEXOR ---------------------------------

multiplezado_signals: process (select_tone_gen)
begin
	case (select_tone_gen) is
		when "00" => tone_generation_out <= not(tone_1_signal);
		when "01" => tone_generation_out <= not(tone_2_signal);
		when "10" => tone_generation_out <= not(tone_3_signal);
		when others => tone_generation_out <= not(tone_4_signal);
	end case;
end process multiplezado_signals;

end architecture func_tone_generation_system;

