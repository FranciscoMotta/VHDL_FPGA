-- Librerias

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; -- multinivel
use ieee.std_logic_arith.all; -- op. arith
use ieee.std_logic_unsigned.all; -- fun. sin signo

-- entidad

entity fall_detector_sensor is
	port(
		boton_fall_detector, clock_fall_detector: in std_logic;
		flanco_fall_detector: out std_logic
	);
end entity fall_detector_sensor;

-- arquitectura

architecture func_fall_detector_sensor of fall_detector_sensor is

-- señales 

signal clock_inter_fall_detector: std_logic;
signal inter_signal_a_fall_detector: std_logic;
signal inter_signal_b_fall_detector: std_logic;

begin

-------------------- DIVISOR DE FRECUENCIA ------------------------

divisor_de_freq: work.div_freq_generic(func_div_freq_generic)
-- Genericos
        generic map(
                factor_escala_M_div => 50_000_000,
                numero_de_bits_div => 26
        )
-- Puertos
        port map(
                div_gen_clock_in => clock_fall_detector, -- Entrada de reloj
                div_gen_clock_out => clock_inter_fall_detector
                );

--------------------- FLIP FLOPS TIPO D -----------------------------

primer_ff_D: work.type_D_ff(func_type_D_ff)
			port map(
				D_int_ff => boton_fall_detector,
				cLock_int_ff => clock_inter_fall_detector,
				Q_out_ff => inter_signal_a_fall_detector
			);
					 
segundo_ff_D: work.type_D_ff(func_type_D_ff)
			port map(
				D_int_ff => inter_signal_a_fall_detector,
				cLock_int_ff => clock_inter_fall_detector,
				Q_out_ff => inter_signal_b_fall_detector
			);
			
------------------------ SALIDA COMBINACIONAL --------------------------

flanco_fall_detector <= not(not(inter_signal_a_fall_detector) and inter_signal_b_fall_detector);
					
end architecture func_fall_detector_sensor;