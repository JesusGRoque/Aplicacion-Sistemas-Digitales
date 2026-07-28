----------------------------------------------------------------------------------
--  primera prac "primos 4 bits
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity PRIMOS2NM2C is
    Port ( a,b,c,d : in  STD_LOGIC;
           y : out  STD_LOGIC);
end PRIMOS2NM2C;

architecture ECUACION of PRIMOS2NM2C is

begin

     y <= (not a and not b and c) or (not a and b and d) or (not b and c and d) or (b and (not c) and d);
	  
end ECUACION;

