-- Librerías

library ieee;

-- Paquetes

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Entidad

entity semaforo_state_machine is
	port(
	clk_freq_sem_1_hz, stop_push_sem: in std_logic; -- entradas de la FSM
	stop_led_sem, pass_led_sem: out std_logic -- salidas de la FSM
	);
end entity semaforo_state_machine;

-- Arquitectura

architecture func_semaforo_fsm of semaforo_state_machine is

signal clock_1_hz_fsm_sem: std_logic;
signal counter_fsm_sem: std_logic_vector (4 downto 0) := "00000";

-------------- MAQUINA DE ESTADOS FINITOS -------------------..
type estados is (S0, S1, S2); -- Definimos los estados
signal state_actual, state_future : estados; -- usamos los valores de estados


begin

-------------- CAMBIOS DE ESTADOS DE LA FSM ------------------

maquina_states_change: process(clock_1_hz_fsm_sem)
begin
	if rising_edge (clock_1_hz_fsm_sem) then
		state_actual <= state_future;
		if state_actual = s2 then 
			counter_fsm_sem <= counter_fsm_sem + 1;
		elsif state_actual = s1 then
			counter_fsm_sem <= "00000";
		end if;
	end if;
end process maquina_states_change;

-------------- VALORES DE SALIDA DE LA FSM ------------------

values_out_fsm_sem: process(state_actual, stop_push_sem)
begin
	case state_actual is
		when s0 => stop_led_sem <= '0'; pass_led_sem <= '1';
					if not(stop_push_sem) = '1' then
						state_future <= s1;
					else 
						state_future <= s0;
					end if;

		when s1 => stop_led_sem <= '1'; pass_led_sem <= '0';
						state_future <= s2;	
		
		when s2 => stop_led_sem <= '1'; pass_led_sem <= '0';
					if not(stop_push_sem) = '1' then
						state_future <= s1;
					elsif counter_fsm_sem = 19 then
						state_future <= s0;
					else 
						state_future <= s2;
					end if;
	end case;
end process values_out_fsm_sem;

unidad_dise1: work.div_freq_generic(func_div_freq_generic)
			-- Genericos
        generic map(
                factor_escala_M_div => 50_000_000,
                numero_de_bits_div => 26
        )
-- Puertos
        port map(
                div_gen_clock_in => clk_freq_sem_1_hz, -- Entrada de reloj
                div_gen_clock_out => clock_1_hz_fsm_sem
                );
end architecture func_semaforo_fsm;