-- Paquetes

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-- Logica

-- RELOJ(50MHZ) -> PRESCALER (FREQ/2^N) -> RELOG_OUT(1HZ)
-- ->RELO_OUT(1HZ) -> CONTADOR(4BITS) -> DECODIFICADOR(BCD -> 7 SEG) -> DISPLAY
--                                    -> PASOS STEP MOTOR (4 bits) 
-- Entidad

entity step_motor_control is
	port( reloj_in: in std_logic; -- Entrada de reloj de la FPGA
			enable_disp: out std_logic;
			display_7_seg: out std_logic_vector (7 downto 0);
			salida_step: out std_logic_vector(3 downto 0) -- Salida a los pines del driver
	);
end step_motor_control;


-- Arquitectura 

architecture func_step_motor of step_motor_control is

-- Segun dato, el tiempo efectivo son entre pasos 200ms
-- Entonces: Fn = Fosc_FGPA / Preescaler = 50 ms -> 20hz
-- 20hz = 50Mhz / 2^(N bits) -> Nbits es = 21.21 = 21 bits

constant bits: integer := 25 ; -- Dato hallado

signal contador: std_logic_vector (bits - 1 downto 0); -- vector de cuenta

signal salida_prescaler: std_logic;

--> El motor a pasos en la configuración de funcionamiento de Medio Paso
-- tiene 8 estados, por ello, el contador debe ser de 3 bits

signal steps_counter: std_logic_vector (2 downto 0); --> vector de cuenta de pasos temporal

signal steps_counter_out: std_logic_vector (2 downto 0); --> vector de salida de la cuenta

signal steps_decodi_out: std_logic_vector (3 downto 0); -- Salida decodificada

--> DIVISOR DE FRECUENCIA - PREESCALADOR 

begin
	precaler: process(reloj_in)
	begin
		if(rising_edge(reloj_in)) then
			contador <= contador + 1; -- Hacemos la cuenta
		end if;
	end process;
	
	salida_prescaler <= contador (bits - 1); -- Asignamos el último bit (MSB) de la cuenta

-- CONTADOR - MOD(8)

	counter: process (salida_prescaler)
	begin
		if (rising_edge(salida_prescaler)) then
			steps_counter <= steps_counter + 1;
		end if;
	end process;
	
	steps_counter_out <= steps_counter; -- Asignamos la  cuenta
	
	
--> DECODIFICACIÓN A LOS PASOS DEL MOTOR
	
	with steps_counter_out select steps_decodi_out <= "0001" when "000",
																	  "0011" when "001",
																	  "0010" when "010",
																	  "0110" when "011",
																	  "0100" when "100",
																	  "1100" when "101",
																	  "1000" when "110",
																	  "1001" when others;
	
	salida_step <= (steps_decodi_out);
	
-- DECODIFICACIÓN DE LOS PASOS AL DISP-7SEG
-- 															   abcdefg
	with steps_decodi_out select display_7_seg <= "11000000" when "0000", -- 0
															    "11111001" when "0001", -- 1
																 "10100100" when "0010", -- 2
																 "10110000" when "0011", -- 3
												           	 "10011001" when "0100", -- 4
														       "10010010" when "0101", -- 5
																 "10000010" when "0110", -- 6
																 "11111000" when "0111", -- 7
																 "10000000" when "1000", -- 8
																 "10010000" when "1001",
																 "11000110" when others; -- 9
	
	enable_disp <= '0';
end func_step_motor;