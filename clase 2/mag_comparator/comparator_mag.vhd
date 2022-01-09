-- Paquetes

library ieee;
use ieee.std_logic_1164.all;


-- Entidad

entity comparator_mag is

port(inputs1, inputs2: in std_logic_vector (3 downto 0);
	  mayor_igual_menor: out std_logic_vector(2 downto 0)
	  );
	  
-- Las salidas de mayor, igual y menor fueron tomadas
-- en relación a INPUTS1

end comparator_mag;

-- arquitecture 

architecture func_comparator of comparator_mag is
	begin
			mayor_igual_menor(0) <= '1' when (inputs1 > inputs2) else '0';
			mayor_igual_menor(1) <= '1' when (inputs1 = inputs2) else '0';
			mayor_igual_menor(2) <= '1' when (inputs1 < inputs2) else '0';
end func_comparator;