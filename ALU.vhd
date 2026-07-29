----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:46 07/08/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (1 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR (1 DOWNTO 0);
           E : in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           Z : out  STD_LOGIC_VECTOR (4 DOWNTO 0));
end ALU;

architecture Behavioral of ALU is

SIGNAL S0,C0,S1,CS : STD_LOGIC;-- AUXILIARES DE SUMADOR
SIGNAL D0,P0,D1,PS,ME,IG,MA : STD_LOGIC;-- AUXILIARES DE RESTADOR Y COMPARADOR
SIGNAL F0, F1 : STD_LOGIC_VECTOR (3 DOWNTO 0);-- AUXILIARES PARA SALIDA DE COMPUERTAS

begin

--SUMADOR DE 2BITS
S0 <= A(0) XOR B(0);
C0 <= A(0) AND B(0);
S1 <= A(1) XOR B(1) XOR C0;
CS <= (C0 AND (A(1) XOR B(1))) OR (A(1) AND B(1));
---------------------
--RESTADOR DE 2 BITS
D0 <= A(0) XOR B(0);
P0 <= (NOT A(0)) AND B(0);
D1 <= (A(1) XOR B(1)) XOR P0;
PS <= (P0 AND (NOT(A(1) XOR B(1)))) OR ((NOT A(1)) AND B(1));
ME <= PS;
IG <= (NOT PS) AND (NOT D1) AND (NOT D0); 
MA <= (NOT ME)AND (NOT IG);
-------------------------------

--COMPUERTAS LOGICAS

-- COMPUERTAS LOGICAS PARA A0 Y B0

F0(0)<= A(0) AND B(0);
F0(1)<=A(0) OR B(0);
F0(2)<= A(0) XOR B(0);
F0(3)<= (NOT A(0));

-- COMPUERTAS LOGICAS PARA A1 Y B1

F1(0)<= A(1) AND B(1);
F1(1)<= A(1) OR B(1);
F1(2)<= A(1) XOR B(1);
F1(3)<= (NOT A(1));

-- ECUANCIONES PARA OBTENER LAS SALIDAS DEL MULTIPLEXOR

Z(0)<= ((NOT E(2)) AND (NOT E(1)) AND (NOT E(0)) AND CS)OR((NOT E(2))AND (NOT E(1)) AND (E(0)) AND PS) OR((NOT E(2)) AND (E(1)) AND (NOT E(0)) AND ME);
Z(1)<= ((NOT E(2)) AND (NOT E(1)) AND (NOT E(0)) AND S1)OR((NOT E(2))AND (NOT E(1)) AND (E(0)) AND D1) OR((NOT E(2)) AND (E(1)) AND (NOT E(0)) AND IG);
Z(2)<= ((NOT E(2)) AND (NOT E(1)) AND (NOT E(0)) AND S0)OR((NOT E(2))AND (NOT E(1)) AND (E(0)) AND D0) OR((NOT E(2)) AND (E(1)) AND (NOT E(0)) AND MA);
Z(3)<= ((E(2)) AND (NOT E(1)) AND (NOT E(0)) AND (F1(0))) OR ((E(2)) AND (NOT E(1)) AND (E(0)) AND (F1(1))) OR ((E(2)) AND (E(1)) AND (NOT E(0)) AND (F1(2))) OR ((E(2)) AND (E(1)) AND (E(0)) AND (F1(3)));
Z(4)<= ((E(2)) AND (NOT E(1)) AND (NOT E(0)) AND (F0(0))) OR ((E(2)) AND (NOT E(1)) AND (E(0)) AND (F0(1))) OR ((E(2)) AND (E(1)) AND (NOT E(0)) AND (F0(2))) OR ((E(2)) AND (E(1)) AND (E(0)) AND (F0(3)));

end Behavioral;

