-- Librerias 

library ieee;

-- Paquetes

use ieee.std_logic_1164.all;

-- Entidad 

entity clase_1_led is
	port (
	-- Colocamos los leds como salida a los pines de la FPGA
		led_1_out : out std_logic;
		led_2_out: out std_logic;
		led_3_out: out std_logic;
		led_4_out: out std_logic
	);
end clase_1_led;

-- Arquitectura

architecture func_led of clase_1_led is
begin
		led_1_out <= '1';
		led_2_out <= '0';
		led_3_out <= '1';
		led_4_out <= '0';
end func_led;