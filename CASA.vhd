----------------------------------------------------------------------------------
-- Práctica 5.2. Palabra de 4 letras en display
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CASA is
    Port ( y : in  STD_LOGIC_VECTOR (1 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0));
end CASA;

architecture Tabla of CASA is

begin

process (y) --- Variables sensibles
begin -- Inicia begin del process
     
     case (y) is --- Inicia el case
	  when "00" =>
	     display <= "1001110";      ---- C
     when "01" =>
	     display <= "1110111";      ---- A
	  when "10" =>
	     display <= "1011011";      ---- S  
	  when others =>
	     display <= "1110111";      ---- A
	  
	  end case;   ---- Acaba el case
end process;     ---- Acaba el process

end Tabla;

