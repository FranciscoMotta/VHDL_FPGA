-- Paquetes 

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad 

entity lcd_hi is
	port( entrada_reloj: in std_logic; 
			rs, en, salida_reloj, rw, disp_e: out std_logic;
			data: out std_logic_vector (7 downto 0)
		 );
end lcd_hi;

-- Arquitectura

architecture func_lcd of lcd_hi is

-- DATOS: COMANDOS

constant CLEAR: std_logic_vector (7 downto 0) := X"01";
constant CURSOR: std_logic_vector (7 downto 0) := X"38";
constant ONOFF: std_logic_vector (7 downto 0) := X"0C";
constant ENTRY: std_logic_vector (7 downto 0) := X"06";

-- DATOS: CARACTERES

constant H: std_logic_vector (7 downto 0) := X"48";
constant O: std_logic_vector (7 downto 0) := X"4F";
constant L: std_logic_vector (7 downto 0) := X"4C";
constant A: std_logic_vector (7 downto 0) := X"41";

-- SEÑAL

signal out_div, seguro: std_logic := '0'; -- Señal de salida de la frecuencia dividida
constant bits: integer := 26;
signal contador: std_logic_vector (bits - 1 downto 0);
constant factor: integer := 50_000_000; -- factor de cuenta para los 10khz
signal cuenta_cont, cuenta_out: std_logic_vector (2 downto 0);

signal salida: std_logic;

begin

	salida <= not(seguro) and entrada_reloj;

-- DIVISOR DE FRECUENCIA

	div_freq: process (salida)
	begin
		if rising_edge(salida) then
			if contador = (factor - 1) then
				out_div <= not(out_div);
				contador <= (others => '0');
			else 
				contador <= contador + 1;
			end if;
		end if;
	end process;
	salida_reloj <= out_div;
	

-- CONTADOR

	contador_s: process (out_div, cuenta_cont)
	begin
		if rising_edge(out_div) then
			cuenta_cont <= cuenta_cont + 1;
			if cuenta_cont = "111" then
				seguro <= '1';
			end if;
		end if;
	end process; 
	cuenta_out <= cuenta_cont;
	
	rs <= cuenta_out(2);
	en <= out_div;
	rw <= '0';
	disp_e <= '0';
-- DECODIFICADO

	with cuenta_out select data <= CLEAR when "000",
											 CURSOR when "001",
											 ONOFF when "010",
											 ENTRY when "011",
											 H when "100",
											 O when "101",
											 L when "110",
											 A when others;
											
	
	
end func_lcd;