----------------------------------------------------------------------------------
--Decodificador BCD en display de 7 segmentos de ánodo común
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DisplayAnodo is
    Port ( y : in  STD_LOGIC_VECTOR (3 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0));
end DisplayAnodo;

architecture Tabla of DisplayAnodo is

begin

process (y) --- Variables sensibles
begin       --- Inicia begin del process

     case (y) is
	  when "0000" =>
	     display <= "0000001";     ---- 0
	  when "0001" =>
	     display <= "1001111";     ---- 1
	  when "0010" =>
	     display <= "0010010";     ---- 2
	  when "0011" =>
	     display <= "0000110";     ---- 3
	  when "0100" =>
	     display <= "1001100";     ---- 4
	  when "0101" =>
	     display <= "0100100";     ---- 5
	  when "0110" =>
	     display <= "0100000";     ---- 6
	  when "0111" =>
	     display <= "0001110";     ---- 7
	  when "1000" =>
	     display <= "0000000";     ---- 8
	  when others =>
	     display <= "0001100";     ---- 9
		  
   end case;
end process; 

end Tabla;

