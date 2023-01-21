-- Paquetes 

library ieee;

use ieee.std_logic_1164.all; -- Vector std 
use ieee.std_logic_arith.all; -- Operaciones matemáticas
use ieee.std_logic_unsigned.all; -- Paquete de tipo de datos

-- Entidad 

entity bits_register_rotation is
	port(
	int_signal: in std_logic; -- entrada de relos
	leds_out: buffer std_logic_vector (3 downto 0) -- salida de leds
	);
end bits_register_rotation;

-- Arquitectura

architecture func_divisor of bits_register_rotation is

-- Constantes

constant factor: integer := 5_000_000;
constant data_in: std_logic_vector (3 downto 0) := "0001";
constant bits: integer:= 23;

-- Señales

signal data: integer := 0; 

signal clock_out: std_logic;
signal carga_desp: std_logic := '0';
signal serial_int: std_logic;
signal cuenta: std_logic_vector (bits - 1 downto 0);

begin
	divisor: process(int_signal)

-- DIVISOR DE FRECUENCIA	

	begin
		if rising_edge(int_signal) then
			if (cuenta = (factor - 1)) then
				
				cuenta <= (others => '0');
			else 
				cuenta <= cuenta + 1;
			end if;
		end if;
	end process;
	clock_out <= cuenta (bits - 1);

-- INICIALIZADOR

	starter: process (clock_out)
	begin
		if rising_edge(clock_out) then
			carga_desp <= '1';
		end if;
	end process;

-- ROTACION BITS

	rotation: process(clock_out)
	begin
		if rising_edge(clock_out) then
			if carga_desp = '0' then
				leds_out <= data_in;
			else
				leds_out(3 downto 1) <= leds_out(2 downto 0);
				leds_out(0) <= serial_int;
			end if;
		end if;
	end process;
	serial_int <= leds_out(3);
end func_divisor;