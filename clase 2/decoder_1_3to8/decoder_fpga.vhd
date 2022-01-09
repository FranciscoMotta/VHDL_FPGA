-- PAQUETES

library ieee;
use ieee.std_logic_1164.all;

-- ENTIDAD

entity decoder_fpga is
	port ( A1, A2, A3: in std_logic;
			S1, S2, S3, S4, S5, S6, S7, S8: out std_logic);
end decoder_fpga;

-- ARQUITECTURA

architecture func_decoder of decoder_fpga is
begin -- DECLARACIÓN ÚNICA
		S1 <= (not A1) and (not A2) and (not A3);
		S2 <= (not A1) and (not A2) and A3;
		S3 <= (not A1) and A2 and (not A3);
		S4 <= (not A1) and A2 and A3;
		S5 <= A1 and (not A2) and (not A3);
		S6 <= A1 and (not A2) and A3;
		S7 <= A1 and A2 and (not A3);
		S8 <= A1 and A2 and A3;
end func_decoder;