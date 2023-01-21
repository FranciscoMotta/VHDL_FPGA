library ieee; -- Añadimos la librería
use ieee.std_logic_1164.all; 

-- ENTIDAD
-- Definimos los bloques del sistema

entity led is -- Creamos la entidad, debe tener el mismo nombre del archivo
	port (led : out std_logic); -- definimos los puertos (LED - SALIDA)
end led; -- terminamos la entidad 

-- ARQUITECTURA
-- Representa el funcionamiento
-- debe tener un nombre la arquitectura

architecture secuencia of led is
begin
	-- led <= '1';
	led <= '0';
end secuencia; -- terminamos la secuencia