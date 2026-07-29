
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display7segAnodo is
    Port ( W,X,Y,Z : in  STD_LOGIC;
           a,b,c,d,e,f,g : out  STD_LOGIC);
end display7segAnodo;

architecture Ecuaciones of display7segAnodo is

begin

	a <= not (W or Y  or (X xnor Z));
	b <= not (not X or (Y xnor Z));
	c <= not((not X)or W or Y);
	d <= not(W or (not X and Y) or (not X and not Z) or (Y and not Z) or (X and not Y and Z));
	e <= not ((not X and not Z)or (Y and not Z));
	f <= not (W or (X and not Z)or (X and not Y)or (not Y and not Z));
	g <= not (W or X or Y);

end Ecuaciones;

