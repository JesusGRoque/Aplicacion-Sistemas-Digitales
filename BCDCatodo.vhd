----------------------------------------------------------------------------------
-- Práctica 5.0. Decodificador de BCD a display de 7 segmentos de cátodo común
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDCatodo is
    Port ( W,X,Y,Z : in  STD_LOGIC;
           a,b,c,d,e,f,g : out  STD_LOGIC);
end BCDCatodo;

architecture ecuaciones of BCDCatodo is

begin

a <= not(W OR Y OR (X XNOR Z));
b <= not(NOT X OR (Y XNOR Z));
c <= not(X OR NOT Y OR Z);
d <= not(W OR (NOT X AND Y) OR (NOT X AND NOT Z) OR (Y AND NOT Z) OR (X AND NOT Y AND Z));
e <= not((NOT X AND NOT Z) OR (Y AND NOT Z));
f <= not(W OR (X AND NOT Z) OR (X AND NOT Y) OR (NOT Y AND NOT Z));
g <= not(W OR X OR Y);

end ecuaciones;

