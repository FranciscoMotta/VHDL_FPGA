-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- Multiniveles
use ieee.std_logic_arith.all; -- Op. Arith
use ieee.std_logic_unsigned.all;

-- Entidad 

entity preescaler_mult is
-- Puertos	
	port(
		preescaler_mult_clock_in: in std_logic; -- 50Mhz
		preescaler_select_in: in std_logic_vector(1 downto 0); -- señal de selección
		preescaler_mult_clock_out: out std_logic
	);
end entity preescaler_mult;

-- Architecture

architecture func_preescaler_mult of preescaler_mult is

-- señales

	
signal preescaler_mult_out1_f1: std_logic; -- 700hz
signal preescaler_mult_out2_f2: std_logic; -- 1khz
signal preescaler_mult_out3_f3: std_logic;  -- 2khz

-- Señal final de salida 


signal preescaler_mult_fin: std_logic;

begin

unidad_dis1: entity work.preescaler_N_bits(func_preescaler_n_bits)
-- Genericos
	generic map( N_bits => 16)
-- Puertos	
	port map(
		preescaler_n_clock_in => preescaler_mult_clock_in,
		preescaler_n_clock_out => preescaler_mult_out1_f1);
		
unidad_dis2: entity work.preescaler_N_bits(func_preescaler_n_bits)
-- Genericos
	generic map( N_bits => 15)
-- Puertos	
	port map(
		preescaler_n_clock_in => preescaler_mult_clock_in,
		preescaler_n_clock_out => preescaler_mult_out2_f2);
		
unidad_dis3: entity work.preescaler_N_bits(func_preescaler_n_bits)
-- Genericos
	generic map( N_bits => 14)
-- Puertos	
	port map(
		preescaler_n_clock_in => preescaler_mult_clock_in,
		preescaler_n_clock_out => preescaler_mult_out3_f3);
		
-- multiplexor para la salida de datos

selector_out: process (preescaler_select_in)
begin
	case preescaler_select_in is
				when "00" => preescaler_mult_fin <= preescaler_mult_out1_f1;
				when "01" => preescaler_mult_fin <= preescaler_mult_out2_f2;
				when "10" => preescaler_mult_fin <= preescaler_mult_out3_f3;
				when others => preescaler_mult_fin <= preescaler_mult_clock_in;
	end case;
end process selector_out;


-- Salida negada

preescaler_mult_clock_out <= not (preescaler_mult_fin);

end architecture func_preescaler_mult;