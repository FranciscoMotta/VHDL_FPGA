-- Librería 

library ieee;

-- Paquetes 

use ieee.std_logic_1164.all;

-- Entidad 

entity flip_flop_D is 
	port(
		int_D, int_clk: in std_logic;
		out_D, out_D_n: out std_logic
	);	
end entity flip_flop_D;

-- Arquitecture 

architecture func_ff_D of flip_flop_D is  
begin
	ff_tipo_D: process (int_clk)
	begin
		if rising_edge(int_clk) then
			out_D <= int_D;
			out_D_n <= not(int_D); 
		end if;
	end process;
end architecture func_ff_D;