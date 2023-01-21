-- Librerias

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad 

entity shift_register_4_b is
	port(
		shift_register_clock: in std_logic; -- entrada del reloj
		shift_register_leds: buffer std_logic_vector(3 downto 0) -- salida a leds
	);
end entity shift_register_4_b;

-- Arquitectura

architecture func_shift_register_4_b of shift_register_4_b is
constant factor_escala_1_seg: integer := 50_000_000; -- Factor de escala para los 1hz
constant numero_bits_contador: integer := 25; -- numero de bits a contar
signal registro_de_contador: std_logic_vector (numero_bits_contador - 1 downto 0); -- registro

-- Salida del preescaler

signal preescaler_out: std_logic;

-- Salida del starter circuit 

signal starter_out: std_logic := '0';

-- Entrada de dato a desplazar

constant load_to_shift: std_logic_vector(3 downto 0) := "0001";

-- Entrada serial

signal serial_in: std_logic;

begin

---------------- prescaler de 50Mhz a 1hz ----------------------------

preescaler_func: process (shift_register_clock)
begin
	if rising_edge (shift_register_clock) then
		if (registro_de_contador = factor_escala_1_seg - 1) then
			registro_de_contador <= (others => '0'); -- reiniciamos el contador
		else 
			registro_de_contador <= registro_de_contador + 1; -- se aumenta la suma
		end if;
	end if;
end process preescaler_func;

-------------------------------------------------------------------------

preescaler_out <= registro_de_contador(numero_bits_contador - 1); -- tomamos el MSB

------------------ inicializador de circuitos ---------------------------

starter_func: process (preescaler_out)
begin
	if rising_edge (preescaler_out) then
		starter_out <= '1'; -- al primer flanco de subida activamos la carga paralela
	end if;
end process starter_func;

------------------------------------------------------------------------

-------------------- Registro de desplazamiento ------------------------

shift_register: process (preescaler_out)
begin
	if rising_edge (preescaler_out) then
		if starter_out = '0' then
			shift_register_leds <= load_to_shift;
		else
			shift_register_leds(0) <= serial_in;
			shift_register_leds(3 downto 1) <= shift_register_leds(2 downto 0);
		end if;
	end if;
end process shift_register;
	
serial_in <= shift_register_leds(3);

end architecture func_shift_register_4_b;