-- Librerías 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all; --multinivel

-- Entidad 

entity display_7_seg_mux is
	port(
		ints_arduino_disp: in std_logic_vector(7 downto 1);
		ints_arduino_enab: in std_logic_vector(3 downto 0);
		outs_arduino_disp: out std_logic_vector(7 downto 1);
		outs_arduino_enab: out std_logic_vector(3 downto 0)
	);
end entity display_7_seg_mux;

-- Arquitectura 

architecture func_display_7_seg_mux of display_7_seg_mux is
begin
	outs_arduino_disp <= not(ints_arduino_disp);
	outs_arduino_enab <= not(ints_arduino_enab);
end architecture func_display_7_seg_mux;